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
-- Module      : Amazonka.AuditManager.UpdateControl
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a custom control in Audit Manager.
module Amazonka.AuditManager.UpdateControl
  ( -- * Creating a Request
    UpdateControl (..),
    newUpdateControl,

    -- * Request Lenses
    updateControl_actionPlanInstructions,
    updateControl_description,
    updateControl_actionPlanTitle,
    updateControl_testingInformation,
    updateControl_controlId,
    updateControl_name,
    updateControl_controlMappingSources,

    -- * Destructuring the Response
    UpdateControlResponse (..),
    newUpdateControlResponse,

    -- * Response Lenses
    updateControlResponse_control,
    updateControlResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateControl' smart constructor.
data UpdateControl = UpdateControl'
  { -- | The recommended actions to carry out if the control isn\'t fulfilled.
    actionPlanInstructions :: Prelude.Maybe Prelude.Text,
    -- | The optional description of the control.
    description :: Prelude.Maybe Prelude.Text,
    -- | The title of the action plan for remediating the control.
    actionPlanTitle :: Prelude.Maybe Prelude.Text,
    -- | The steps that you should follow to determine if the control is met.
    testingInformation :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the control.
    controlId :: Prelude.Text,
    -- | The name of the updated control.
    name :: Prelude.Text,
    -- | The data mapping sources for the control.
    controlMappingSources :: Prelude.NonEmpty ControlMappingSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateControl' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionPlanInstructions', 'updateControl_actionPlanInstructions' - The recommended actions to carry out if the control isn\'t fulfilled.
--
-- 'description', 'updateControl_description' - The optional description of the control.
--
-- 'actionPlanTitle', 'updateControl_actionPlanTitle' - The title of the action plan for remediating the control.
--
-- 'testingInformation', 'updateControl_testingInformation' - The steps that you should follow to determine if the control is met.
--
-- 'controlId', 'updateControl_controlId' - The identifier for the control.
--
-- 'name', 'updateControl_name' - The name of the updated control.
--
-- 'controlMappingSources', 'updateControl_controlMappingSources' - The data mapping sources for the control.
newUpdateControl ::
  -- | 'controlId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'controlMappingSources'
  Prelude.NonEmpty ControlMappingSource ->
  UpdateControl
newUpdateControl
  pControlId_
  pName_
  pControlMappingSources_ =
    UpdateControl'
      { actionPlanInstructions =
          Prelude.Nothing,
        description = Prelude.Nothing,
        actionPlanTitle = Prelude.Nothing,
        testingInformation = Prelude.Nothing,
        controlId = pControlId_,
        name = pName_,
        controlMappingSources =
          Lens.coerced Lens.# pControlMappingSources_
      }

-- | The recommended actions to carry out if the control isn\'t fulfilled.
updateControl_actionPlanInstructions :: Lens.Lens' UpdateControl (Prelude.Maybe Prelude.Text)
updateControl_actionPlanInstructions = Lens.lens (\UpdateControl' {actionPlanInstructions} -> actionPlanInstructions) (\s@UpdateControl' {} a -> s {actionPlanInstructions = a} :: UpdateControl)

-- | The optional description of the control.
updateControl_description :: Lens.Lens' UpdateControl (Prelude.Maybe Prelude.Text)
updateControl_description = Lens.lens (\UpdateControl' {description} -> description) (\s@UpdateControl' {} a -> s {description = a} :: UpdateControl)

-- | The title of the action plan for remediating the control.
updateControl_actionPlanTitle :: Lens.Lens' UpdateControl (Prelude.Maybe Prelude.Text)
updateControl_actionPlanTitle = Lens.lens (\UpdateControl' {actionPlanTitle} -> actionPlanTitle) (\s@UpdateControl' {} a -> s {actionPlanTitle = a} :: UpdateControl)

-- | The steps that you should follow to determine if the control is met.
updateControl_testingInformation :: Lens.Lens' UpdateControl (Prelude.Maybe Prelude.Text)
updateControl_testingInformation = Lens.lens (\UpdateControl' {testingInformation} -> testingInformation) (\s@UpdateControl' {} a -> s {testingInformation = a} :: UpdateControl)

-- | The identifier for the control.
updateControl_controlId :: Lens.Lens' UpdateControl Prelude.Text
updateControl_controlId = Lens.lens (\UpdateControl' {controlId} -> controlId) (\s@UpdateControl' {} a -> s {controlId = a} :: UpdateControl)

-- | The name of the updated control.
updateControl_name :: Lens.Lens' UpdateControl Prelude.Text
updateControl_name = Lens.lens (\UpdateControl' {name} -> name) (\s@UpdateControl' {} a -> s {name = a} :: UpdateControl)

-- | The data mapping sources for the control.
updateControl_controlMappingSources :: Lens.Lens' UpdateControl (Prelude.NonEmpty ControlMappingSource)
updateControl_controlMappingSources = Lens.lens (\UpdateControl' {controlMappingSources} -> controlMappingSources) (\s@UpdateControl' {} a -> s {controlMappingSources = a} :: UpdateControl) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateControl where
  type
    AWSResponse UpdateControl =
      UpdateControlResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateControlResponse'
            Prelude.<$> (x Core..?> "control")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateControl where
  hashWithSalt _salt UpdateControl' {..} =
    _salt `Prelude.hashWithSalt` actionPlanInstructions
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` actionPlanTitle
      `Prelude.hashWithSalt` testingInformation
      `Prelude.hashWithSalt` controlId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` controlMappingSources

instance Prelude.NFData UpdateControl where
  rnf UpdateControl' {..} =
    Prelude.rnf actionPlanInstructions
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf actionPlanTitle
      `Prelude.seq` Prelude.rnf testingInformation
      `Prelude.seq` Prelude.rnf controlId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf controlMappingSources

instance Core.ToHeaders UpdateControl where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateControl where
  toJSON UpdateControl' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("actionPlanInstructions" Core..=)
              Prelude.<$> actionPlanInstructions,
            ("description" Core..=) Prelude.<$> description,
            ("actionPlanTitle" Core..=)
              Prelude.<$> actionPlanTitle,
            ("testingInformation" Core..=)
              Prelude.<$> testingInformation,
            Prelude.Just ("name" Core..= name),
            Prelude.Just
              ( "controlMappingSources"
                  Core..= controlMappingSources
              )
          ]
      )

instance Core.ToPath UpdateControl where
  toPath UpdateControl' {..} =
    Prelude.mconcat ["/controls/", Core.toBS controlId]

instance Core.ToQuery UpdateControl where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateControlResponse' smart constructor.
data UpdateControlResponse = UpdateControlResponse'
  { -- | The name of the updated control set that the @UpdateControl@ API
    -- returned.
    control :: Prelude.Maybe Control,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateControlResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'control', 'updateControlResponse_control' - The name of the updated control set that the @UpdateControl@ API
-- returned.
--
-- 'httpStatus', 'updateControlResponse_httpStatus' - The response's http status code.
newUpdateControlResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateControlResponse
newUpdateControlResponse pHttpStatus_ =
  UpdateControlResponse'
    { control = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the updated control set that the @UpdateControl@ API
-- returned.
updateControlResponse_control :: Lens.Lens' UpdateControlResponse (Prelude.Maybe Control)
updateControlResponse_control = Lens.lens (\UpdateControlResponse' {control} -> control) (\s@UpdateControlResponse' {} a -> s {control = a} :: UpdateControlResponse)

-- | The response's http status code.
updateControlResponse_httpStatus :: Lens.Lens' UpdateControlResponse Prelude.Int
updateControlResponse_httpStatus = Lens.lens (\UpdateControlResponse' {httpStatus} -> httpStatus) (\s@UpdateControlResponse' {} a -> s {httpStatus = a} :: UpdateControlResponse)

instance Prelude.NFData UpdateControlResponse where
  rnf UpdateControlResponse' {..} =
    Prelude.rnf control
      `Prelude.seq` Prelude.rnf httpStatus
