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
-- Module      : Amazonka.RedshiftServerLess.Types.Endpoint
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RedshiftServerLess.Types.Endpoint where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RedshiftServerLess.Types.VpcEndpoint

-- | The VPC endpoint object.
--
-- /See:/ 'newEndpoint' smart constructor.
data Endpoint = Endpoint'
  { -- | The port that Amazon Redshift Serverless listens on.
    port :: Prelude.Maybe Prelude.Int,
    -- | The DNS address of the VPC endpoint.
    address :: Prelude.Maybe Prelude.Text,
    -- | An array of @VpcEndpoint@ objects.
    vpcEndpoints :: Prelude.Maybe [VpcEndpoint]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Endpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'port', 'endpoint_port' - The port that Amazon Redshift Serverless listens on.
--
-- 'address', 'endpoint_address' - The DNS address of the VPC endpoint.
--
-- 'vpcEndpoints', 'endpoint_vpcEndpoints' - An array of @VpcEndpoint@ objects.
newEndpoint ::
  Endpoint
newEndpoint =
  Endpoint'
    { port = Prelude.Nothing,
      address = Prelude.Nothing,
      vpcEndpoints = Prelude.Nothing
    }

-- | The port that Amazon Redshift Serverless listens on.
endpoint_port :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Int)
endpoint_port = Lens.lens (\Endpoint' {port} -> port) (\s@Endpoint' {} a -> s {port = a} :: Endpoint)

-- | The DNS address of the VPC endpoint.
endpoint_address :: Lens.Lens' Endpoint (Prelude.Maybe Prelude.Text)
endpoint_address = Lens.lens (\Endpoint' {address} -> address) (\s@Endpoint' {} a -> s {address = a} :: Endpoint)

-- | An array of @VpcEndpoint@ objects.
endpoint_vpcEndpoints :: Lens.Lens' Endpoint (Prelude.Maybe [VpcEndpoint])
endpoint_vpcEndpoints = Lens.lens (\Endpoint' {vpcEndpoints} -> vpcEndpoints) (\s@Endpoint' {} a -> s {vpcEndpoints = a} :: Endpoint) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Endpoint where
  parseJSON =
    Core.withObject
      "Endpoint"
      ( \x ->
          Endpoint'
            Prelude.<$> (x Core..:? "port")
            Prelude.<*> (x Core..:? "address")
            Prelude.<*> (x Core..:? "vpcEndpoints" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Endpoint where
  hashWithSalt _salt Endpoint' {..} =
    _salt `Prelude.hashWithSalt` port
      `Prelude.hashWithSalt` address
      `Prelude.hashWithSalt` vpcEndpoints

instance Prelude.NFData Endpoint where
  rnf Endpoint' {..} =
    Prelude.rnf port
      `Prelude.seq` Prelude.rnf address
      `Prelude.seq` Prelude.rnf vpcEndpoints
