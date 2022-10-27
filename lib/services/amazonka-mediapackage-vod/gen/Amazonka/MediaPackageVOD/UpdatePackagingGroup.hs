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
-- Module      : Amazonka.MediaPackageVOD.UpdatePackagingGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific packaging group. You can\'t change the id attribute
-- or any other system-generated attributes.
module Amazonka.MediaPackageVOD.UpdatePackagingGroup
  ( -- * Creating a Request
    UpdatePackagingGroup (..),
    newUpdatePackagingGroup,

    -- * Request Lenses
    updatePackagingGroup_authorization,
    updatePackagingGroup_id,

    -- * Destructuring the Response
    UpdatePackagingGroupResponse (..),
    newUpdatePackagingGroupResponse,

    -- * Response Lenses
    updatePackagingGroupResponse_tags,
    updatePackagingGroupResponse_domainName,
    updatePackagingGroupResponse_arn,
    updatePackagingGroupResponse_id,
    updatePackagingGroupResponse_authorization,
    updatePackagingGroupResponse_egressAccessLogs,
    updatePackagingGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaPackageVOD.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | A MediaPackage VOD PackagingGroup resource configuration.
--
-- /See:/ 'newUpdatePackagingGroup' smart constructor.
data UpdatePackagingGroup = UpdatePackagingGroup'
  { authorization :: Prelude.Maybe Authorization,
    -- | The ID of a MediaPackage VOD PackagingGroup resource.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePackagingGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authorization', 'updatePackagingGroup_authorization' - Undocumented member.
--
-- 'id', 'updatePackagingGroup_id' - The ID of a MediaPackage VOD PackagingGroup resource.
newUpdatePackagingGroup ::
  -- | 'id'
  Prelude.Text ->
  UpdatePackagingGroup
newUpdatePackagingGroup pId_ =
  UpdatePackagingGroup'
    { authorization =
        Prelude.Nothing,
      id = pId_
    }

-- | Undocumented member.
updatePackagingGroup_authorization :: Lens.Lens' UpdatePackagingGroup (Prelude.Maybe Authorization)
updatePackagingGroup_authorization = Lens.lens (\UpdatePackagingGroup' {authorization} -> authorization) (\s@UpdatePackagingGroup' {} a -> s {authorization = a} :: UpdatePackagingGroup)

-- | The ID of a MediaPackage VOD PackagingGroup resource.
updatePackagingGroup_id :: Lens.Lens' UpdatePackagingGroup Prelude.Text
updatePackagingGroup_id = Lens.lens (\UpdatePackagingGroup' {id} -> id) (\s@UpdatePackagingGroup' {} a -> s {id = a} :: UpdatePackagingGroup)

instance Core.AWSRequest UpdatePackagingGroup where
  type
    AWSResponse UpdatePackagingGroup =
      UpdatePackagingGroupResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdatePackagingGroupResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "domainName")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "authorization")
            Prelude.<*> (x Core..?> "egressAccessLogs")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePackagingGroup where
  hashWithSalt _salt UpdatePackagingGroup' {..} =
    _salt `Prelude.hashWithSalt` authorization
      `Prelude.hashWithSalt` id

instance Prelude.NFData UpdatePackagingGroup where
  rnf UpdatePackagingGroup' {..} =
    Prelude.rnf authorization
      `Prelude.seq` Prelude.rnf id

instance Core.ToHeaders UpdatePackagingGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdatePackagingGroup where
  toJSON UpdatePackagingGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("authorization" Core..=)
              Prelude.<$> authorization
          ]
      )

instance Core.ToPath UpdatePackagingGroup where
  toPath UpdatePackagingGroup' {..} =
    Prelude.mconcat
      ["/packaging_groups/", Core.toBS id]

instance Core.ToQuery UpdatePackagingGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePackagingGroupResponse' smart constructor.
data UpdatePackagingGroupResponse = UpdatePackagingGroupResponse'
  { tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The fully qualified domain name for Assets in the PackagingGroup.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the PackagingGroup.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the PackagingGroup.
    id :: Prelude.Maybe Prelude.Text,
    authorization :: Prelude.Maybe Authorization,
    egressAccessLogs :: Prelude.Maybe EgressAccessLogs,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePackagingGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updatePackagingGroupResponse_tags' - Undocumented member.
--
-- 'domainName', 'updatePackagingGroupResponse_domainName' - The fully qualified domain name for Assets in the PackagingGroup.
--
-- 'arn', 'updatePackagingGroupResponse_arn' - The ARN of the PackagingGroup.
--
-- 'id', 'updatePackagingGroupResponse_id' - The ID of the PackagingGroup.
--
-- 'authorization', 'updatePackagingGroupResponse_authorization' - Undocumented member.
--
-- 'egressAccessLogs', 'updatePackagingGroupResponse_egressAccessLogs' - Undocumented member.
--
-- 'httpStatus', 'updatePackagingGroupResponse_httpStatus' - The response's http status code.
newUpdatePackagingGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePackagingGroupResponse
newUpdatePackagingGroupResponse pHttpStatus_ =
  UpdatePackagingGroupResponse'
    { tags =
        Prelude.Nothing,
      domainName = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      authorization = Prelude.Nothing,
      egressAccessLogs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updatePackagingGroupResponse_tags :: Lens.Lens' UpdatePackagingGroupResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updatePackagingGroupResponse_tags = Lens.lens (\UpdatePackagingGroupResponse' {tags} -> tags) (\s@UpdatePackagingGroupResponse' {} a -> s {tags = a} :: UpdatePackagingGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The fully qualified domain name for Assets in the PackagingGroup.
updatePackagingGroupResponse_domainName :: Lens.Lens' UpdatePackagingGroupResponse (Prelude.Maybe Prelude.Text)
updatePackagingGroupResponse_domainName = Lens.lens (\UpdatePackagingGroupResponse' {domainName} -> domainName) (\s@UpdatePackagingGroupResponse' {} a -> s {domainName = a} :: UpdatePackagingGroupResponse)

-- | The ARN of the PackagingGroup.
updatePackagingGroupResponse_arn :: Lens.Lens' UpdatePackagingGroupResponse (Prelude.Maybe Prelude.Text)
updatePackagingGroupResponse_arn = Lens.lens (\UpdatePackagingGroupResponse' {arn} -> arn) (\s@UpdatePackagingGroupResponse' {} a -> s {arn = a} :: UpdatePackagingGroupResponse)

-- | The ID of the PackagingGroup.
updatePackagingGroupResponse_id :: Lens.Lens' UpdatePackagingGroupResponse (Prelude.Maybe Prelude.Text)
updatePackagingGroupResponse_id = Lens.lens (\UpdatePackagingGroupResponse' {id} -> id) (\s@UpdatePackagingGroupResponse' {} a -> s {id = a} :: UpdatePackagingGroupResponse)

-- | Undocumented member.
updatePackagingGroupResponse_authorization :: Lens.Lens' UpdatePackagingGroupResponse (Prelude.Maybe Authorization)
updatePackagingGroupResponse_authorization = Lens.lens (\UpdatePackagingGroupResponse' {authorization} -> authorization) (\s@UpdatePackagingGroupResponse' {} a -> s {authorization = a} :: UpdatePackagingGroupResponse)

-- | Undocumented member.
updatePackagingGroupResponse_egressAccessLogs :: Lens.Lens' UpdatePackagingGroupResponse (Prelude.Maybe EgressAccessLogs)
updatePackagingGroupResponse_egressAccessLogs = Lens.lens (\UpdatePackagingGroupResponse' {egressAccessLogs} -> egressAccessLogs) (\s@UpdatePackagingGroupResponse' {} a -> s {egressAccessLogs = a} :: UpdatePackagingGroupResponse)

-- | The response's http status code.
updatePackagingGroupResponse_httpStatus :: Lens.Lens' UpdatePackagingGroupResponse Prelude.Int
updatePackagingGroupResponse_httpStatus = Lens.lens (\UpdatePackagingGroupResponse' {httpStatus} -> httpStatus) (\s@UpdatePackagingGroupResponse' {} a -> s {httpStatus = a} :: UpdatePackagingGroupResponse)

instance Prelude.NFData UpdatePackagingGroupResponse where
  rnf UpdatePackagingGroupResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf authorization
      `Prelude.seq` Prelude.rnf egressAccessLogs
      `Prelude.seq` Prelude.rnf httpStatus
