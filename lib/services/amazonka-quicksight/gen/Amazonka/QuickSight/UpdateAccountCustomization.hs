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
-- Module      : Amazonka.QuickSight.UpdateAccountCustomization
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates Amazon QuickSight customizations for the current Amazon Web
-- Services Region. Currently, the only customization that you can use is a
-- theme.
--
-- You can use customizations for your Amazon Web Services account or, if
-- you specify a namespace, for a Amazon QuickSight namespace instead.
-- Customizations that apply to a namespace override customizations that
-- apply to an Amazon Web Services account. To find out which
-- customizations apply, use the @DescribeAccountCustomization@ API
-- operation.
module Amazonka.QuickSight.UpdateAccountCustomization
  ( -- * Creating a Request
    UpdateAccountCustomization (..),
    newUpdateAccountCustomization,

    -- * Request Lenses
    updateAccountCustomization_namespace,
    updateAccountCustomization_awsAccountId,
    updateAccountCustomization_accountCustomization,

    -- * Destructuring the Response
    UpdateAccountCustomizationResponse (..),
    newUpdateAccountCustomizationResponse,

    -- * Response Lenses
    updateAccountCustomizationResponse_awsAccountId,
    updateAccountCustomizationResponse_requestId,
    updateAccountCustomizationResponse_arn,
    updateAccountCustomizationResponse_namespace,
    updateAccountCustomizationResponse_accountCustomization,
    updateAccountCustomizationResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateAccountCustomization' smart constructor.
data UpdateAccountCustomization = UpdateAccountCustomization'
  { -- | The namespace that you want to update Amazon QuickSight customizations
    -- for.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The ID for the Amazon Web Services account that you want to update
    -- Amazon QuickSight customizations for.
    awsAccountId :: Prelude.Text,
    -- | The Amazon QuickSight customizations you\'re updating in the current
    -- Amazon Web Services Region.
    accountCustomization :: AccountCustomization
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccountCustomization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namespace', 'updateAccountCustomization_namespace' - The namespace that you want to update Amazon QuickSight customizations
-- for.
--
-- 'awsAccountId', 'updateAccountCustomization_awsAccountId' - The ID for the Amazon Web Services account that you want to update
-- Amazon QuickSight customizations for.
--
-- 'accountCustomization', 'updateAccountCustomization_accountCustomization' - The Amazon QuickSight customizations you\'re updating in the current
-- Amazon Web Services Region.
newUpdateAccountCustomization ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'accountCustomization'
  AccountCustomization ->
  UpdateAccountCustomization
newUpdateAccountCustomization
  pAwsAccountId_
  pAccountCustomization_ =
    UpdateAccountCustomization'
      { namespace =
          Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        accountCustomization = pAccountCustomization_
      }

-- | The namespace that you want to update Amazon QuickSight customizations
-- for.
updateAccountCustomization_namespace :: Lens.Lens' UpdateAccountCustomization (Prelude.Maybe Prelude.Text)
updateAccountCustomization_namespace = Lens.lens (\UpdateAccountCustomization' {namespace} -> namespace) (\s@UpdateAccountCustomization' {} a -> s {namespace = a} :: UpdateAccountCustomization)

-- | The ID for the Amazon Web Services account that you want to update
-- Amazon QuickSight customizations for.
updateAccountCustomization_awsAccountId :: Lens.Lens' UpdateAccountCustomization Prelude.Text
updateAccountCustomization_awsAccountId = Lens.lens (\UpdateAccountCustomization' {awsAccountId} -> awsAccountId) (\s@UpdateAccountCustomization' {} a -> s {awsAccountId = a} :: UpdateAccountCustomization)

-- | The Amazon QuickSight customizations you\'re updating in the current
-- Amazon Web Services Region.
updateAccountCustomization_accountCustomization :: Lens.Lens' UpdateAccountCustomization AccountCustomization
updateAccountCustomization_accountCustomization = Lens.lens (\UpdateAccountCustomization' {accountCustomization} -> accountCustomization) (\s@UpdateAccountCustomization' {} a -> s {accountCustomization = a} :: UpdateAccountCustomization)

instance Core.AWSRequest UpdateAccountCustomization where
  type
    AWSResponse UpdateAccountCustomization =
      UpdateAccountCustomizationResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAccountCustomizationResponse'
            Prelude.<$> (x Core..?> "AwsAccountId")
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Namespace")
            Prelude.<*> (x Core..?> "AccountCustomization")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAccountCustomization where
  hashWithSalt _salt UpdateAccountCustomization' {..} =
    _salt `Prelude.hashWithSalt` namespace
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` accountCustomization

instance Prelude.NFData UpdateAccountCustomization where
  rnf UpdateAccountCustomization' {..} =
    Prelude.rnf namespace
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf accountCustomization

instance Core.ToHeaders UpdateAccountCustomization where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAccountCustomization where
  toJSON UpdateAccountCustomization' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "AccountCustomization"
                  Core..= accountCustomization
              )
          ]
      )

instance Core.ToPath UpdateAccountCustomization where
  toPath UpdateAccountCustomization' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/customizations"
      ]

instance Core.ToQuery UpdateAccountCustomization where
  toQuery UpdateAccountCustomization' {..} =
    Prelude.mconcat ["namespace" Core.=: namespace]

-- | /See:/ 'newUpdateAccountCustomizationResponse' smart constructor.
data UpdateAccountCustomizationResponse = UpdateAccountCustomizationResponse'
  { -- | The ID for the Amazon Web Services account that you want to update
    -- Amazon QuickSight customizations for.
    awsAccountId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the updated customization for this
    -- Amazon Web Services account.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The namespace associated with the customization that you\'re updating.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The Amazon QuickSight customizations you\'re updating in the current
    -- Amazon Web Services Region.
    accountCustomization :: Prelude.Maybe AccountCustomization,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccountCustomizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'updateAccountCustomizationResponse_awsAccountId' - The ID for the Amazon Web Services account that you want to update
-- Amazon QuickSight customizations for.
--
-- 'requestId', 'updateAccountCustomizationResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'updateAccountCustomizationResponse_arn' - The Amazon Resource Name (ARN) for the updated customization for this
-- Amazon Web Services account.
--
-- 'namespace', 'updateAccountCustomizationResponse_namespace' - The namespace associated with the customization that you\'re updating.
--
-- 'accountCustomization', 'updateAccountCustomizationResponse_accountCustomization' - The Amazon QuickSight customizations you\'re updating in the current
-- Amazon Web Services Region.
--
-- 'status', 'updateAccountCustomizationResponse_status' - The HTTP status of the request.
newUpdateAccountCustomizationResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateAccountCustomizationResponse
newUpdateAccountCustomizationResponse pStatus_ =
  UpdateAccountCustomizationResponse'
    { awsAccountId =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      arn = Prelude.Nothing,
      namespace = Prelude.Nothing,
      accountCustomization = Prelude.Nothing,
      status = pStatus_
    }

-- | The ID for the Amazon Web Services account that you want to update
-- Amazon QuickSight customizations for.
updateAccountCustomizationResponse_awsAccountId :: Lens.Lens' UpdateAccountCustomizationResponse (Prelude.Maybe Prelude.Text)
updateAccountCustomizationResponse_awsAccountId = Lens.lens (\UpdateAccountCustomizationResponse' {awsAccountId} -> awsAccountId) (\s@UpdateAccountCustomizationResponse' {} a -> s {awsAccountId = a} :: UpdateAccountCustomizationResponse)

-- | The Amazon Web Services request ID for this operation.
updateAccountCustomizationResponse_requestId :: Lens.Lens' UpdateAccountCustomizationResponse (Prelude.Maybe Prelude.Text)
updateAccountCustomizationResponse_requestId = Lens.lens (\UpdateAccountCustomizationResponse' {requestId} -> requestId) (\s@UpdateAccountCustomizationResponse' {} a -> s {requestId = a} :: UpdateAccountCustomizationResponse)

-- | The Amazon Resource Name (ARN) for the updated customization for this
-- Amazon Web Services account.
updateAccountCustomizationResponse_arn :: Lens.Lens' UpdateAccountCustomizationResponse (Prelude.Maybe Prelude.Text)
updateAccountCustomizationResponse_arn = Lens.lens (\UpdateAccountCustomizationResponse' {arn} -> arn) (\s@UpdateAccountCustomizationResponse' {} a -> s {arn = a} :: UpdateAccountCustomizationResponse)

-- | The namespace associated with the customization that you\'re updating.
updateAccountCustomizationResponse_namespace :: Lens.Lens' UpdateAccountCustomizationResponse (Prelude.Maybe Prelude.Text)
updateAccountCustomizationResponse_namespace = Lens.lens (\UpdateAccountCustomizationResponse' {namespace} -> namespace) (\s@UpdateAccountCustomizationResponse' {} a -> s {namespace = a} :: UpdateAccountCustomizationResponse)

-- | The Amazon QuickSight customizations you\'re updating in the current
-- Amazon Web Services Region.
updateAccountCustomizationResponse_accountCustomization :: Lens.Lens' UpdateAccountCustomizationResponse (Prelude.Maybe AccountCustomization)
updateAccountCustomizationResponse_accountCustomization = Lens.lens (\UpdateAccountCustomizationResponse' {accountCustomization} -> accountCustomization) (\s@UpdateAccountCustomizationResponse' {} a -> s {accountCustomization = a} :: UpdateAccountCustomizationResponse)

-- | The HTTP status of the request.
updateAccountCustomizationResponse_status :: Lens.Lens' UpdateAccountCustomizationResponse Prelude.Int
updateAccountCustomizationResponse_status = Lens.lens (\UpdateAccountCustomizationResponse' {status} -> status) (\s@UpdateAccountCustomizationResponse' {} a -> s {status = a} :: UpdateAccountCustomizationResponse)

instance
  Prelude.NFData
    UpdateAccountCustomizationResponse
  where
  rnf UpdateAccountCustomizationResponse' {..} =
    Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf namespace
      `Prelude.seq` Prelude.rnf accountCustomization
      `Prelude.seq` Prelude.rnf status
