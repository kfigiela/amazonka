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
-- Module      : Amazonka.APIGateway.UpdateUsagePlan
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a usage plan of a given plan Id.
module Amazonka.APIGateway.UpdateUsagePlan
  ( -- * Creating a Request
    UpdateUsagePlan (..),
    newUpdateUsagePlan,

    -- * Request Lenses
    updateUsagePlan_patchOperations,
    updateUsagePlan_usagePlanId,

    -- * Destructuring the Response
    UsagePlan (..),
    newUsagePlan,

    -- * Response Lenses
    usagePlan_tags,
    usagePlan_name,
    usagePlan_quota,
    usagePlan_description,
    usagePlan_productCode,
    usagePlan_id,
    usagePlan_throttle,
    usagePlan_apiStages,
  )
where

import Amazonka.APIGateway.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The PATCH request to update a usage plan of a given plan Id.
--
-- /See:/ 'newUpdateUsagePlan' smart constructor.
data UpdateUsagePlan = UpdateUsagePlan'
  { -- | For more information about supported patch operations, see
    -- <https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html Patch Operations>.
    patchOperations :: Prelude.Maybe [PatchOperation],
    -- | The Id of the to-be-updated usage plan.
    usagePlanId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUsagePlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patchOperations', 'updateUsagePlan_patchOperations' - For more information about supported patch operations, see
-- <https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html Patch Operations>.
--
-- 'usagePlanId', 'updateUsagePlan_usagePlanId' - The Id of the to-be-updated usage plan.
newUpdateUsagePlan ::
  -- | 'usagePlanId'
  Prelude.Text ->
  UpdateUsagePlan
newUpdateUsagePlan pUsagePlanId_ =
  UpdateUsagePlan'
    { patchOperations = Prelude.Nothing,
      usagePlanId = pUsagePlanId_
    }

-- | For more information about supported patch operations, see
-- <https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html Patch Operations>.
updateUsagePlan_patchOperations :: Lens.Lens' UpdateUsagePlan (Prelude.Maybe [PatchOperation])
updateUsagePlan_patchOperations = Lens.lens (\UpdateUsagePlan' {patchOperations} -> patchOperations) (\s@UpdateUsagePlan' {} a -> s {patchOperations = a} :: UpdateUsagePlan) Prelude.. Lens.mapping Lens.coerced

-- | The Id of the to-be-updated usage plan.
updateUsagePlan_usagePlanId :: Lens.Lens' UpdateUsagePlan Prelude.Text
updateUsagePlan_usagePlanId = Lens.lens (\UpdateUsagePlan' {usagePlanId} -> usagePlanId) (\s@UpdateUsagePlan' {} a -> s {usagePlanId = a} :: UpdateUsagePlan)

instance Core.AWSRequest UpdateUsagePlan where
  type AWSResponse UpdateUsagePlan = UsagePlan
  service _ = defaultService
  request srv = Request.patchJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable UpdateUsagePlan where
  hashWithSalt _salt UpdateUsagePlan' {..} =
    _salt `Prelude.hashWithSalt` patchOperations
      `Prelude.hashWithSalt` usagePlanId

instance Prelude.NFData UpdateUsagePlan where
  rnf UpdateUsagePlan' {..} =
    Prelude.rnf patchOperations
      `Prelude.seq` Prelude.rnf usagePlanId

instance Core.ToHeaders UpdateUsagePlan where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Core.ToJSON UpdateUsagePlan where
  toJSON UpdateUsagePlan' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("patchOperations" Core..=)
              Prelude.<$> patchOperations
          ]
      )

instance Core.ToPath UpdateUsagePlan where
  toPath UpdateUsagePlan' {..} =
    Prelude.mconcat
      ["/usageplans/", Core.toBS usagePlanId]

instance Core.ToQuery UpdateUsagePlan where
  toQuery = Prelude.const Prelude.mempty
