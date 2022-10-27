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
-- Module      : Amazonka.Lambda.PutProvisionedConcurrencyConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a provisioned concurrency configuration to a function\'s alias or
-- version.
module Amazonka.Lambda.PutProvisionedConcurrencyConfig
  ( -- * Creating a Request
    PutProvisionedConcurrencyConfig (..),
    newPutProvisionedConcurrencyConfig,

    -- * Request Lenses
    putProvisionedConcurrencyConfig_functionName,
    putProvisionedConcurrencyConfig_qualifier,
    putProvisionedConcurrencyConfig_provisionedConcurrentExecutions,

    -- * Destructuring the Response
    PutProvisionedConcurrencyConfigResponse (..),
    newPutProvisionedConcurrencyConfigResponse,

    -- * Response Lenses
    putProvisionedConcurrencyConfigResponse_availableProvisionedConcurrentExecutions,
    putProvisionedConcurrencyConfigResponse_statusReason,
    putProvisionedConcurrencyConfigResponse_status,
    putProvisionedConcurrencyConfigResponse_requestedProvisionedConcurrentExecutions,
    putProvisionedConcurrencyConfigResponse_lastModified,
    putProvisionedConcurrencyConfigResponse_allocatedProvisionedConcurrentExecutions,
    putProvisionedConcurrencyConfigResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Lambda.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutProvisionedConcurrencyConfig' smart constructor.
data PutProvisionedConcurrencyConfig = PutProvisionedConcurrencyConfig'
  { -- | The name of the Lambda function.
    --
    -- __Name formats__
    --
    -- -   __Function name__ - @my-function@.
    --
    -- -   __Function ARN__ -
    --     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
    --
    -- -   __Partial ARN__ - @123456789012:function:my-function@.
    --
    -- The length constraint applies only to the full ARN. If you specify only
    -- the function name, it is limited to 64 characters in length.
    functionName :: Prelude.Text,
    -- | The version number or alias name.
    qualifier :: Prelude.Text,
    -- | The amount of provisioned concurrency to allocate for the version or
    -- alias.
    provisionedConcurrentExecutions :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutProvisionedConcurrencyConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'functionName', 'putProvisionedConcurrencyConfig_functionName' - The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @my-function@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
--
-- -   __Partial ARN__ - @123456789012:function:my-function@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
--
-- 'qualifier', 'putProvisionedConcurrencyConfig_qualifier' - The version number or alias name.
--
-- 'provisionedConcurrentExecutions', 'putProvisionedConcurrencyConfig_provisionedConcurrentExecutions' - The amount of provisioned concurrency to allocate for the version or
-- alias.
newPutProvisionedConcurrencyConfig ::
  -- | 'functionName'
  Prelude.Text ->
  -- | 'qualifier'
  Prelude.Text ->
  -- | 'provisionedConcurrentExecutions'
  Prelude.Natural ->
  PutProvisionedConcurrencyConfig
newPutProvisionedConcurrencyConfig
  pFunctionName_
  pQualifier_
  pProvisionedConcurrentExecutions_ =
    PutProvisionedConcurrencyConfig'
      { functionName =
          pFunctionName_,
        qualifier = pQualifier_,
        provisionedConcurrentExecutions =
          pProvisionedConcurrentExecutions_
      }

-- | The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @my-function@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
--
-- -   __Partial ARN__ - @123456789012:function:my-function@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
putProvisionedConcurrencyConfig_functionName :: Lens.Lens' PutProvisionedConcurrencyConfig Prelude.Text
putProvisionedConcurrencyConfig_functionName = Lens.lens (\PutProvisionedConcurrencyConfig' {functionName} -> functionName) (\s@PutProvisionedConcurrencyConfig' {} a -> s {functionName = a} :: PutProvisionedConcurrencyConfig)

-- | The version number or alias name.
putProvisionedConcurrencyConfig_qualifier :: Lens.Lens' PutProvisionedConcurrencyConfig Prelude.Text
putProvisionedConcurrencyConfig_qualifier = Lens.lens (\PutProvisionedConcurrencyConfig' {qualifier} -> qualifier) (\s@PutProvisionedConcurrencyConfig' {} a -> s {qualifier = a} :: PutProvisionedConcurrencyConfig)

-- | The amount of provisioned concurrency to allocate for the version or
-- alias.
putProvisionedConcurrencyConfig_provisionedConcurrentExecutions :: Lens.Lens' PutProvisionedConcurrencyConfig Prelude.Natural
putProvisionedConcurrencyConfig_provisionedConcurrentExecutions = Lens.lens (\PutProvisionedConcurrencyConfig' {provisionedConcurrentExecutions} -> provisionedConcurrentExecutions) (\s@PutProvisionedConcurrencyConfig' {} a -> s {provisionedConcurrentExecutions = a} :: PutProvisionedConcurrencyConfig)

instance
  Core.AWSRequest
    PutProvisionedConcurrencyConfig
  where
  type
    AWSResponse PutProvisionedConcurrencyConfig =
      PutProvisionedConcurrencyConfigResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          PutProvisionedConcurrencyConfigResponse'
            Prelude.<$> ( x
                            Core..?> "AvailableProvisionedConcurrentExecutions"
                        )
            Prelude.<*> (x Core..?> "StatusReason")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> ( x
                            Core..?> "RequestedProvisionedConcurrentExecutions"
                        )
            Prelude.<*> (x Core..?> "LastModified")
            Prelude.<*> ( x
                            Core..?> "AllocatedProvisionedConcurrentExecutions"
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    PutProvisionedConcurrencyConfig
  where
  hashWithSalt
    _salt
    PutProvisionedConcurrencyConfig' {..} =
      _salt `Prelude.hashWithSalt` functionName
        `Prelude.hashWithSalt` qualifier
        `Prelude.hashWithSalt` provisionedConcurrentExecutions

instance
  Prelude.NFData
    PutProvisionedConcurrencyConfig
  where
  rnf PutProvisionedConcurrencyConfig' {..} =
    Prelude.rnf functionName
      `Prelude.seq` Prelude.rnf qualifier
      `Prelude.seq` Prelude.rnf provisionedConcurrentExecutions

instance
  Core.ToHeaders
    PutProvisionedConcurrencyConfig
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON PutProvisionedConcurrencyConfig where
  toJSON PutProvisionedConcurrencyConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ProvisionedConcurrentExecutions"
                  Core..= provisionedConcurrentExecutions
              )
          ]
      )

instance Core.ToPath PutProvisionedConcurrencyConfig where
  toPath PutProvisionedConcurrencyConfig' {..} =
    Prelude.mconcat
      [ "/2019-09-30/functions/",
        Core.toBS functionName,
        "/provisioned-concurrency"
      ]

instance Core.ToQuery PutProvisionedConcurrencyConfig where
  toQuery PutProvisionedConcurrencyConfig' {..} =
    Prelude.mconcat ["Qualifier" Core.=: qualifier]

-- | /See:/ 'newPutProvisionedConcurrencyConfigResponse' smart constructor.
data PutProvisionedConcurrencyConfigResponse = PutProvisionedConcurrencyConfigResponse'
  { -- | The amount of provisioned concurrency available.
    availableProvisionedConcurrentExecutions :: Prelude.Maybe Prelude.Natural,
    -- | For failed allocations, the reason that provisioned concurrency could
    -- not be allocated.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The status of the allocation process.
    status :: Prelude.Maybe ProvisionedConcurrencyStatusEnum,
    -- | The amount of provisioned concurrency requested.
    requestedProvisionedConcurrentExecutions :: Prelude.Maybe Prelude.Natural,
    -- | The date and time that a user last updated the configuration, in
    -- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601 format>.
    lastModified :: Prelude.Maybe Prelude.Text,
    -- | The amount of provisioned concurrency allocated.
    allocatedProvisionedConcurrentExecutions :: Prelude.Maybe Prelude.Natural,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutProvisionedConcurrencyConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'availableProvisionedConcurrentExecutions', 'putProvisionedConcurrencyConfigResponse_availableProvisionedConcurrentExecutions' - The amount of provisioned concurrency available.
--
-- 'statusReason', 'putProvisionedConcurrencyConfigResponse_statusReason' - For failed allocations, the reason that provisioned concurrency could
-- not be allocated.
--
-- 'status', 'putProvisionedConcurrencyConfigResponse_status' - The status of the allocation process.
--
-- 'requestedProvisionedConcurrentExecutions', 'putProvisionedConcurrencyConfigResponse_requestedProvisionedConcurrentExecutions' - The amount of provisioned concurrency requested.
--
-- 'lastModified', 'putProvisionedConcurrencyConfigResponse_lastModified' - The date and time that a user last updated the configuration, in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601 format>.
--
-- 'allocatedProvisionedConcurrentExecutions', 'putProvisionedConcurrencyConfigResponse_allocatedProvisionedConcurrentExecutions' - The amount of provisioned concurrency allocated.
--
-- 'httpStatus', 'putProvisionedConcurrencyConfigResponse_httpStatus' - The response's http status code.
newPutProvisionedConcurrencyConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutProvisionedConcurrencyConfigResponse
newPutProvisionedConcurrencyConfigResponse
  pHttpStatus_ =
    PutProvisionedConcurrencyConfigResponse'
      { availableProvisionedConcurrentExecutions =
          Prelude.Nothing,
        statusReason = Prelude.Nothing,
        status = Prelude.Nothing,
        requestedProvisionedConcurrentExecutions =
          Prelude.Nothing,
        lastModified = Prelude.Nothing,
        allocatedProvisionedConcurrentExecutions =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The amount of provisioned concurrency available.
putProvisionedConcurrencyConfigResponse_availableProvisionedConcurrentExecutions :: Lens.Lens' PutProvisionedConcurrencyConfigResponse (Prelude.Maybe Prelude.Natural)
putProvisionedConcurrencyConfigResponse_availableProvisionedConcurrentExecutions = Lens.lens (\PutProvisionedConcurrencyConfigResponse' {availableProvisionedConcurrentExecutions} -> availableProvisionedConcurrentExecutions) (\s@PutProvisionedConcurrencyConfigResponse' {} a -> s {availableProvisionedConcurrentExecutions = a} :: PutProvisionedConcurrencyConfigResponse)

-- | For failed allocations, the reason that provisioned concurrency could
-- not be allocated.
putProvisionedConcurrencyConfigResponse_statusReason :: Lens.Lens' PutProvisionedConcurrencyConfigResponse (Prelude.Maybe Prelude.Text)
putProvisionedConcurrencyConfigResponse_statusReason = Lens.lens (\PutProvisionedConcurrencyConfigResponse' {statusReason} -> statusReason) (\s@PutProvisionedConcurrencyConfigResponse' {} a -> s {statusReason = a} :: PutProvisionedConcurrencyConfigResponse)

-- | The status of the allocation process.
putProvisionedConcurrencyConfigResponse_status :: Lens.Lens' PutProvisionedConcurrencyConfigResponse (Prelude.Maybe ProvisionedConcurrencyStatusEnum)
putProvisionedConcurrencyConfigResponse_status = Lens.lens (\PutProvisionedConcurrencyConfigResponse' {status} -> status) (\s@PutProvisionedConcurrencyConfigResponse' {} a -> s {status = a} :: PutProvisionedConcurrencyConfigResponse)

-- | The amount of provisioned concurrency requested.
putProvisionedConcurrencyConfigResponse_requestedProvisionedConcurrentExecutions :: Lens.Lens' PutProvisionedConcurrencyConfigResponse (Prelude.Maybe Prelude.Natural)
putProvisionedConcurrencyConfigResponse_requestedProvisionedConcurrentExecutions = Lens.lens (\PutProvisionedConcurrencyConfigResponse' {requestedProvisionedConcurrentExecutions} -> requestedProvisionedConcurrentExecutions) (\s@PutProvisionedConcurrencyConfigResponse' {} a -> s {requestedProvisionedConcurrentExecutions = a} :: PutProvisionedConcurrencyConfigResponse)

-- | The date and time that a user last updated the configuration, in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601 format>.
putProvisionedConcurrencyConfigResponse_lastModified :: Lens.Lens' PutProvisionedConcurrencyConfigResponse (Prelude.Maybe Prelude.Text)
putProvisionedConcurrencyConfigResponse_lastModified = Lens.lens (\PutProvisionedConcurrencyConfigResponse' {lastModified} -> lastModified) (\s@PutProvisionedConcurrencyConfigResponse' {} a -> s {lastModified = a} :: PutProvisionedConcurrencyConfigResponse)

-- | The amount of provisioned concurrency allocated.
putProvisionedConcurrencyConfigResponse_allocatedProvisionedConcurrentExecutions :: Lens.Lens' PutProvisionedConcurrencyConfigResponse (Prelude.Maybe Prelude.Natural)
putProvisionedConcurrencyConfigResponse_allocatedProvisionedConcurrentExecutions = Lens.lens (\PutProvisionedConcurrencyConfigResponse' {allocatedProvisionedConcurrentExecutions} -> allocatedProvisionedConcurrentExecutions) (\s@PutProvisionedConcurrencyConfigResponse' {} a -> s {allocatedProvisionedConcurrentExecutions = a} :: PutProvisionedConcurrencyConfigResponse)

-- | The response's http status code.
putProvisionedConcurrencyConfigResponse_httpStatus :: Lens.Lens' PutProvisionedConcurrencyConfigResponse Prelude.Int
putProvisionedConcurrencyConfigResponse_httpStatus = Lens.lens (\PutProvisionedConcurrencyConfigResponse' {httpStatus} -> httpStatus) (\s@PutProvisionedConcurrencyConfigResponse' {} a -> s {httpStatus = a} :: PutProvisionedConcurrencyConfigResponse)

instance
  Prelude.NFData
    PutProvisionedConcurrencyConfigResponse
  where
  rnf PutProvisionedConcurrencyConfigResponse' {..} =
    Prelude.rnf
      availableProvisionedConcurrentExecutions
      `Prelude.seq` Prelude.rnf statusReason
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf requestedProvisionedConcurrentExecutions
      `Prelude.seq` Prelude.rnf lastModified
      `Prelude.seq` Prelude.rnf allocatedProvisionedConcurrentExecutions
      `Prelude.seq` Prelude.rnf httpStatus
