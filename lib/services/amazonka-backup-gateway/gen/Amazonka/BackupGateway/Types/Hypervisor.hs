{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BackupGateway.Types.Hypervisor
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BackupGateway.Types.Hypervisor where

import Amazonka.BackupGateway.Types.HypervisorState
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the hypervisor\'s permissions to which the gateway will
-- connect.
--
-- A hypervisor is hardware, software, or firmware that creates and manages
-- virtual machines, and allocates resources to them.
--
-- /See:/ 'newHypervisor' smart constructor.
data Hypervisor = Hypervisor'
  { -- | The name of the hypervisor.
    name :: Prelude.Maybe Prelude.Text,
    -- | The server host of the hypervisor. This can be either an IP address or a
    -- fully-qualified domain name (FQDN).
    host :: Prelude.Maybe Prelude.Text,
    -- | The state of the hypervisor.
    state :: Prelude.Maybe HypervisorState,
    -- | The Amazon Resource Name (ARN) of the Key Management Service used to
    -- encrypt the hypervisor.
    kmsKeyArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the hypervisor.
    hypervisorArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Hypervisor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'hypervisor_name' - The name of the hypervisor.
--
-- 'host', 'hypervisor_host' - The server host of the hypervisor. This can be either an IP address or a
-- fully-qualified domain name (FQDN).
--
-- 'state', 'hypervisor_state' - The state of the hypervisor.
--
-- 'kmsKeyArn', 'hypervisor_kmsKeyArn' - The Amazon Resource Name (ARN) of the Key Management Service used to
-- encrypt the hypervisor.
--
-- 'hypervisorArn', 'hypervisor_hypervisorArn' - The Amazon Resource Name (ARN) of the hypervisor.
newHypervisor ::
  Hypervisor
newHypervisor =
  Hypervisor'
    { name = Prelude.Nothing,
      host = Prelude.Nothing,
      state = Prelude.Nothing,
      kmsKeyArn = Prelude.Nothing,
      hypervisorArn = Prelude.Nothing
    }

-- | The name of the hypervisor.
hypervisor_name :: Lens.Lens' Hypervisor (Prelude.Maybe Prelude.Text)
hypervisor_name = Lens.lens (\Hypervisor' {name} -> name) (\s@Hypervisor' {} a -> s {name = a} :: Hypervisor)

-- | The server host of the hypervisor. This can be either an IP address or a
-- fully-qualified domain name (FQDN).
hypervisor_host :: Lens.Lens' Hypervisor (Prelude.Maybe Prelude.Text)
hypervisor_host = Lens.lens (\Hypervisor' {host} -> host) (\s@Hypervisor' {} a -> s {host = a} :: Hypervisor)

-- | The state of the hypervisor.
hypervisor_state :: Lens.Lens' Hypervisor (Prelude.Maybe HypervisorState)
hypervisor_state = Lens.lens (\Hypervisor' {state} -> state) (\s@Hypervisor' {} a -> s {state = a} :: Hypervisor)

-- | The Amazon Resource Name (ARN) of the Key Management Service used to
-- encrypt the hypervisor.
hypervisor_kmsKeyArn :: Lens.Lens' Hypervisor (Prelude.Maybe Prelude.Text)
hypervisor_kmsKeyArn = Lens.lens (\Hypervisor' {kmsKeyArn} -> kmsKeyArn) (\s@Hypervisor' {} a -> s {kmsKeyArn = a} :: Hypervisor)

-- | The Amazon Resource Name (ARN) of the hypervisor.
hypervisor_hypervisorArn :: Lens.Lens' Hypervisor (Prelude.Maybe Prelude.Text)
hypervisor_hypervisorArn = Lens.lens (\Hypervisor' {hypervisorArn} -> hypervisorArn) (\s@Hypervisor' {} a -> s {hypervisorArn = a} :: Hypervisor)

instance Core.FromJSON Hypervisor where
  parseJSON =
    Core.withObject
      "Hypervisor"
      ( \x ->
          Hypervisor'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Host")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "KmsKeyArn")
            Prelude.<*> (x Core..:? "HypervisorArn")
      )

instance Prelude.Hashable Hypervisor where
  hashWithSalt _salt Hypervisor' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` host
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` kmsKeyArn
      `Prelude.hashWithSalt` hypervisorArn

instance Prelude.NFData Hypervisor where
  rnf Hypervisor' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf host
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf kmsKeyArn
      `Prelude.seq` Prelude.rnf hypervisorArn
