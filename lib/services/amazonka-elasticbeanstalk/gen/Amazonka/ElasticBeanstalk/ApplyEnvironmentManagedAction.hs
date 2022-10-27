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
-- Module      : Amazonka.ElasticBeanstalk.ApplyEnvironmentManagedAction
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a scheduled managed action immediately. A managed action can be
-- applied only if its status is @Scheduled@. Get the status and action ID
-- of a managed action with DescribeEnvironmentManagedActions.
module Amazonka.ElasticBeanstalk.ApplyEnvironmentManagedAction
  ( -- * Creating a Request
    ApplyEnvironmentManagedAction (..),
    newApplyEnvironmentManagedAction,

    -- * Request Lenses
    applyEnvironmentManagedAction_environmentName,
    applyEnvironmentManagedAction_environmentId,
    applyEnvironmentManagedAction_actionId,

    -- * Destructuring the Response
    ApplyEnvironmentManagedActionResponse (..),
    newApplyEnvironmentManagedActionResponse,

    -- * Response Lenses
    applyEnvironmentManagedActionResponse_actionType,
    applyEnvironmentManagedActionResponse_status,
    applyEnvironmentManagedActionResponse_actionId,
    applyEnvironmentManagedActionResponse_actionDescription,
    applyEnvironmentManagedActionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElasticBeanstalk.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Request to execute a scheduled managed action immediately.
--
-- /See:/ 'newApplyEnvironmentManagedAction' smart constructor.
data ApplyEnvironmentManagedAction = ApplyEnvironmentManagedAction'
  { -- | The name of the target environment.
    environmentName :: Prelude.Maybe Prelude.Text,
    -- | The environment ID of the target environment.
    environmentId :: Prelude.Maybe Prelude.Text,
    -- | The action ID of the scheduled managed action to execute.
    actionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplyEnvironmentManagedAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environmentName', 'applyEnvironmentManagedAction_environmentName' - The name of the target environment.
--
-- 'environmentId', 'applyEnvironmentManagedAction_environmentId' - The environment ID of the target environment.
--
-- 'actionId', 'applyEnvironmentManagedAction_actionId' - The action ID of the scheduled managed action to execute.
newApplyEnvironmentManagedAction ::
  -- | 'actionId'
  Prelude.Text ->
  ApplyEnvironmentManagedAction
newApplyEnvironmentManagedAction pActionId_ =
  ApplyEnvironmentManagedAction'
    { environmentName =
        Prelude.Nothing,
      environmentId = Prelude.Nothing,
      actionId = pActionId_
    }

-- | The name of the target environment.
applyEnvironmentManagedAction_environmentName :: Lens.Lens' ApplyEnvironmentManagedAction (Prelude.Maybe Prelude.Text)
applyEnvironmentManagedAction_environmentName = Lens.lens (\ApplyEnvironmentManagedAction' {environmentName} -> environmentName) (\s@ApplyEnvironmentManagedAction' {} a -> s {environmentName = a} :: ApplyEnvironmentManagedAction)

-- | The environment ID of the target environment.
applyEnvironmentManagedAction_environmentId :: Lens.Lens' ApplyEnvironmentManagedAction (Prelude.Maybe Prelude.Text)
applyEnvironmentManagedAction_environmentId = Lens.lens (\ApplyEnvironmentManagedAction' {environmentId} -> environmentId) (\s@ApplyEnvironmentManagedAction' {} a -> s {environmentId = a} :: ApplyEnvironmentManagedAction)

-- | The action ID of the scheduled managed action to execute.
applyEnvironmentManagedAction_actionId :: Lens.Lens' ApplyEnvironmentManagedAction Prelude.Text
applyEnvironmentManagedAction_actionId = Lens.lens (\ApplyEnvironmentManagedAction' {actionId} -> actionId) (\s@ApplyEnvironmentManagedAction' {} a -> s {actionId = a} :: ApplyEnvironmentManagedAction)

instance
  Core.AWSRequest
    ApplyEnvironmentManagedAction
  where
  type
    AWSResponse ApplyEnvironmentManagedAction =
      ApplyEnvironmentManagedActionResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ApplyEnvironmentManagedActionResult"
      ( \s h x ->
          ApplyEnvironmentManagedActionResponse'
            Prelude.<$> (x Core..@? "ActionType")
            Prelude.<*> (x Core..@? "Status")
            Prelude.<*> (x Core..@? "ActionId")
            Prelude.<*> (x Core..@? "ActionDescription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ApplyEnvironmentManagedAction
  where
  hashWithSalt _salt ApplyEnvironmentManagedAction' {..} =
    _salt `Prelude.hashWithSalt` environmentName
      `Prelude.hashWithSalt` environmentId
      `Prelude.hashWithSalt` actionId

instance Prelude.NFData ApplyEnvironmentManagedAction where
  rnf ApplyEnvironmentManagedAction' {..} =
    Prelude.rnf environmentName
      `Prelude.seq` Prelude.rnf environmentId
      `Prelude.seq` Prelude.rnf actionId

instance Core.ToHeaders ApplyEnvironmentManagedAction where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ApplyEnvironmentManagedAction where
  toPath = Prelude.const "/"

instance Core.ToQuery ApplyEnvironmentManagedAction where
  toQuery ApplyEnvironmentManagedAction' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "ApplyEnvironmentManagedAction" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2010-12-01" :: Prelude.ByteString),
        "EnvironmentName" Core.=: environmentName,
        "EnvironmentId" Core.=: environmentId,
        "ActionId" Core.=: actionId
      ]

-- | The result message containing information about the managed action.
--
-- /See:/ 'newApplyEnvironmentManagedActionResponse' smart constructor.
data ApplyEnvironmentManagedActionResponse = ApplyEnvironmentManagedActionResponse'
  { -- | The type of managed action.
    actionType :: Prelude.Maybe ActionType,
    -- | The status of the managed action.
    status :: Prelude.Maybe Prelude.Text,
    -- | The action ID of the managed action.
    actionId :: Prelude.Maybe Prelude.Text,
    -- | A description of the managed action.
    actionDescription :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplyEnvironmentManagedActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionType', 'applyEnvironmentManagedActionResponse_actionType' - The type of managed action.
--
-- 'status', 'applyEnvironmentManagedActionResponse_status' - The status of the managed action.
--
-- 'actionId', 'applyEnvironmentManagedActionResponse_actionId' - The action ID of the managed action.
--
-- 'actionDescription', 'applyEnvironmentManagedActionResponse_actionDescription' - A description of the managed action.
--
-- 'httpStatus', 'applyEnvironmentManagedActionResponse_httpStatus' - The response's http status code.
newApplyEnvironmentManagedActionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ApplyEnvironmentManagedActionResponse
newApplyEnvironmentManagedActionResponse pHttpStatus_ =
  ApplyEnvironmentManagedActionResponse'
    { actionType =
        Prelude.Nothing,
      status = Prelude.Nothing,
      actionId = Prelude.Nothing,
      actionDescription = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The type of managed action.
applyEnvironmentManagedActionResponse_actionType :: Lens.Lens' ApplyEnvironmentManagedActionResponse (Prelude.Maybe ActionType)
applyEnvironmentManagedActionResponse_actionType = Lens.lens (\ApplyEnvironmentManagedActionResponse' {actionType} -> actionType) (\s@ApplyEnvironmentManagedActionResponse' {} a -> s {actionType = a} :: ApplyEnvironmentManagedActionResponse)

-- | The status of the managed action.
applyEnvironmentManagedActionResponse_status :: Lens.Lens' ApplyEnvironmentManagedActionResponse (Prelude.Maybe Prelude.Text)
applyEnvironmentManagedActionResponse_status = Lens.lens (\ApplyEnvironmentManagedActionResponse' {status} -> status) (\s@ApplyEnvironmentManagedActionResponse' {} a -> s {status = a} :: ApplyEnvironmentManagedActionResponse)

-- | The action ID of the managed action.
applyEnvironmentManagedActionResponse_actionId :: Lens.Lens' ApplyEnvironmentManagedActionResponse (Prelude.Maybe Prelude.Text)
applyEnvironmentManagedActionResponse_actionId = Lens.lens (\ApplyEnvironmentManagedActionResponse' {actionId} -> actionId) (\s@ApplyEnvironmentManagedActionResponse' {} a -> s {actionId = a} :: ApplyEnvironmentManagedActionResponse)

-- | A description of the managed action.
applyEnvironmentManagedActionResponse_actionDescription :: Lens.Lens' ApplyEnvironmentManagedActionResponse (Prelude.Maybe Prelude.Text)
applyEnvironmentManagedActionResponse_actionDescription = Lens.lens (\ApplyEnvironmentManagedActionResponse' {actionDescription} -> actionDescription) (\s@ApplyEnvironmentManagedActionResponse' {} a -> s {actionDescription = a} :: ApplyEnvironmentManagedActionResponse)

-- | The response's http status code.
applyEnvironmentManagedActionResponse_httpStatus :: Lens.Lens' ApplyEnvironmentManagedActionResponse Prelude.Int
applyEnvironmentManagedActionResponse_httpStatus = Lens.lens (\ApplyEnvironmentManagedActionResponse' {httpStatus} -> httpStatus) (\s@ApplyEnvironmentManagedActionResponse' {} a -> s {httpStatus = a} :: ApplyEnvironmentManagedActionResponse)

instance
  Prelude.NFData
    ApplyEnvironmentManagedActionResponse
  where
  rnf ApplyEnvironmentManagedActionResponse' {..} =
    Prelude.rnf actionType
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf actionId
      `Prelude.seq` Prelude.rnf actionDescription
      `Prelude.seq` Prelude.rnf httpStatus
