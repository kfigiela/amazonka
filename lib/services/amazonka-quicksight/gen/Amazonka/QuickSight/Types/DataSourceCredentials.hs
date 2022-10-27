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
-- Module      : Amazonka.QuickSight.Types.DataSourceCredentials
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.DataSourceCredentials where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types.CredentialPair

-- | Data source credentials. This is a variant type structure. For this
-- structure to be valid, only one of the attributes can be non-null.
--
-- /See:/ 'newDataSourceCredentials' smart constructor.
data DataSourceCredentials = DataSourceCredentials'
  { -- | The Amazon Resource Name (ARN) of the secret associated with the data
    -- source in Amazon Secrets Manager.
    secretArn :: Prelude.Maybe Prelude.Text,
    -- | Credential pair. For more information, see @ CredentialPair @.
    credentialPair :: Prelude.Maybe CredentialPair,
    -- | The Amazon Resource Name (ARN) of a data source that has the credential
    -- pair that you want to use. When @CopySourceArn@ is not null, the
    -- credential pair from the data source in the ARN is used as the
    -- credentials for the @DataSourceCredentials@ structure.
    copySourceArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataSourceCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'secretArn', 'dataSourceCredentials_secretArn' - The Amazon Resource Name (ARN) of the secret associated with the data
-- source in Amazon Secrets Manager.
--
-- 'credentialPair', 'dataSourceCredentials_credentialPair' - Credential pair. For more information, see @ CredentialPair @.
--
-- 'copySourceArn', 'dataSourceCredentials_copySourceArn' - The Amazon Resource Name (ARN) of a data source that has the credential
-- pair that you want to use. When @CopySourceArn@ is not null, the
-- credential pair from the data source in the ARN is used as the
-- credentials for the @DataSourceCredentials@ structure.
newDataSourceCredentials ::
  DataSourceCredentials
newDataSourceCredentials =
  DataSourceCredentials'
    { secretArn = Prelude.Nothing,
      credentialPair = Prelude.Nothing,
      copySourceArn = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the secret associated with the data
-- source in Amazon Secrets Manager.
dataSourceCredentials_secretArn :: Lens.Lens' DataSourceCredentials (Prelude.Maybe Prelude.Text)
dataSourceCredentials_secretArn = Lens.lens (\DataSourceCredentials' {secretArn} -> secretArn) (\s@DataSourceCredentials' {} a -> s {secretArn = a} :: DataSourceCredentials)

-- | Credential pair. For more information, see @ CredentialPair @.
dataSourceCredentials_credentialPair :: Lens.Lens' DataSourceCredentials (Prelude.Maybe CredentialPair)
dataSourceCredentials_credentialPair = Lens.lens (\DataSourceCredentials' {credentialPair} -> credentialPair) (\s@DataSourceCredentials' {} a -> s {credentialPair = a} :: DataSourceCredentials)

-- | The Amazon Resource Name (ARN) of a data source that has the credential
-- pair that you want to use. When @CopySourceArn@ is not null, the
-- credential pair from the data source in the ARN is used as the
-- credentials for the @DataSourceCredentials@ structure.
dataSourceCredentials_copySourceArn :: Lens.Lens' DataSourceCredentials (Prelude.Maybe Prelude.Text)
dataSourceCredentials_copySourceArn = Lens.lens (\DataSourceCredentials' {copySourceArn} -> copySourceArn) (\s@DataSourceCredentials' {} a -> s {copySourceArn = a} :: DataSourceCredentials)

instance Prelude.Hashable DataSourceCredentials where
  hashWithSalt _salt DataSourceCredentials' {..} =
    _salt `Prelude.hashWithSalt` secretArn
      `Prelude.hashWithSalt` credentialPair
      `Prelude.hashWithSalt` copySourceArn

instance Prelude.NFData DataSourceCredentials where
  rnf DataSourceCredentials' {..} =
    Prelude.rnf secretArn
      `Prelude.seq` Prelude.rnf credentialPair
      `Prelude.seq` Prelude.rnf copySourceArn

instance Core.ToJSON DataSourceCredentials where
  toJSON DataSourceCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SecretArn" Core..=) Prelude.<$> secretArn,
            ("CredentialPair" Core..=)
              Prelude.<$> credentialPair,
            ("CopySourceArn" Core..=) Prelude.<$> copySourceArn
          ]
      )
