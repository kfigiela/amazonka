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
-- Module      : Amazonka.SSMContacts.GetContactPolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the resource policies attached to the specified contact or
-- escalation plan.
module Amazonka.SSMContacts.GetContactPolicy
  ( -- * Creating a Request
    GetContactPolicy (..),
    newGetContactPolicy,

    -- * Request Lenses
    getContactPolicy_contactArn,

    -- * Destructuring the Response
    GetContactPolicyResponse (..),
    newGetContactPolicyResponse,

    -- * Response Lenses
    getContactPolicyResponse_policy,
    getContactPolicyResponse_contactArn,
    getContactPolicyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSMContacts.Types

-- | /See:/ 'newGetContactPolicy' smart constructor.
data GetContactPolicy = GetContactPolicy'
  { -- | The Amazon Resource Name (ARN) of the contact or escalation plan.
    contactArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContactPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactArn', 'getContactPolicy_contactArn' - The Amazon Resource Name (ARN) of the contact or escalation plan.
newGetContactPolicy ::
  -- | 'contactArn'
  Prelude.Text ->
  GetContactPolicy
newGetContactPolicy pContactArn_ =
  GetContactPolicy' {contactArn = pContactArn_}

-- | The Amazon Resource Name (ARN) of the contact or escalation plan.
getContactPolicy_contactArn :: Lens.Lens' GetContactPolicy Prelude.Text
getContactPolicy_contactArn = Lens.lens (\GetContactPolicy' {contactArn} -> contactArn) (\s@GetContactPolicy' {} a -> s {contactArn = a} :: GetContactPolicy)

instance Core.AWSRequest GetContactPolicy where
  type
    AWSResponse GetContactPolicy =
      GetContactPolicyResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetContactPolicyResponse'
            Prelude.<$> (x Core..?> "Policy")
            Prelude.<*> (x Core..?> "ContactArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetContactPolicy where
  hashWithSalt _salt GetContactPolicy' {..} =
    _salt `Prelude.hashWithSalt` contactArn

instance Prelude.NFData GetContactPolicy where
  rnf GetContactPolicy' {..} = Prelude.rnf contactArn

instance Core.ToHeaders GetContactPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SSMContacts.GetContactPolicy" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetContactPolicy where
  toJSON GetContactPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ContactArn" Core..= contactArn)]
      )

instance Core.ToPath GetContactPolicy where
  toPath = Prelude.const "/"

instance Core.ToQuery GetContactPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetContactPolicyResponse' smart constructor.
data GetContactPolicyResponse = GetContactPolicyResponse'
  { -- | Details about the resource policy attached to the contact or escalation
    -- plan.
    policy :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the contact or escalation plan.
    contactArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContactPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policy', 'getContactPolicyResponse_policy' - Details about the resource policy attached to the contact or escalation
-- plan.
--
-- 'contactArn', 'getContactPolicyResponse_contactArn' - The ARN of the contact or escalation plan.
--
-- 'httpStatus', 'getContactPolicyResponse_httpStatus' - The response's http status code.
newGetContactPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetContactPolicyResponse
newGetContactPolicyResponse pHttpStatus_ =
  GetContactPolicyResponse'
    { policy = Prelude.Nothing,
      contactArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Details about the resource policy attached to the contact or escalation
-- plan.
getContactPolicyResponse_policy :: Lens.Lens' GetContactPolicyResponse (Prelude.Maybe Prelude.Text)
getContactPolicyResponse_policy = Lens.lens (\GetContactPolicyResponse' {policy} -> policy) (\s@GetContactPolicyResponse' {} a -> s {policy = a} :: GetContactPolicyResponse)

-- | The ARN of the contact or escalation plan.
getContactPolicyResponse_contactArn :: Lens.Lens' GetContactPolicyResponse (Prelude.Maybe Prelude.Text)
getContactPolicyResponse_contactArn = Lens.lens (\GetContactPolicyResponse' {contactArn} -> contactArn) (\s@GetContactPolicyResponse' {} a -> s {contactArn = a} :: GetContactPolicyResponse)

-- | The response's http status code.
getContactPolicyResponse_httpStatus :: Lens.Lens' GetContactPolicyResponse Prelude.Int
getContactPolicyResponse_httpStatus = Lens.lens (\GetContactPolicyResponse' {httpStatus} -> httpStatus) (\s@GetContactPolicyResponse' {} a -> s {httpStatus = a} :: GetContactPolicyResponse)

instance Prelude.NFData GetContactPolicyResponse where
  rnf GetContactPolicyResponse' {..} =
    Prelude.rnf policy
      `Prelude.seq` Prelude.rnf contactArn
      `Prelude.seq` Prelude.rnf httpStatus
