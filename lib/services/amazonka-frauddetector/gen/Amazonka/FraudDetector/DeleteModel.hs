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
-- Module      : Amazonka.FraudDetector.DeleteModel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a model.
--
-- You can delete models and model versions in Amazon Fraud Detector,
-- provided that they are not associated with a detector version.
--
-- When you delete a model, Amazon Fraud Detector permanently deletes that
-- model and the data is no longer stored in Amazon Fraud Detector.
module Amazonka.FraudDetector.DeleteModel
  ( -- * Creating a Request
    DeleteModel (..),
    newDeleteModel,

    -- * Request Lenses
    deleteModel_modelId,
    deleteModel_modelType,

    -- * Destructuring the Response
    DeleteModelResponse (..),
    newDeleteModelResponse,

    -- * Response Lenses
    deleteModelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteModel' smart constructor.
data DeleteModel = DeleteModel'
  { -- | The model ID of the model to delete.
    modelId :: Prelude.Text,
    -- | The model type of the model to delete.
    modelType :: ModelTypeEnum
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelId', 'deleteModel_modelId' - The model ID of the model to delete.
--
-- 'modelType', 'deleteModel_modelType' - The model type of the model to delete.
newDeleteModel ::
  -- | 'modelId'
  Prelude.Text ->
  -- | 'modelType'
  ModelTypeEnum ->
  DeleteModel
newDeleteModel pModelId_ pModelType_ =
  DeleteModel'
    { modelId = pModelId_,
      modelType = pModelType_
    }

-- | The model ID of the model to delete.
deleteModel_modelId :: Lens.Lens' DeleteModel Prelude.Text
deleteModel_modelId = Lens.lens (\DeleteModel' {modelId} -> modelId) (\s@DeleteModel' {} a -> s {modelId = a} :: DeleteModel)

-- | The model type of the model to delete.
deleteModel_modelType :: Lens.Lens' DeleteModel ModelTypeEnum
deleteModel_modelType = Lens.lens (\DeleteModel' {modelType} -> modelType) (\s@DeleteModel' {} a -> s {modelType = a} :: DeleteModel)

instance Core.AWSRequest DeleteModel where
  type AWSResponse DeleteModel = DeleteModelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteModelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteModel where
  hashWithSalt _salt DeleteModel' {..} =
    _salt `Prelude.hashWithSalt` modelId
      `Prelude.hashWithSalt` modelType

instance Prelude.NFData DeleteModel where
  rnf DeleteModel' {..} =
    Prelude.rnf modelId
      `Prelude.seq` Prelude.rnf modelType

instance Core.ToHeaders DeleteModel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteModel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteModel where
  toJSON DeleteModel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("modelId" Core..= modelId),
            Prelude.Just ("modelType" Core..= modelType)
          ]
      )

instance Core.ToPath DeleteModel where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteModelResponse' smart constructor.
data DeleteModelResponse = DeleteModelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteModelResponse_httpStatus' - The response's http status code.
newDeleteModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteModelResponse
newDeleteModelResponse pHttpStatus_ =
  DeleteModelResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteModelResponse_httpStatus :: Lens.Lens' DeleteModelResponse Prelude.Int
deleteModelResponse_httpStatus = Lens.lens (\DeleteModelResponse' {httpStatus} -> httpStatus) (\s@DeleteModelResponse' {} a -> s {httpStatus = a} :: DeleteModelResponse)

instance Prelude.NFData DeleteModelResponse where
  rnf DeleteModelResponse' {..} = Prelude.rnf httpStatus
