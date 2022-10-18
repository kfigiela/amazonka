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
-- Module      : Amazonka.SageMaker.UpdateExperiment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds, updates, or removes the description of an experiment. Updates the
-- display name of an experiment.
module Amazonka.SageMaker.UpdateExperiment
  ( -- * Creating a Request
    UpdateExperiment (..),
    newUpdateExperiment,

    -- * Request Lenses
    updateExperiment_displayName,
    updateExperiment_description,
    updateExperiment_experimentName,

    -- * Destructuring the Response
    UpdateExperimentResponse (..),
    newUpdateExperimentResponse,

    -- * Response Lenses
    updateExperimentResponse_experimentArn,
    updateExperimentResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newUpdateExperiment' smart constructor.
data UpdateExperiment = UpdateExperiment'
  { -- | The name of the experiment as displayed. The name doesn\'t need to be
    -- unique. If @DisplayName@ isn\'t specified, @ExperimentName@ is
    -- displayed.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The description of the experiment.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the experiment to update.
    experimentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateExperiment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'displayName', 'updateExperiment_displayName' - The name of the experiment as displayed. The name doesn\'t need to be
-- unique. If @DisplayName@ isn\'t specified, @ExperimentName@ is
-- displayed.
--
-- 'description', 'updateExperiment_description' - The description of the experiment.
--
-- 'experimentName', 'updateExperiment_experimentName' - The name of the experiment to update.
newUpdateExperiment ::
  -- | 'experimentName'
  Prelude.Text ->
  UpdateExperiment
newUpdateExperiment pExperimentName_ =
  UpdateExperiment'
    { displayName = Prelude.Nothing,
      description = Prelude.Nothing,
      experimentName = pExperimentName_
    }

-- | The name of the experiment as displayed. The name doesn\'t need to be
-- unique. If @DisplayName@ isn\'t specified, @ExperimentName@ is
-- displayed.
updateExperiment_displayName :: Lens.Lens' UpdateExperiment (Prelude.Maybe Prelude.Text)
updateExperiment_displayName = Lens.lens (\UpdateExperiment' {displayName} -> displayName) (\s@UpdateExperiment' {} a -> s {displayName = a} :: UpdateExperiment)

-- | The description of the experiment.
updateExperiment_description :: Lens.Lens' UpdateExperiment (Prelude.Maybe Prelude.Text)
updateExperiment_description = Lens.lens (\UpdateExperiment' {description} -> description) (\s@UpdateExperiment' {} a -> s {description = a} :: UpdateExperiment)

-- | The name of the experiment to update.
updateExperiment_experimentName :: Lens.Lens' UpdateExperiment Prelude.Text
updateExperiment_experimentName = Lens.lens (\UpdateExperiment' {experimentName} -> experimentName) (\s@UpdateExperiment' {} a -> s {experimentName = a} :: UpdateExperiment)

instance Core.AWSRequest UpdateExperiment where
  type
    AWSResponse UpdateExperiment =
      UpdateExperimentResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateExperimentResponse'
            Prelude.<$> (x Core..?> "ExperimentArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService UpdateExperiment where
  service _proxy = defaultService

instance Prelude.Hashable UpdateExperiment where
  hashWithSalt _salt UpdateExperiment' {..} =
    _salt `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` experimentName

instance Prelude.NFData UpdateExperiment where
  rnf UpdateExperiment' {..} =
    Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf experimentName

instance Core.ToHeaders UpdateExperiment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.UpdateExperiment" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateExperiment where
  toJSON UpdateExperiment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DisplayName" Core..=) Prelude.<$> displayName,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just
              ("ExperimentName" Core..= experimentName)
          ]
      )

instance Core.ToPath UpdateExperiment where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateExperiment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateExperimentResponse' smart constructor.
data UpdateExperimentResponse = UpdateExperimentResponse'
  { -- | The Amazon Resource Name (ARN) of the experiment.
    experimentArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateExperimentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'experimentArn', 'updateExperimentResponse_experimentArn' - The Amazon Resource Name (ARN) of the experiment.
--
-- 'httpStatus', 'updateExperimentResponse_httpStatus' - The response's http status code.
newUpdateExperimentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateExperimentResponse
newUpdateExperimentResponse pHttpStatus_ =
  UpdateExperimentResponse'
    { experimentArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the experiment.
updateExperimentResponse_experimentArn :: Lens.Lens' UpdateExperimentResponse (Prelude.Maybe Prelude.Text)
updateExperimentResponse_experimentArn = Lens.lens (\UpdateExperimentResponse' {experimentArn} -> experimentArn) (\s@UpdateExperimentResponse' {} a -> s {experimentArn = a} :: UpdateExperimentResponse)

-- | The response's http status code.
updateExperimentResponse_httpStatus :: Lens.Lens' UpdateExperimentResponse Prelude.Int
updateExperimentResponse_httpStatus = Lens.lens (\UpdateExperimentResponse' {httpStatus} -> httpStatus) (\s@UpdateExperimentResponse' {} a -> s {httpStatus = a} :: UpdateExperimentResponse)

instance Prelude.NFData UpdateExperimentResponse where
  rnf UpdateExperimentResponse' {..} =
    Prelude.rnf experimentArn
      `Prelude.seq` Prelude.rnf httpStatus
