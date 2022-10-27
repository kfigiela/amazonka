{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ElastiCache.CreateSnapshot
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a copy of an entire cluster or replication group at a specific
-- moment in time.
--
-- This operation is valid for Redis only.
module Amazonka.ElastiCache.CreateSnapshot
  ( -- * Creating a Request
    CreateSnapshot (..),
    newCreateSnapshot,

    -- * Request Lenses
    createSnapshot_tags,
    createSnapshot_cacheClusterId,
    createSnapshot_kmsKeyId,
    createSnapshot_replicationGroupId,
    createSnapshot_snapshotName,

    -- * Destructuring the Response
    CreateSnapshotResponse (..),
    newCreateSnapshotResponse,

    -- * Response Lenses
    createSnapshotResponse_snapshot,
    createSnapshotResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElastiCache.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input of a @CreateSnapshot@ operation.
--
-- /See:/ 'newCreateSnapshot' smart constructor.
data CreateSnapshot = CreateSnapshot'
  { -- | A list of tags to be added to this resource. A tag is a key-value pair.
    -- A tag key must be accompanied by a tag value, although null is accepted.
    tags :: Prelude.Maybe [Tag],
    -- | The identifier of an existing cluster. The snapshot is created from this
    -- cluster.
    cacheClusterId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the KMS key used to encrypt the snapshot.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of an existing replication group. The snapshot is created
    -- from this replication group.
    replicationGroupId :: Prelude.Maybe Prelude.Text,
    -- | A name for the snapshot being created.
    snapshotName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createSnapshot_tags' - A list of tags to be added to this resource. A tag is a key-value pair.
-- A tag key must be accompanied by a tag value, although null is accepted.
--
-- 'cacheClusterId', 'createSnapshot_cacheClusterId' - The identifier of an existing cluster. The snapshot is created from this
-- cluster.
--
-- 'kmsKeyId', 'createSnapshot_kmsKeyId' - The ID of the KMS key used to encrypt the snapshot.
--
-- 'replicationGroupId', 'createSnapshot_replicationGroupId' - The identifier of an existing replication group. The snapshot is created
-- from this replication group.
--
-- 'snapshotName', 'createSnapshot_snapshotName' - A name for the snapshot being created.
newCreateSnapshot ::
  -- | 'snapshotName'
  Prelude.Text ->
  CreateSnapshot
newCreateSnapshot pSnapshotName_ =
  CreateSnapshot'
    { tags = Prelude.Nothing,
      cacheClusterId = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      replicationGroupId = Prelude.Nothing,
      snapshotName = pSnapshotName_
    }

-- | A list of tags to be added to this resource. A tag is a key-value pair.
-- A tag key must be accompanied by a tag value, although null is accepted.
createSnapshot_tags :: Lens.Lens' CreateSnapshot (Prelude.Maybe [Tag])
createSnapshot_tags = Lens.lens (\CreateSnapshot' {tags} -> tags) (\s@CreateSnapshot' {} a -> s {tags = a} :: CreateSnapshot) Prelude.. Lens.mapping Lens.coerced

-- | The identifier of an existing cluster. The snapshot is created from this
-- cluster.
createSnapshot_cacheClusterId :: Lens.Lens' CreateSnapshot (Prelude.Maybe Prelude.Text)
createSnapshot_cacheClusterId = Lens.lens (\CreateSnapshot' {cacheClusterId} -> cacheClusterId) (\s@CreateSnapshot' {} a -> s {cacheClusterId = a} :: CreateSnapshot)

-- | The ID of the KMS key used to encrypt the snapshot.
createSnapshot_kmsKeyId :: Lens.Lens' CreateSnapshot (Prelude.Maybe Prelude.Text)
createSnapshot_kmsKeyId = Lens.lens (\CreateSnapshot' {kmsKeyId} -> kmsKeyId) (\s@CreateSnapshot' {} a -> s {kmsKeyId = a} :: CreateSnapshot)

-- | The identifier of an existing replication group. The snapshot is created
-- from this replication group.
createSnapshot_replicationGroupId :: Lens.Lens' CreateSnapshot (Prelude.Maybe Prelude.Text)
createSnapshot_replicationGroupId = Lens.lens (\CreateSnapshot' {replicationGroupId} -> replicationGroupId) (\s@CreateSnapshot' {} a -> s {replicationGroupId = a} :: CreateSnapshot)

-- | A name for the snapshot being created.
createSnapshot_snapshotName :: Lens.Lens' CreateSnapshot Prelude.Text
createSnapshot_snapshotName = Lens.lens (\CreateSnapshot' {snapshotName} -> snapshotName) (\s@CreateSnapshot' {} a -> s {snapshotName = a} :: CreateSnapshot)

instance Core.AWSRequest CreateSnapshot where
  type
    AWSResponse CreateSnapshot =
      CreateSnapshotResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "CreateSnapshotResult"
      ( \s h x ->
          CreateSnapshotResponse'
            Prelude.<$> (x Core..@? "Snapshot")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSnapshot where
  hashWithSalt _salt CreateSnapshot' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` cacheClusterId
      `Prelude.hashWithSalt` kmsKeyId
      `Prelude.hashWithSalt` replicationGroupId
      `Prelude.hashWithSalt` snapshotName

instance Prelude.NFData CreateSnapshot where
  rnf CreateSnapshot' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf cacheClusterId
      `Prelude.seq` Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf replicationGroupId
      `Prelude.seq` Prelude.rnf snapshotName

instance Core.ToHeaders CreateSnapshot where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateSnapshot where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateSnapshot where
  toQuery CreateSnapshot' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateSnapshot" :: Prelude.ByteString),
        "Version"
          Core.=: ("2015-02-02" :: Prelude.ByteString),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "CacheClusterId" Core.=: cacheClusterId,
        "KmsKeyId" Core.=: kmsKeyId,
        "ReplicationGroupId" Core.=: replicationGroupId,
        "SnapshotName" Core.=: snapshotName
      ]

-- | /See:/ 'newCreateSnapshotResponse' smart constructor.
data CreateSnapshotResponse = CreateSnapshotResponse'
  { snapshot :: Prelude.Maybe Snapshot,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSnapshotResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'snapshot', 'createSnapshotResponse_snapshot' - Undocumented member.
--
-- 'httpStatus', 'createSnapshotResponse_httpStatus' - The response's http status code.
newCreateSnapshotResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSnapshotResponse
newCreateSnapshotResponse pHttpStatus_ =
  CreateSnapshotResponse'
    { snapshot = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createSnapshotResponse_snapshot :: Lens.Lens' CreateSnapshotResponse (Prelude.Maybe Snapshot)
createSnapshotResponse_snapshot = Lens.lens (\CreateSnapshotResponse' {snapshot} -> snapshot) (\s@CreateSnapshotResponse' {} a -> s {snapshot = a} :: CreateSnapshotResponse)

-- | The response's http status code.
createSnapshotResponse_httpStatus :: Lens.Lens' CreateSnapshotResponse Prelude.Int
createSnapshotResponse_httpStatus = Lens.lens (\CreateSnapshotResponse' {httpStatus} -> httpStatus) (\s@CreateSnapshotResponse' {} a -> s {httpStatus = a} :: CreateSnapshotResponse)

instance Prelude.NFData CreateSnapshotResponse where
  rnf CreateSnapshotResponse' {..} =
    Prelude.rnf snapshot
      `Prelude.seq` Prelude.rnf httpStatus
