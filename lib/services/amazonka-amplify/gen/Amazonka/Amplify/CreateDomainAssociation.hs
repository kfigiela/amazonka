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
-- Module      : Amazonka.Amplify.CreateDomainAssociation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new domain association for an Amplify app. This action
-- associates a custom domain with the Amplify app
module Amazonka.Amplify.CreateDomainAssociation
  ( -- * Creating a Request
    CreateDomainAssociation (..),
    newCreateDomainAssociation,

    -- * Request Lenses
    createDomainAssociation_autoSubDomainIAMRole,
    createDomainAssociation_autoSubDomainCreationPatterns,
    createDomainAssociation_enableAutoSubDomain,
    createDomainAssociation_appId,
    createDomainAssociation_domainName,
    createDomainAssociation_subDomainSettings,

    -- * Destructuring the Response
    CreateDomainAssociationResponse (..),
    newCreateDomainAssociationResponse,

    -- * Response Lenses
    createDomainAssociationResponse_httpStatus,
    createDomainAssociationResponse_domainAssociation,
  )
where

import Amazonka.Amplify.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request structure for the create domain association request.
--
-- /See:/ 'newCreateDomainAssociation' smart constructor.
data CreateDomainAssociation = CreateDomainAssociation'
  { -- | The required AWS Identity and Access Management (IAM) service role for
    -- the Amazon Resource Name (ARN) for automatically creating subdomains.
    autoSubDomainIAMRole :: Prelude.Maybe Prelude.Text,
    -- | Sets the branch patterns for automatic subdomain creation.
    autoSubDomainCreationPatterns :: Prelude.Maybe [Prelude.Text],
    -- | Enables the automated creation of subdomains for branches.
    enableAutoSubDomain :: Prelude.Maybe Prelude.Bool,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text,
    -- | The domain name for the domain association.
    domainName :: Prelude.Text,
    -- | The setting for the subdomain.
    subDomainSettings :: [SubDomainSetting]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDomainAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoSubDomainIAMRole', 'createDomainAssociation_autoSubDomainIAMRole' - The required AWS Identity and Access Management (IAM) service role for
-- the Amazon Resource Name (ARN) for automatically creating subdomains.
--
-- 'autoSubDomainCreationPatterns', 'createDomainAssociation_autoSubDomainCreationPatterns' - Sets the branch patterns for automatic subdomain creation.
--
-- 'enableAutoSubDomain', 'createDomainAssociation_enableAutoSubDomain' - Enables the automated creation of subdomains for branches.
--
-- 'appId', 'createDomainAssociation_appId' - The unique ID for an Amplify app.
--
-- 'domainName', 'createDomainAssociation_domainName' - The domain name for the domain association.
--
-- 'subDomainSettings', 'createDomainAssociation_subDomainSettings' - The setting for the subdomain.
newCreateDomainAssociation ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  CreateDomainAssociation
newCreateDomainAssociation pAppId_ pDomainName_ =
  CreateDomainAssociation'
    { autoSubDomainIAMRole =
        Prelude.Nothing,
      autoSubDomainCreationPatterns = Prelude.Nothing,
      enableAutoSubDomain = Prelude.Nothing,
      appId = pAppId_,
      domainName = pDomainName_,
      subDomainSettings = Prelude.mempty
    }

-- | The required AWS Identity and Access Management (IAM) service role for
-- the Amazon Resource Name (ARN) for automatically creating subdomains.
createDomainAssociation_autoSubDomainIAMRole :: Lens.Lens' CreateDomainAssociation (Prelude.Maybe Prelude.Text)
createDomainAssociation_autoSubDomainIAMRole = Lens.lens (\CreateDomainAssociation' {autoSubDomainIAMRole} -> autoSubDomainIAMRole) (\s@CreateDomainAssociation' {} a -> s {autoSubDomainIAMRole = a} :: CreateDomainAssociation)

-- | Sets the branch patterns for automatic subdomain creation.
createDomainAssociation_autoSubDomainCreationPatterns :: Lens.Lens' CreateDomainAssociation (Prelude.Maybe [Prelude.Text])
createDomainAssociation_autoSubDomainCreationPatterns = Lens.lens (\CreateDomainAssociation' {autoSubDomainCreationPatterns} -> autoSubDomainCreationPatterns) (\s@CreateDomainAssociation' {} a -> s {autoSubDomainCreationPatterns = a} :: CreateDomainAssociation) Prelude.. Lens.mapping Lens.coerced

-- | Enables the automated creation of subdomains for branches.
createDomainAssociation_enableAutoSubDomain :: Lens.Lens' CreateDomainAssociation (Prelude.Maybe Prelude.Bool)
createDomainAssociation_enableAutoSubDomain = Lens.lens (\CreateDomainAssociation' {enableAutoSubDomain} -> enableAutoSubDomain) (\s@CreateDomainAssociation' {} a -> s {enableAutoSubDomain = a} :: CreateDomainAssociation)

-- | The unique ID for an Amplify app.
createDomainAssociation_appId :: Lens.Lens' CreateDomainAssociation Prelude.Text
createDomainAssociation_appId = Lens.lens (\CreateDomainAssociation' {appId} -> appId) (\s@CreateDomainAssociation' {} a -> s {appId = a} :: CreateDomainAssociation)

-- | The domain name for the domain association.
createDomainAssociation_domainName :: Lens.Lens' CreateDomainAssociation Prelude.Text
createDomainAssociation_domainName = Lens.lens (\CreateDomainAssociation' {domainName} -> domainName) (\s@CreateDomainAssociation' {} a -> s {domainName = a} :: CreateDomainAssociation)

-- | The setting for the subdomain.
createDomainAssociation_subDomainSettings :: Lens.Lens' CreateDomainAssociation [SubDomainSetting]
createDomainAssociation_subDomainSettings = Lens.lens (\CreateDomainAssociation' {subDomainSettings} -> subDomainSettings) (\s@CreateDomainAssociation' {} a -> s {subDomainSettings = a} :: CreateDomainAssociation) Prelude.. Lens.coerced

instance Core.AWSRequest CreateDomainAssociation where
  type
    AWSResponse CreateDomainAssociation =
      CreateDomainAssociationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDomainAssociationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "domainAssociation")
      )

instance Prelude.Hashable CreateDomainAssociation where
  hashWithSalt _salt CreateDomainAssociation' {..} =
    _salt `Prelude.hashWithSalt` autoSubDomainIAMRole
      `Prelude.hashWithSalt` autoSubDomainCreationPatterns
      `Prelude.hashWithSalt` enableAutoSubDomain
      `Prelude.hashWithSalt` appId
      `Prelude.hashWithSalt` domainName
      `Prelude.hashWithSalt` subDomainSettings

instance Prelude.NFData CreateDomainAssociation where
  rnf CreateDomainAssociation' {..} =
    Prelude.rnf autoSubDomainIAMRole
      `Prelude.seq` Prelude.rnf autoSubDomainCreationPatterns
      `Prelude.seq` Prelude.rnf enableAutoSubDomain
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf subDomainSettings

instance Core.ToHeaders CreateDomainAssociation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDomainAssociation where
  toJSON CreateDomainAssociation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("autoSubDomainIAMRole" Core..=)
              Prelude.<$> autoSubDomainIAMRole,
            ("autoSubDomainCreationPatterns" Core..=)
              Prelude.<$> autoSubDomainCreationPatterns,
            ("enableAutoSubDomain" Core..=)
              Prelude.<$> enableAutoSubDomain,
            Prelude.Just ("domainName" Core..= domainName),
            Prelude.Just
              ("subDomainSettings" Core..= subDomainSettings)
          ]
      )

instance Core.ToPath CreateDomainAssociation where
  toPath CreateDomainAssociation' {..} =
    Prelude.mconcat
      ["/apps/", Core.toBS appId, "/domains"]

instance Core.ToQuery CreateDomainAssociation where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the create domain association request.
--
-- /See:/ 'newCreateDomainAssociationResponse' smart constructor.
data CreateDomainAssociationResponse = CreateDomainAssociationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Describes the structure of a domain association, which associates a
    -- custom domain with an Amplify app.
    domainAssociation :: DomainAssociation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDomainAssociationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createDomainAssociationResponse_httpStatus' - The response's http status code.
--
-- 'domainAssociation', 'createDomainAssociationResponse_domainAssociation' - Describes the structure of a domain association, which associates a
-- custom domain with an Amplify app.
newCreateDomainAssociationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'domainAssociation'
  DomainAssociation ->
  CreateDomainAssociationResponse
newCreateDomainAssociationResponse
  pHttpStatus_
  pDomainAssociation_ =
    CreateDomainAssociationResponse'
      { httpStatus =
          pHttpStatus_,
        domainAssociation = pDomainAssociation_
      }

-- | The response's http status code.
createDomainAssociationResponse_httpStatus :: Lens.Lens' CreateDomainAssociationResponse Prelude.Int
createDomainAssociationResponse_httpStatus = Lens.lens (\CreateDomainAssociationResponse' {httpStatus} -> httpStatus) (\s@CreateDomainAssociationResponse' {} a -> s {httpStatus = a} :: CreateDomainAssociationResponse)

-- | Describes the structure of a domain association, which associates a
-- custom domain with an Amplify app.
createDomainAssociationResponse_domainAssociation :: Lens.Lens' CreateDomainAssociationResponse DomainAssociation
createDomainAssociationResponse_domainAssociation = Lens.lens (\CreateDomainAssociationResponse' {domainAssociation} -> domainAssociation) (\s@CreateDomainAssociationResponse' {} a -> s {domainAssociation = a} :: CreateDomainAssociationResponse)

instance
  Prelude.NFData
    CreateDomainAssociationResponse
  where
  rnf CreateDomainAssociationResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf domainAssociation
