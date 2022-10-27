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
-- Module      : Amazonka.DataExchange.GetRevision
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns information about a revision.
module Amazonka.DataExchange.GetRevision
  ( -- * Creating a Request
    GetRevision (..),
    newGetRevision,

    -- * Request Lenses
    getRevision_dataSetId,
    getRevision_revisionId,

    -- * Destructuring the Response
    GetRevisionResponse (..),
    newGetRevisionResponse,

    -- * Response Lenses
    getRevisionResponse_tags,
    getRevisionResponse_sourceId,
    getRevisionResponse_revocationComment,
    getRevisionResponse_arn,
    getRevisionResponse_id,
    getRevisionResponse_comment,
    getRevisionResponse_finalized,
    getRevisionResponse_dataSetId,
    getRevisionResponse_revokedAt,
    getRevisionResponse_revoked,
    getRevisionResponse_createdAt,
    getRevisionResponse_updatedAt,
    getRevisionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataExchange.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetRevision' smart constructor.
data GetRevision = GetRevision'
  { -- | The unique identifier for a data set.
    dataSetId :: Prelude.Text,
    -- | The unique identifier for a revision.
    revisionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRevision' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSetId', 'getRevision_dataSetId' - The unique identifier for a data set.
--
-- 'revisionId', 'getRevision_revisionId' - The unique identifier for a revision.
newGetRevision ::
  -- | 'dataSetId'
  Prelude.Text ->
  -- | 'revisionId'
  Prelude.Text ->
  GetRevision
newGetRevision pDataSetId_ pRevisionId_ =
  GetRevision'
    { dataSetId = pDataSetId_,
      revisionId = pRevisionId_
    }

-- | The unique identifier for a data set.
getRevision_dataSetId :: Lens.Lens' GetRevision Prelude.Text
getRevision_dataSetId = Lens.lens (\GetRevision' {dataSetId} -> dataSetId) (\s@GetRevision' {} a -> s {dataSetId = a} :: GetRevision)

-- | The unique identifier for a revision.
getRevision_revisionId :: Lens.Lens' GetRevision Prelude.Text
getRevision_revisionId = Lens.lens (\GetRevision' {revisionId} -> revisionId) (\s@GetRevision' {} a -> s {revisionId = a} :: GetRevision)

instance Core.AWSRequest GetRevision where
  type AWSResponse GetRevision = GetRevisionResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRevisionResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "SourceId")
            Prelude.<*> (x Core..?> "RevocationComment")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (x Core..?> "Comment")
            Prelude.<*> (x Core..?> "Finalized")
            Prelude.<*> (x Core..?> "DataSetId")
            Prelude.<*> (x Core..?> "RevokedAt")
            Prelude.<*> (x Core..?> "Revoked")
            Prelude.<*> (x Core..?> "CreatedAt")
            Prelude.<*> (x Core..?> "UpdatedAt")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRevision where
  hashWithSalt _salt GetRevision' {..} =
    _salt `Prelude.hashWithSalt` dataSetId
      `Prelude.hashWithSalt` revisionId

instance Prelude.NFData GetRevision where
  rnf GetRevision' {..} =
    Prelude.rnf dataSetId
      `Prelude.seq` Prelude.rnf revisionId

instance Core.ToHeaders GetRevision where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetRevision where
  toPath GetRevision' {..} =
    Prelude.mconcat
      [ "/v1/data-sets/",
        Core.toBS dataSetId,
        "/revisions/",
        Core.toBS revisionId
      ]

instance Core.ToQuery GetRevision where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRevisionResponse' smart constructor.
data GetRevisionResponse = GetRevisionResponse'
  { -- | The tags for the revision.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The revision ID of the owned revision corresponding to the entitled
    -- revision being viewed. This parameter is returned when a revision owner
    -- is viewing the entitled copy of its owned revision.
    sourceId :: Prelude.Maybe Prelude.Text,
    -- | A required comment to inform subscribers of the reason their access to
    -- the revision was revoked.
    revocationComment :: Prelude.Maybe Prelude.Text,
    -- | The ARN for the revision.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the revision.
    id :: Prelude.Maybe Prelude.Text,
    -- | An optional comment about the revision.
    comment :: Prelude.Maybe Prelude.Text,
    -- | To publish a revision to a data set in a product, the revision must
    -- first be finalized. Finalizing a revision tells AWS Data Exchange that
    -- your changes to the assets in the revision are complete. After it\'s in
    -- this read-only state, you can publish the revision to your products.
    -- Finalized revisions can be published through the AWS Data Exchange
    -- console or the AWS Marketplace Catalog API, using the StartChangeSet AWS
    -- Marketplace Catalog API action. When using the API, revisions are
    -- uniquely identified by their ARN.
    finalized :: Prelude.Maybe Prelude.Bool,
    -- | The unique identifier for the data set associated with this revision.
    dataSetId :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the revision was revoked, in ISO 8601 format.
    revokedAt :: Prelude.Maybe Core.POSIX,
    -- | A status indicating that subscribers\' access to the revision was
    -- revoked.
    revoked :: Prelude.Maybe Prelude.Bool,
    -- | The date and time that the revision was created, in ISO 8601 format.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The date and time that the revision was last updated, in ISO 8601
    -- format.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRevisionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getRevisionResponse_tags' - The tags for the revision.
--
-- 'sourceId', 'getRevisionResponse_sourceId' - The revision ID of the owned revision corresponding to the entitled
-- revision being viewed. This parameter is returned when a revision owner
-- is viewing the entitled copy of its owned revision.
--
-- 'revocationComment', 'getRevisionResponse_revocationComment' - A required comment to inform subscribers of the reason their access to
-- the revision was revoked.
--
-- 'arn', 'getRevisionResponse_arn' - The ARN for the revision.
--
-- 'id', 'getRevisionResponse_id' - The unique identifier for the revision.
--
-- 'comment', 'getRevisionResponse_comment' - An optional comment about the revision.
--
-- 'finalized', 'getRevisionResponse_finalized' - To publish a revision to a data set in a product, the revision must
-- first be finalized. Finalizing a revision tells AWS Data Exchange that
-- your changes to the assets in the revision are complete. After it\'s in
-- this read-only state, you can publish the revision to your products.
-- Finalized revisions can be published through the AWS Data Exchange
-- console or the AWS Marketplace Catalog API, using the StartChangeSet AWS
-- Marketplace Catalog API action. When using the API, revisions are
-- uniquely identified by their ARN.
--
-- 'dataSetId', 'getRevisionResponse_dataSetId' - The unique identifier for the data set associated with this revision.
--
-- 'revokedAt', 'getRevisionResponse_revokedAt' - The date and time that the revision was revoked, in ISO 8601 format.
--
-- 'revoked', 'getRevisionResponse_revoked' - A status indicating that subscribers\' access to the revision was
-- revoked.
--
-- 'createdAt', 'getRevisionResponse_createdAt' - The date and time that the revision was created, in ISO 8601 format.
--
-- 'updatedAt', 'getRevisionResponse_updatedAt' - The date and time that the revision was last updated, in ISO 8601
-- format.
--
-- 'httpStatus', 'getRevisionResponse_httpStatus' - The response's http status code.
newGetRevisionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRevisionResponse
newGetRevisionResponse pHttpStatus_ =
  GetRevisionResponse'
    { tags = Prelude.Nothing,
      sourceId = Prelude.Nothing,
      revocationComment = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      comment = Prelude.Nothing,
      finalized = Prelude.Nothing,
      dataSetId = Prelude.Nothing,
      revokedAt = Prelude.Nothing,
      revoked = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags for the revision.
getRevisionResponse_tags :: Lens.Lens' GetRevisionResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRevisionResponse_tags = Lens.lens (\GetRevisionResponse' {tags} -> tags) (\s@GetRevisionResponse' {} a -> s {tags = a} :: GetRevisionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The revision ID of the owned revision corresponding to the entitled
-- revision being viewed. This parameter is returned when a revision owner
-- is viewing the entitled copy of its owned revision.
getRevisionResponse_sourceId :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Text)
getRevisionResponse_sourceId = Lens.lens (\GetRevisionResponse' {sourceId} -> sourceId) (\s@GetRevisionResponse' {} a -> s {sourceId = a} :: GetRevisionResponse)

-- | A required comment to inform subscribers of the reason their access to
-- the revision was revoked.
getRevisionResponse_revocationComment :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Text)
getRevisionResponse_revocationComment = Lens.lens (\GetRevisionResponse' {revocationComment} -> revocationComment) (\s@GetRevisionResponse' {} a -> s {revocationComment = a} :: GetRevisionResponse)

-- | The ARN for the revision.
getRevisionResponse_arn :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Text)
getRevisionResponse_arn = Lens.lens (\GetRevisionResponse' {arn} -> arn) (\s@GetRevisionResponse' {} a -> s {arn = a} :: GetRevisionResponse)

-- | The unique identifier for the revision.
getRevisionResponse_id :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Text)
getRevisionResponse_id = Lens.lens (\GetRevisionResponse' {id} -> id) (\s@GetRevisionResponse' {} a -> s {id = a} :: GetRevisionResponse)

-- | An optional comment about the revision.
getRevisionResponse_comment :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Text)
getRevisionResponse_comment = Lens.lens (\GetRevisionResponse' {comment} -> comment) (\s@GetRevisionResponse' {} a -> s {comment = a} :: GetRevisionResponse)

-- | To publish a revision to a data set in a product, the revision must
-- first be finalized. Finalizing a revision tells AWS Data Exchange that
-- your changes to the assets in the revision are complete. After it\'s in
-- this read-only state, you can publish the revision to your products.
-- Finalized revisions can be published through the AWS Data Exchange
-- console or the AWS Marketplace Catalog API, using the StartChangeSet AWS
-- Marketplace Catalog API action. When using the API, revisions are
-- uniquely identified by their ARN.
getRevisionResponse_finalized :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Bool)
getRevisionResponse_finalized = Lens.lens (\GetRevisionResponse' {finalized} -> finalized) (\s@GetRevisionResponse' {} a -> s {finalized = a} :: GetRevisionResponse)

-- | The unique identifier for the data set associated with this revision.
getRevisionResponse_dataSetId :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Text)
getRevisionResponse_dataSetId = Lens.lens (\GetRevisionResponse' {dataSetId} -> dataSetId) (\s@GetRevisionResponse' {} a -> s {dataSetId = a} :: GetRevisionResponse)

-- | The date and time that the revision was revoked, in ISO 8601 format.
getRevisionResponse_revokedAt :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.UTCTime)
getRevisionResponse_revokedAt = Lens.lens (\GetRevisionResponse' {revokedAt} -> revokedAt) (\s@GetRevisionResponse' {} a -> s {revokedAt = a} :: GetRevisionResponse) Prelude.. Lens.mapping Core._Time

-- | A status indicating that subscribers\' access to the revision was
-- revoked.
getRevisionResponse_revoked :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.Bool)
getRevisionResponse_revoked = Lens.lens (\GetRevisionResponse' {revoked} -> revoked) (\s@GetRevisionResponse' {} a -> s {revoked = a} :: GetRevisionResponse)

-- | The date and time that the revision was created, in ISO 8601 format.
getRevisionResponse_createdAt :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.UTCTime)
getRevisionResponse_createdAt = Lens.lens (\GetRevisionResponse' {createdAt} -> createdAt) (\s@GetRevisionResponse' {} a -> s {createdAt = a} :: GetRevisionResponse) Prelude.. Lens.mapping Core._Time

-- | The date and time that the revision was last updated, in ISO 8601
-- format.
getRevisionResponse_updatedAt :: Lens.Lens' GetRevisionResponse (Prelude.Maybe Prelude.UTCTime)
getRevisionResponse_updatedAt = Lens.lens (\GetRevisionResponse' {updatedAt} -> updatedAt) (\s@GetRevisionResponse' {} a -> s {updatedAt = a} :: GetRevisionResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getRevisionResponse_httpStatus :: Lens.Lens' GetRevisionResponse Prelude.Int
getRevisionResponse_httpStatus = Lens.lens (\GetRevisionResponse' {httpStatus} -> httpStatus) (\s@GetRevisionResponse' {} a -> s {httpStatus = a} :: GetRevisionResponse)

instance Prelude.NFData GetRevisionResponse where
  rnf GetRevisionResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf sourceId
      `Prelude.seq` Prelude.rnf revocationComment
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf comment
      `Prelude.seq` Prelude.rnf finalized
      `Prelude.seq` Prelude.rnf dataSetId
      `Prelude.seq` Prelude.rnf revokedAt
      `Prelude.seq` Prelude.rnf revoked
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf updatedAt
      `Prelude.seq` Prelude.rnf httpStatus
