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
-- Module      : Amazonka.ResilienceHub.RemoveDraftAppVersionResourceMappings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes resource mappings from a draft application version.
module Amazonka.ResilienceHub.RemoveDraftAppVersionResourceMappings
  ( -- * Creating a Request
    RemoveDraftAppVersionResourceMappings (..),
    newRemoveDraftAppVersionResourceMappings,

    -- * Request Lenses
    removeDraftAppVersionResourceMappings_resourceGroupNames,
    removeDraftAppVersionResourceMappings_terraformSourceNames,
    removeDraftAppVersionResourceMappings_resourceNames,
    removeDraftAppVersionResourceMappings_appRegistryAppNames,
    removeDraftAppVersionResourceMappings_logicalStackNames,
    removeDraftAppVersionResourceMappings_appArn,

    -- * Destructuring the Response
    RemoveDraftAppVersionResourceMappingsResponse (..),
    newRemoveDraftAppVersionResourceMappingsResponse,

    -- * Response Lenses
    removeDraftAppVersionResourceMappingsResponse_appVersion,
    removeDraftAppVersionResourceMappingsResponse_appArn,
    removeDraftAppVersionResourceMappingsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import Amazonka.ResilienceHub.Types
import qualified Amazonka.Response as Response

-- | /See:/ 'newRemoveDraftAppVersionResourceMappings' smart constructor.
data RemoveDraftAppVersionResourceMappings = RemoveDraftAppVersionResourceMappings'
  { -- | The names of the resource groups to remove from the resource mappings.
    resourceGroupNames :: Prelude.Maybe [Prelude.Text],
    -- | > </p>
    terraformSourceNames :: Prelude.Maybe [Prelude.Text],
    -- | The names of the resources to remove from the resource mappings.
    resourceNames :: Prelude.Maybe [Prelude.Text],
    -- | The names of the registered applications to remove from the resource
    -- mappings.
    appRegistryAppNames :: Prelude.Maybe [Prelude.Text],
    -- | The names of the CloudFormation stacks to remove from the resource
    -- mappings.
    logicalStackNames :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the application. The format for this
    -- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    appArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveDraftAppVersionResourceMappings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceGroupNames', 'removeDraftAppVersionResourceMappings_resourceGroupNames' - The names of the resource groups to remove from the resource mappings.
--
-- 'terraformSourceNames', 'removeDraftAppVersionResourceMappings_terraformSourceNames' - > </p>
--
-- 'resourceNames', 'removeDraftAppVersionResourceMappings_resourceNames' - The names of the resources to remove from the resource mappings.
--
-- 'appRegistryAppNames', 'removeDraftAppVersionResourceMappings_appRegistryAppNames' - The names of the registered applications to remove from the resource
-- mappings.
--
-- 'logicalStackNames', 'removeDraftAppVersionResourceMappings_logicalStackNames' - The names of the CloudFormation stacks to remove from the resource
-- mappings.
--
-- 'appArn', 'removeDraftAppVersionResourceMappings_appArn' - The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
newRemoveDraftAppVersionResourceMappings ::
  -- | 'appArn'
  Prelude.Text ->
  RemoveDraftAppVersionResourceMappings
newRemoveDraftAppVersionResourceMappings pAppArn_ =
  RemoveDraftAppVersionResourceMappings'
    { resourceGroupNames =
        Prelude.Nothing,
      terraformSourceNames =
        Prelude.Nothing,
      resourceNames = Prelude.Nothing,
      appRegistryAppNames =
        Prelude.Nothing,
      logicalStackNames = Prelude.Nothing,
      appArn = pAppArn_
    }

-- | The names of the resource groups to remove from the resource mappings.
removeDraftAppVersionResourceMappings_resourceGroupNames :: Lens.Lens' RemoveDraftAppVersionResourceMappings (Prelude.Maybe [Prelude.Text])
removeDraftAppVersionResourceMappings_resourceGroupNames = Lens.lens (\RemoveDraftAppVersionResourceMappings' {resourceGroupNames} -> resourceGroupNames) (\s@RemoveDraftAppVersionResourceMappings' {} a -> s {resourceGroupNames = a} :: RemoveDraftAppVersionResourceMappings) Prelude.. Lens.mapping Lens.coerced

-- | > </p>
removeDraftAppVersionResourceMappings_terraformSourceNames :: Lens.Lens' RemoveDraftAppVersionResourceMappings (Prelude.Maybe [Prelude.Text])
removeDraftAppVersionResourceMappings_terraformSourceNames = Lens.lens (\RemoveDraftAppVersionResourceMappings' {terraformSourceNames} -> terraformSourceNames) (\s@RemoveDraftAppVersionResourceMappings' {} a -> s {terraformSourceNames = a} :: RemoveDraftAppVersionResourceMappings) Prelude.. Lens.mapping Lens.coerced

-- | The names of the resources to remove from the resource mappings.
removeDraftAppVersionResourceMappings_resourceNames :: Lens.Lens' RemoveDraftAppVersionResourceMappings (Prelude.Maybe [Prelude.Text])
removeDraftAppVersionResourceMappings_resourceNames = Lens.lens (\RemoveDraftAppVersionResourceMappings' {resourceNames} -> resourceNames) (\s@RemoveDraftAppVersionResourceMappings' {} a -> s {resourceNames = a} :: RemoveDraftAppVersionResourceMappings) Prelude.. Lens.mapping Lens.coerced

-- | The names of the registered applications to remove from the resource
-- mappings.
removeDraftAppVersionResourceMappings_appRegistryAppNames :: Lens.Lens' RemoveDraftAppVersionResourceMappings (Prelude.Maybe [Prelude.Text])
removeDraftAppVersionResourceMappings_appRegistryAppNames = Lens.lens (\RemoveDraftAppVersionResourceMappings' {appRegistryAppNames} -> appRegistryAppNames) (\s@RemoveDraftAppVersionResourceMappings' {} a -> s {appRegistryAppNames = a} :: RemoveDraftAppVersionResourceMappings) Prelude.. Lens.mapping Lens.coerced

-- | The names of the CloudFormation stacks to remove from the resource
-- mappings.
removeDraftAppVersionResourceMappings_logicalStackNames :: Lens.Lens' RemoveDraftAppVersionResourceMappings (Prelude.Maybe [Prelude.Text])
removeDraftAppVersionResourceMappings_logicalStackNames = Lens.lens (\RemoveDraftAppVersionResourceMappings' {logicalStackNames} -> logicalStackNames) (\s@RemoveDraftAppVersionResourceMappings' {} a -> s {logicalStackNames = a} :: RemoveDraftAppVersionResourceMappings) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
removeDraftAppVersionResourceMappings_appArn :: Lens.Lens' RemoveDraftAppVersionResourceMappings Prelude.Text
removeDraftAppVersionResourceMappings_appArn = Lens.lens (\RemoveDraftAppVersionResourceMappings' {appArn} -> appArn) (\s@RemoveDraftAppVersionResourceMappings' {} a -> s {appArn = a} :: RemoveDraftAppVersionResourceMappings)

instance
  Core.AWSRequest
    RemoveDraftAppVersionResourceMappings
  where
  type
    AWSResponse
      RemoveDraftAppVersionResourceMappings =
      RemoveDraftAppVersionResourceMappingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RemoveDraftAppVersionResourceMappingsResponse'
            Prelude.<$> (x Core..?> "appVersion")
              Prelude.<*> (x Core..?> "appArn")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    RemoveDraftAppVersionResourceMappings
  where
  hashWithSalt
    _salt
    RemoveDraftAppVersionResourceMappings' {..} =
      _salt `Prelude.hashWithSalt` resourceGroupNames
        `Prelude.hashWithSalt` terraformSourceNames
        `Prelude.hashWithSalt` resourceNames
        `Prelude.hashWithSalt` appRegistryAppNames
        `Prelude.hashWithSalt` logicalStackNames
        `Prelude.hashWithSalt` appArn

instance
  Prelude.NFData
    RemoveDraftAppVersionResourceMappings
  where
  rnf RemoveDraftAppVersionResourceMappings' {..} =
    Prelude.rnf resourceGroupNames
      `Prelude.seq` Prelude.rnf terraformSourceNames
      `Prelude.seq` Prelude.rnf resourceNames
      `Prelude.seq` Prelude.rnf appRegistryAppNames
      `Prelude.seq` Prelude.rnf logicalStackNames
      `Prelude.seq` Prelude.rnf appArn

instance
  Core.ToHeaders
    RemoveDraftAppVersionResourceMappings
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    RemoveDraftAppVersionResourceMappings
  where
  toJSON RemoveDraftAppVersionResourceMappings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("resourceGroupNames" Core..=)
              Prelude.<$> resourceGroupNames,
            ("terraformSourceNames" Core..=)
              Prelude.<$> terraformSourceNames,
            ("resourceNames" Core..=) Prelude.<$> resourceNames,
            ("appRegistryAppNames" Core..=)
              Prelude.<$> appRegistryAppNames,
            ("logicalStackNames" Core..=)
              Prelude.<$> logicalStackNames,
            Prelude.Just ("appArn" Core..= appArn)
          ]
      )

instance
  Core.ToPath
    RemoveDraftAppVersionResourceMappings
  where
  toPath =
    Prelude.const
      "/remove-draft-app-version-resource-mappings"

instance
  Core.ToQuery
    RemoveDraftAppVersionResourceMappings
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRemoveDraftAppVersionResourceMappingsResponse' smart constructor.
data RemoveDraftAppVersionResourceMappingsResponse = RemoveDraftAppVersionResourceMappingsResponse'
  { -- | The version of the application.
    appVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the application. The format for this
    -- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    appArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveDraftAppVersionResourceMappingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appVersion', 'removeDraftAppVersionResourceMappingsResponse_appVersion' - The version of the application.
--
-- 'appArn', 'removeDraftAppVersionResourceMappingsResponse_appArn' - The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'httpStatus', 'removeDraftAppVersionResourceMappingsResponse_httpStatus' - The response's http status code.
newRemoveDraftAppVersionResourceMappingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RemoveDraftAppVersionResourceMappingsResponse
newRemoveDraftAppVersionResourceMappingsResponse
  pHttpStatus_ =
    RemoveDraftAppVersionResourceMappingsResponse'
      { appVersion =
          Prelude.Nothing,
        appArn = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The version of the application.
removeDraftAppVersionResourceMappingsResponse_appVersion :: Lens.Lens' RemoveDraftAppVersionResourceMappingsResponse (Prelude.Maybe Prelude.Text)
removeDraftAppVersionResourceMappingsResponse_appVersion = Lens.lens (\RemoveDraftAppVersionResourceMappingsResponse' {appVersion} -> appVersion) (\s@RemoveDraftAppVersionResourceMappingsResponse' {} a -> s {appVersion = a} :: RemoveDraftAppVersionResourceMappingsResponse)

-- | The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
removeDraftAppVersionResourceMappingsResponse_appArn :: Lens.Lens' RemoveDraftAppVersionResourceMappingsResponse (Prelude.Maybe Prelude.Text)
removeDraftAppVersionResourceMappingsResponse_appArn = Lens.lens (\RemoveDraftAppVersionResourceMappingsResponse' {appArn} -> appArn) (\s@RemoveDraftAppVersionResourceMappingsResponse' {} a -> s {appArn = a} :: RemoveDraftAppVersionResourceMappingsResponse)

-- | The response's http status code.
removeDraftAppVersionResourceMappingsResponse_httpStatus :: Lens.Lens' RemoveDraftAppVersionResourceMappingsResponse Prelude.Int
removeDraftAppVersionResourceMappingsResponse_httpStatus = Lens.lens (\RemoveDraftAppVersionResourceMappingsResponse' {httpStatus} -> httpStatus) (\s@RemoveDraftAppVersionResourceMappingsResponse' {} a -> s {httpStatus = a} :: RemoveDraftAppVersionResourceMappingsResponse)

instance
  Prelude.NFData
    RemoveDraftAppVersionResourceMappingsResponse
  where
  rnf
    RemoveDraftAppVersionResourceMappingsResponse' {..} =
      Prelude.rnf appVersion
        `Prelude.seq` Prelude.rnf appArn
        `Prelude.seq` Prelude.rnf httpStatus
