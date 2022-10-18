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
-- Module      : Amazonka.MachineLearning.DeleteEvaluation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assigns the @DELETED@ status to an @Evaluation@, rendering it unusable.
--
-- After invoking the @DeleteEvaluation@ operation, you can use the
-- @GetEvaluation@ operation to verify that the status of the @Evaluation@
-- changed to @DELETED@.
--
-- __Caution:__ The results of the @DeleteEvaluation@ operation are
-- irreversible.
module Amazonka.MachineLearning.DeleteEvaluation
  ( -- * Creating a Request
    DeleteEvaluation (..),
    newDeleteEvaluation,

    -- * Request Lenses
    deleteEvaluation_evaluationId,

    -- * Destructuring the Response
    DeleteEvaluationResponse (..),
    newDeleteEvaluationResponse,

    -- * Response Lenses
    deleteEvaluationResponse_evaluationId,
    deleteEvaluationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MachineLearning.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteEvaluation' smart constructor.
data DeleteEvaluation = DeleteEvaluation'
  { -- | A user-supplied ID that uniquely identifies the @Evaluation@ to delete.
    evaluationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEvaluation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evaluationId', 'deleteEvaluation_evaluationId' - A user-supplied ID that uniquely identifies the @Evaluation@ to delete.
newDeleteEvaluation ::
  -- | 'evaluationId'
  Prelude.Text ->
  DeleteEvaluation
newDeleteEvaluation pEvaluationId_ =
  DeleteEvaluation' {evaluationId = pEvaluationId_}

-- | A user-supplied ID that uniquely identifies the @Evaluation@ to delete.
deleteEvaluation_evaluationId :: Lens.Lens' DeleteEvaluation Prelude.Text
deleteEvaluation_evaluationId = Lens.lens (\DeleteEvaluation' {evaluationId} -> evaluationId) (\s@DeleteEvaluation' {} a -> s {evaluationId = a} :: DeleteEvaluation)

instance Core.AWSRequest DeleteEvaluation where
  type
    AWSResponse DeleteEvaluation =
      DeleteEvaluationResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteEvaluationResponse'
            Prelude.<$> (x Core..?> "EvaluationId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService DeleteEvaluation where
  service _proxy = defaultService

instance Prelude.Hashable DeleteEvaluation where
  hashWithSalt _salt DeleteEvaluation' {..} =
    _salt `Prelude.hashWithSalt` evaluationId

instance Prelude.NFData DeleteEvaluation where
  rnf DeleteEvaluation' {..} = Prelude.rnf evaluationId

instance Core.ToHeaders DeleteEvaluation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonML_20141212.DeleteEvaluation" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteEvaluation where
  toJSON DeleteEvaluation' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("EvaluationId" Core..= evaluationId)]
      )

instance Core.ToPath DeleteEvaluation where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteEvaluation where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a @DeleteEvaluation@ operation. The output
-- indicates that Amazon Machine Learning (Amazon ML) received the request.
--
-- You can use the @GetEvaluation@ operation and check the value of the
-- @Status@ parameter to see whether an @Evaluation@ is marked as
-- @DELETED@.
--
-- /See:/ 'newDeleteEvaluationResponse' smart constructor.
data DeleteEvaluationResponse = DeleteEvaluationResponse'
  { -- | A user-supplied ID that uniquely identifies the @Evaluation@. This value
    -- should be identical to the value of the @EvaluationId@ in the request.
    evaluationId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEvaluationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evaluationId', 'deleteEvaluationResponse_evaluationId' - A user-supplied ID that uniquely identifies the @Evaluation@. This value
-- should be identical to the value of the @EvaluationId@ in the request.
--
-- 'httpStatus', 'deleteEvaluationResponse_httpStatus' - The response's http status code.
newDeleteEvaluationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteEvaluationResponse
newDeleteEvaluationResponse pHttpStatus_ =
  DeleteEvaluationResponse'
    { evaluationId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A user-supplied ID that uniquely identifies the @Evaluation@. This value
-- should be identical to the value of the @EvaluationId@ in the request.
deleteEvaluationResponse_evaluationId :: Lens.Lens' DeleteEvaluationResponse (Prelude.Maybe Prelude.Text)
deleteEvaluationResponse_evaluationId = Lens.lens (\DeleteEvaluationResponse' {evaluationId} -> evaluationId) (\s@DeleteEvaluationResponse' {} a -> s {evaluationId = a} :: DeleteEvaluationResponse)

-- | The response's http status code.
deleteEvaluationResponse_httpStatus :: Lens.Lens' DeleteEvaluationResponse Prelude.Int
deleteEvaluationResponse_httpStatus = Lens.lens (\DeleteEvaluationResponse' {httpStatus} -> httpStatus) (\s@DeleteEvaluationResponse' {} a -> s {httpStatus = a} :: DeleteEvaluationResponse)

instance Prelude.NFData DeleteEvaluationResponse where
  rnf DeleteEvaluationResponse' {..} =
    Prelude.rnf evaluationId
      `Prelude.seq` Prelude.rnf httpStatus
