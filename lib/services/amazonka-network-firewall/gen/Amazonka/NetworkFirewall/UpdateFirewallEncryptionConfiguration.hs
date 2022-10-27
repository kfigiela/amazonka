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
-- Module      : Amazonka.NetworkFirewall.UpdateFirewallEncryptionConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A complex type that contains settings for encryption of your firewall
-- resources.
module Amazonka.NetworkFirewall.UpdateFirewallEncryptionConfiguration
  ( -- * Creating a Request
    UpdateFirewallEncryptionConfiguration (..),
    newUpdateFirewallEncryptionConfiguration,

    -- * Request Lenses
    updateFirewallEncryptionConfiguration_updateToken,
    updateFirewallEncryptionConfiguration_firewallArn,
    updateFirewallEncryptionConfiguration_encryptionConfiguration,
    updateFirewallEncryptionConfiguration_firewallName,

    -- * Destructuring the Response
    UpdateFirewallEncryptionConfigurationResponse (..),
    newUpdateFirewallEncryptionConfigurationResponse,

    -- * Response Lenses
    updateFirewallEncryptionConfigurationResponse_updateToken,
    updateFirewallEncryptionConfigurationResponse_firewallArn,
    updateFirewallEncryptionConfigurationResponse_encryptionConfiguration,
    updateFirewallEncryptionConfigurationResponse_firewallName,
    updateFirewallEncryptionConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkFirewall.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateFirewallEncryptionConfiguration' smart constructor.
data UpdateFirewallEncryptionConfiguration = UpdateFirewallEncryptionConfiguration'
  { -- | An optional token that you can use for optimistic locking. Network
    -- Firewall returns a token to your requests that access the firewall. The
    -- token marks the state of the firewall resource at the time of the
    -- request.
    --
    -- To make an unconditional change to the firewall, omit the token in your
    -- update request. Without the token, Network Firewall performs your
    -- updates regardless of whether the firewall has changed since you last
    -- retrieved it.
    --
    -- To make a conditional change to the firewall, provide the token in your
    -- update request. Network Firewall uses the token to ensure that the
    -- firewall hasn\'t changed since you last retrieved it. If it has changed,
    -- the operation fails with an @InvalidTokenException@. If this happens,
    -- retrieve the firewall again to get a current copy of it with a new
    -- token. Reapply your changes as needed, then try the operation again
    -- using the new token.
    updateToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the firewall.
    firewallArn :: Prelude.Maybe Prelude.Text,
    encryptionConfiguration :: Prelude.Maybe EncryptionConfiguration,
    -- | The descriptive name of the firewall. You can\'t change the name of a
    -- firewall after you create it.
    firewallName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallEncryptionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'updateToken', 'updateFirewallEncryptionConfiguration_updateToken' - An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
--
-- 'firewallArn', 'updateFirewallEncryptionConfiguration_firewallArn' - The Amazon Resource Name (ARN) of the firewall.
--
-- 'encryptionConfiguration', 'updateFirewallEncryptionConfiguration_encryptionConfiguration' - Undocumented member.
--
-- 'firewallName', 'updateFirewallEncryptionConfiguration_firewallName' - The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
newUpdateFirewallEncryptionConfiguration ::
  UpdateFirewallEncryptionConfiguration
newUpdateFirewallEncryptionConfiguration =
  UpdateFirewallEncryptionConfiguration'
    { updateToken =
        Prelude.Nothing,
      firewallArn = Prelude.Nothing,
      encryptionConfiguration =
        Prelude.Nothing,
      firewallName = Prelude.Nothing
    }

-- | An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
updateFirewallEncryptionConfiguration_updateToken :: Lens.Lens' UpdateFirewallEncryptionConfiguration (Prelude.Maybe Prelude.Text)
updateFirewallEncryptionConfiguration_updateToken = Lens.lens (\UpdateFirewallEncryptionConfiguration' {updateToken} -> updateToken) (\s@UpdateFirewallEncryptionConfiguration' {} a -> s {updateToken = a} :: UpdateFirewallEncryptionConfiguration)

-- | The Amazon Resource Name (ARN) of the firewall.
updateFirewallEncryptionConfiguration_firewallArn :: Lens.Lens' UpdateFirewallEncryptionConfiguration (Prelude.Maybe Prelude.Text)
updateFirewallEncryptionConfiguration_firewallArn = Lens.lens (\UpdateFirewallEncryptionConfiguration' {firewallArn} -> firewallArn) (\s@UpdateFirewallEncryptionConfiguration' {} a -> s {firewallArn = a} :: UpdateFirewallEncryptionConfiguration)

-- | Undocumented member.
updateFirewallEncryptionConfiguration_encryptionConfiguration :: Lens.Lens' UpdateFirewallEncryptionConfiguration (Prelude.Maybe EncryptionConfiguration)
updateFirewallEncryptionConfiguration_encryptionConfiguration = Lens.lens (\UpdateFirewallEncryptionConfiguration' {encryptionConfiguration} -> encryptionConfiguration) (\s@UpdateFirewallEncryptionConfiguration' {} a -> s {encryptionConfiguration = a} :: UpdateFirewallEncryptionConfiguration)

-- | The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
updateFirewallEncryptionConfiguration_firewallName :: Lens.Lens' UpdateFirewallEncryptionConfiguration (Prelude.Maybe Prelude.Text)
updateFirewallEncryptionConfiguration_firewallName = Lens.lens (\UpdateFirewallEncryptionConfiguration' {firewallName} -> firewallName) (\s@UpdateFirewallEncryptionConfiguration' {} a -> s {firewallName = a} :: UpdateFirewallEncryptionConfiguration)

instance
  Core.AWSRequest
    UpdateFirewallEncryptionConfiguration
  where
  type
    AWSResponse
      UpdateFirewallEncryptionConfiguration =
      UpdateFirewallEncryptionConfigurationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFirewallEncryptionConfigurationResponse'
            Prelude.<$> (x Core..?> "UpdateToken")
              Prelude.<*> (x Core..?> "FirewallArn")
              Prelude.<*> (x Core..?> "EncryptionConfiguration")
              Prelude.<*> (x Core..?> "FirewallName")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateFirewallEncryptionConfiguration
  where
  hashWithSalt
    _salt
    UpdateFirewallEncryptionConfiguration' {..} =
      _salt `Prelude.hashWithSalt` updateToken
        `Prelude.hashWithSalt` firewallArn
        `Prelude.hashWithSalt` encryptionConfiguration
        `Prelude.hashWithSalt` firewallName

instance
  Prelude.NFData
    UpdateFirewallEncryptionConfiguration
  where
  rnf UpdateFirewallEncryptionConfiguration' {..} =
    Prelude.rnf updateToken
      `Prelude.seq` Prelude.rnf firewallArn
      `Prelude.seq` Prelude.rnf encryptionConfiguration
      `Prelude.seq` Prelude.rnf firewallName

instance
  Core.ToHeaders
    UpdateFirewallEncryptionConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "NetworkFirewall_20201112.UpdateFirewallEncryptionConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    UpdateFirewallEncryptionConfiguration
  where
  toJSON UpdateFirewallEncryptionConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("UpdateToken" Core..=) Prelude.<$> updateToken,
            ("FirewallArn" Core..=) Prelude.<$> firewallArn,
            ("EncryptionConfiguration" Core..=)
              Prelude.<$> encryptionConfiguration,
            ("FirewallName" Core..=) Prelude.<$> firewallName
          ]
      )

instance
  Core.ToPath
    UpdateFirewallEncryptionConfiguration
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    UpdateFirewallEncryptionConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFirewallEncryptionConfigurationResponse' smart constructor.
data UpdateFirewallEncryptionConfigurationResponse = UpdateFirewallEncryptionConfigurationResponse'
  { -- | An optional token that you can use for optimistic locking. Network
    -- Firewall returns a token to your requests that access the firewall. The
    -- token marks the state of the firewall resource at the time of the
    -- request.
    --
    -- To make an unconditional change to the firewall, omit the token in your
    -- update request. Without the token, Network Firewall performs your
    -- updates regardless of whether the firewall has changed since you last
    -- retrieved it.
    --
    -- To make a conditional change to the firewall, provide the token in your
    -- update request. Network Firewall uses the token to ensure that the
    -- firewall hasn\'t changed since you last retrieved it. If it has changed,
    -- the operation fails with an @InvalidTokenException@. If this happens,
    -- retrieve the firewall again to get a current copy of it with a new
    -- token. Reapply your changes as needed, then try the operation again
    -- using the new token.
    updateToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the firewall.
    firewallArn :: Prelude.Maybe Prelude.Text,
    encryptionConfiguration :: Prelude.Maybe EncryptionConfiguration,
    -- | The descriptive name of the firewall. You can\'t change the name of a
    -- firewall after you create it.
    firewallName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallEncryptionConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'updateToken', 'updateFirewallEncryptionConfigurationResponse_updateToken' - An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
--
-- 'firewallArn', 'updateFirewallEncryptionConfigurationResponse_firewallArn' - The Amazon Resource Name (ARN) of the firewall.
--
-- 'encryptionConfiguration', 'updateFirewallEncryptionConfigurationResponse_encryptionConfiguration' - Undocumented member.
--
-- 'firewallName', 'updateFirewallEncryptionConfigurationResponse_firewallName' - The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
--
-- 'httpStatus', 'updateFirewallEncryptionConfigurationResponse_httpStatus' - The response's http status code.
newUpdateFirewallEncryptionConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFirewallEncryptionConfigurationResponse
newUpdateFirewallEncryptionConfigurationResponse
  pHttpStatus_ =
    UpdateFirewallEncryptionConfigurationResponse'
      { updateToken =
          Prelude.Nothing,
        firewallArn =
          Prelude.Nothing,
        encryptionConfiguration =
          Prelude.Nothing,
        firewallName =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
updateFirewallEncryptionConfigurationResponse_updateToken :: Lens.Lens' UpdateFirewallEncryptionConfigurationResponse (Prelude.Maybe Prelude.Text)
updateFirewallEncryptionConfigurationResponse_updateToken = Lens.lens (\UpdateFirewallEncryptionConfigurationResponse' {updateToken} -> updateToken) (\s@UpdateFirewallEncryptionConfigurationResponse' {} a -> s {updateToken = a} :: UpdateFirewallEncryptionConfigurationResponse)

-- | The Amazon Resource Name (ARN) of the firewall.
updateFirewallEncryptionConfigurationResponse_firewallArn :: Lens.Lens' UpdateFirewallEncryptionConfigurationResponse (Prelude.Maybe Prelude.Text)
updateFirewallEncryptionConfigurationResponse_firewallArn = Lens.lens (\UpdateFirewallEncryptionConfigurationResponse' {firewallArn} -> firewallArn) (\s@UpdateFirewallEncryptionConfigurationResponse' {} a -> s {firewallArn = a} :: UpdateFirewallEncryptionConfigurationResponse)

-- | Undocumented member.
updateFirewallEncryptionConfigurationResponse_encryptionConfiguration :: Lens.Lens' UpdateFirewallEncryptionConfigurationResponse (Prelude.Maybe EncryptionConfiguration)
updateFirewallEncryptionConfigurationResponse_encryptionConfiguration = Lens.lens (\UpdateFirewallEncryptionConfigurationResponse' {encryptionConfiguration} -> encryptionConfiguration) (\s@UpdateFirewallEncryptionConfigurationResponse' {} a -> s {encryptionConfiguration = a} :: UpdateFirewallEncryptionConfigurationResponse)

-- | The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
updateFirewallEncryptionConfigurationResponse_firewallName :: Lens.Lens' UpdateFirewallEncryptionConfigurationResponse (Prelude.Maybe Prelude.Text)
updateFirewallEncryptionConfigurationResponse_firewallName = Lens.lens (\UpdateFirewallEncryptionConfigurationResponse' {firewallName} -> firewallName) (\s@UpdateFirewallEncryptionConfigurationResponse' {} a -> s {firewallName = a} :: UpdateFirewallEncryptionConfigurationResponse)

-- | The response's http status code.
updateFirewallEncryptionConfigurationResponse_httpStatus :: Lens.Lens' UpdateFirewallEncryptionConfigurationResponse Prelude.Int
updateFirewallEncryptionConfigurationResponse_httpStatus = Lens.lens (\UpdateFirewallEncryptionConfigurationResponse' {httpStatus} -> httpStatus) (\s@UpdateFirewallEncryptionConfigurationResponse' {} a -> s {httpStatus = a} :: UpdateFirewallEncryptionConfigurationResponse)

instance
  Prelude.NFData
    UpdateFirewallEncryptionConfigurationResponse
  where
  rnf
    UpdateFirewallEncryptionConfigurationResponse' {..} =
      Prelude.rnf updateToken
        `Prelude.seq` Prelude.rnf firewallArn
        `Prelude.seq` Prelude.rnf encryptionConfiguration
        `Prelude.seq` Prelude.rnf firewallName
        `Prelude.seq` Prelude.rnf httpStatus
