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
-- Module      : Amazonka.Config.GetCustomRulePolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the policy definition containing the logic for your Config
-- Custom Policy rule.
module Amazonka.Config.GetCustomRulePolicy
  ( -- * Creating a Request
    GetCustomRulePolicy (..),
    newGetCustomRulePolicy,

    -- * Request Lenses
    getCustomRulePolicy_configRuleName,

    -- * Destructuring the Response
    GetCustomRulePolicyResponse (..),
    newGetCustomRulePolicyResponse,

    -- * Response Lenses
    getCustomRulePolicyResponse_policyText,
    getCustomRulePolicyResponse_httpStatus,
  )
where

import Amazonka.Config.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetCustomRulePolicy' smart constructor.
data GetCustomRulePolicy = GetCustomRulePolicy'
  { -- | The name of your Config Custom Policy rule.
    configRuleName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCustomRulePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configRuleName', 'getCustomRulePolicy_configRuleName' - The name of your Config Custom Policy rule.
newGetCustomRulePolicy ::
  GetCustomRulePolicy
newGetCustomRulePolicy =
  GetCustomRulePolicy'
    { configRuleName =
        Prelude.Nothing
    }

-- | The name of your Config Custom Policy rule.
getCustomRulePolicy_configRuleName :: Lens.Lens' GetCustomRulePolicy (Prelude.Maybe Prelude.Text)
getCustomRulePolicy_configRuleName = Lens.lens (\GetCustomRulePolicy' {configRuleName} -> configRuleName) (\s@GetCustomRulePolicy' {} a -> s {configRuleName = a} :: GetCustomRulePolicy)

instance Core.AWSRequest GetCustomRulePolicy where
  type
    AWSResponse GetCustomRulePolicy =
      GetCustomRulePolicyResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCustomRulePolicyResponse'
            Prelude.<$> (x Core..?> "PolicyText")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService GetCustomRulePolicy where
  service _proxy = defaultService

instance Prelude.Hashable GetCustomRulePolicy where
  hashWithSalt _salt GetCustomRulePolicy' {..} =
    _salt `Prelude.hashWithSalt` configRuleName

instance Prelude.NFData GetCustomRulePolicy where
  rnf GetCustomRulePolicy' {..} =
    Prelude.rnf configRuleName

instance Core.ToHeaders GetCustomRulePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.GetCustomRulePolicy" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetCustomRulePolicy where
  toJSON GetCustomRulePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ConfigRuleName" Core..=)
              Prelude.<$> configRuleName
          ]
      )

instance Core.ToPath GetCustomRulePolicy where
  toPath = Prelude.const "/"

instance Core.ToQuery GetCustomRulePolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetCustomRulePolicyResponse' smart constructor.
data GetCustomRulePolicyResponse = GetCustomRulePolicyResponse'
  { -- | The policy definition containing the logic for your Config Custom Policy
    -- rule.
    policyText :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCustomRulePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyText', 'getCustomRulePolicyResponse_policyText' - The policy definition containing the logic for your Config Custom Policy
-- rule.
--
-- 'httpStatus', 'getCustomRulePolicyResponse_httpStatus' - The response's http status code.
newGetCustomRulePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetCustomRulePolicyResponse
newGetCustomRulePolicyResponse pHttpStatus_ =
  GetCustomRulePolicyResponse'
    { policyText =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The policy definition containing the logic for your Config Custom Policy
-- rule.
getCustomRulePolicyResponse_policyText :: Lens.Lens' GetCustomRulePolicyResponse (Prelude.Maybe Prelude.Text)
getCustomRulePolicyResponse_policyText = Lens.lens (\GetCustomRulePolicyResponse' {policyText} -> policyText) (\s@GetCustomRulePolicyResponse' {} a -> s {policyText = a} :: GetCustomRulePolicyResponse)

-- | The response's http status code.
getCustomRulePolicyResponse_httpStatus :: Lens.Lens' GetCustomRulePolicyResponse Prelude.Int
getCustomRulePolicyResponse_httpStatus = Lens.lens (\GetCustomRulePolicyResponse' {httpStatus} -> httpStatus) (\s@GetCustomRulePolicyResponse' {} a -> s {httpStatus = a} :: GetCustomRulePolicyResponse)

instance Prelude.NFData GetCustomRulePolicyResponse where
  rnf GetCustomRulePolicyResponse' {..} =
    Prelude.rnf policyText
      `Prelude.seq` Prelude.rnf httpStatus
