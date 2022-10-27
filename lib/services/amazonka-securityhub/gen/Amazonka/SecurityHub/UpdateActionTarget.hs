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
-- Module      : Amazonka.SecurityHub.UpdateActionTarget
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name and description of a custom action target in Security
-- Hub.
module Amazonka.SecurityHub.UpdateActionTarget
  ( -- * Creating a Request
    UpdateActionTarget (..),
    newUpdateActionTarget,

    -- * Request Lenses
    updateActionTarget_name,
    updateActionTarget_description,
    updateActionTarget_actionTargetArn,

    -- * Destructuring the Response
    UpdateActionTargetResponse (..),
    newUpdateActionTargetResponse,

    -- * Response Lenses
    updateActionTargetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecurityHub.Types

-- | /See:/ 'newUpdateActionTarget' smart constructor.
data UpdateActionTarget = UpdateActionTarget'
  { -- | The updated name of the custom action target.
    name :: Prelude.Maybe Prelude.Text,
    -- | The updated description for the custom action target.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the custom action target to update.
    actionTargetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateActionTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateActionTarget_name' - The updated name of the custom action target.
--
-- 'description', 'updateActionTarget_description' - The updated description for the custom action target.
--
-- 'actionTargetArn', 'updateActionTarget_actionTargetArn' - The ARN of the custom action target to update.
newUpdateActionTarget ::
  -- | 'actionTargetArn'
  Prelude.Text ->
  UpdateActionTarget
newUpdateActionTarget pActionTargetArn_ =
  UpdateActionTarget'
    { name = Prelude.Nothing,
      description = Prelude.Nothing,
      actionTargetArn = pActionTargetArn_
    }

-- | The updated name of the custom action target.
updateActionTarget_name :: Lens.Lens' UpdateActionTarget (Prelude.Maybe Prelude.Text)
updateActionTarget_name = Lens.lens (\UpdateActionTarget' {name} -> name) (\s@UpdateActionTarget' {} a -> s {name = a} :: UpdateActionTarget)

-- | The updated description for the custom action target.
updateActionTarget_description :: Lens.Lens' UpdateActionTarget (Prelude.Maybe Prelude.Text)
updateActionTarget_description = Lens.lens (\UpdateActionTarget' {description} -> description) (\s@UpdateActionTarget' {} a -> s {description = a} :: UpdateActionTarget)

-- | The ARN of the custom action target to update.
updateActionTarget_actionTargetArn :: Lens.Lens' UpdateActionTarget Prelude.Text
updateActionTarget_actionTargetArn = Lens.lens (\UpdateActionTarget' {actionTargetArn} -> actionTargetArn) (\s@UpdateActionTarget' {} a -> s {actionTargetArn = a} :: UpdateActionTarget)

instance Core.AWSRequest UpdateActionTarget where
  type
    AWSResponse UpdateActionTarget =
      UpdateActionTargetResponse
  service _ = defaultService
  request srv = Request.patchJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateActionTargetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateActionTarget where
  hashWithSalt _salt UpdateActionTarget' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` actionTargetArn

instance Prelude.NFData UpdateActionTarget where
  rnf UpdateActionTarget' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf actionTargetArn

instance Core.ToHeaders UpdateActionTarget where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateActionTarget where
  toJSON UpdateActionTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateActionTarget where
  toPath UpdateActionTarget' {..} =
    Prelude.mconcat
      ["/actionTargets/", Core.toBS actionTargetArn]

instance Core.ToQuery UpdateActionTarget where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateActionTargetResponse' smart constructor.
data UpdateActionTargetResponse = UpdateActionTargetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateActionTargetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateActionTargetResponse_httpStatus' - The response's http status code.
newUpdateActionTargetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateActionTargetResponse
newUpdateActionTargetResponse pHttpStatus_ =
  UpdateActionTargetResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateActionTargetResponse_httpStatus :: Lens.Lens' UpdateActionTargetResponse Prelude.Int
updateActionTargetResponse_httpStatus = Lens.lens (\UpdateActionTargetResponse' {httpStatus} -> httpStatus) (\s@UpdateActionTargetResponse' {} a -> s {httpStatus = a} :: UpdateActionTargetResponse)

instance Prelude.NFData UpdateActionTargetResponse where
  rnf UpdateActionTargetResponse' {..} =
    Prelude.rnf httpStatus
