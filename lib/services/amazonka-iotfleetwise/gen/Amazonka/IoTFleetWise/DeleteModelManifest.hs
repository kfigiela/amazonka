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
-- Module      : Amazonka.IoTFleetWise.DeleteModelManifest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a vehicle model (model manifest).
--
-- If the vehicle model is successfully deleted, Amazon Web Services IoT
-- FleetWise sends back an HTTP 200 response with an empty body.
module Amazonka.IoTFleetWise.DeleteModelManifest
  ( -- * Creating a Request
    DeleteModelManifest (..),
    newDeleteModelManifest,

    -- * Request Lenses
    deleteModelManifest_name,

    -- * Destructuring the Response
    DeleteModelManifestResponse (..),
    newDeleteModelManifestResponse,

    -- * Response Lenses
    deleteModelManifestResponse_httpStatus,
    deleteModelManifestResponse_name,
    deleteModelManifestResponse_arn,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteModelManifest' smart constructor.
data DeleteModelManifest = DeleteModelManifest'
  { -- | The name of the model manifest to delete.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModelManifest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteModelManifest_name' - The name of the model manifest to delete.
newDeleteModelManifest ::
  -- | 'name'
  Prelude.Text ->
  DeleteModelManifest
newDeleteModelManifest pName_ =
  DeleteModelManifest' {name = pName_}

-- | The name of the model manifest to delete.
deleteModelManifest_name :: Lens.Lens' DeleteModelManifest Prelude.Text
deleteModelManifest_name = Lens.lens (\DeleteModelManifest' {name} -> name) (\s@DeleteModelManifest' {} a -> s {name = a} :: DeleteModelManifest)

instance Core.AWSRequest DeleteModelManifest where
  type
    AWSResponse DeleteModelManifest =
      DeleteModelManifestResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteModelManifestResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "name")
            Prelude.<*> (x Core..:> "arn")
      )

instance Prelude.Hashable DeleteModelManifest where
  hashWithSalt _salt DeleteModelManifest' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData DeleteModelManifest where
  rnf DeleteModelManifest' {..} = Prelude.rnf name

instance Core.ToHeaders DeleteModelManifest where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "IoTAutobahnControlPlane.DeleteModelManifest" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteModelManifest where
  toJSON DeleteModelManifest' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath DeleteModelManifest where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteModelManifest where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteModelManifestResponse' smart constructor.
data DeleteModelManifestResponse = DeleteModelManifestResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the deleted model manifest.
    name :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the deleted model manifest.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModelManifestResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteModelManifestResponse_httpStatus' - The response's http status code.
--
-- 'name', 'deleteModelManifestResponse_name' - The name of the deleted model manifest.
--
-- 'arn', 'deleteModelManifestResponse_arn' - The Amazon Resource Name (ARN) of the deleted model manifest.
newDeleteModelManifestResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  DeleteModelManifestResponse
newDeleteModelManifestResponse
  pHttpStatus_
  pName_
  pArn_ =
    DeleteModelManifestResponse'
      { httpStatus =
          pHttpStatus_,
        name = pName_,
        arn = pArn_
      }

-- | The response's http status code.
deleteModelManifestResponse_httpStatus :: Lens.Lens' DeleteModelManifestResponse Prelude.Int
deleteModelManifestResponse_httpStatus = Lens.lens (\DeleteModelManifestResponse' {httpStatus} -> httpStatus) (\s@DeleteModelManifestResponse' {} a -> s {httpStatus = a} :: DeleteModelManifestResponse)

-- | The name of the deleted model manifest.
deleteModelManifestResponse_name :: Lens.Lens' DeleteModelManifestResponse Prelude.Text
deleteModelManifestResponse_name = Lens.lens (\DeleteModelManifestResponse' {name} -> name) (\s@DeleteModelManifestResponse' {} a -> s {name = a} :: DeleteModelManifestResponse)

-- | The Amazon Resource Name (ARN) of the deleted model manifest.
deleteModelManifestResponse_arn :: Lens.Lens' DeleteModelManifestResponse Prelude.Text
deleteModelManifestResponse_arn = Lens.lens (\DeleteModelManifestResponse' {arn} -> arn) (\s@DeleteModelManifestResponse' {} a -> s {arn = a} :: DeleteModelManifestResponse)

instance Prelude.NFData DeleteModelManifestResponse where
  rnf DeleteModelManifestResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
