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
-- Module      : Amazonka.EC2.CreateNetworkInsightsAccessScope
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Network Access Scope.
--
-- Amazon Web Services Network Access Analyzer enables cloud networking and
-- cloud operations teams to verify that their networks on Amazon Web
-- Services conform to their network security and governance objectives.
-- For more information, see the
-- <https://docs.aws.amazon.com/vpc/latest/network-access-analyzer/ Amazon Web Services Network Access Analyzer Guide>.
module Amazonka.EC2.CreateNetworkInsightsAccessScope
  ( -- * Creating a Request
    CreateNetworkInsightsAccessScope (..),
    newCreateNetworkInsightsAccessScope,

    -- * Request Lenses
    createNetworkInsightsAccessScope_excludePaths,
    createNetworkInsightsAccessScope_matchPaths,
    createNetworkInsightsAccessScope_dryRun,
    createNetworkInsightsAccessScope_tagSpecifications,
    createNetworkInsightsAccessScope_clientToken,

    -- * Destructuring the Response
    CreateNetworkInsightsAccessScopeResponse (..),
    newCreateNetworkInsightsAccessScopeResponse,

    -- * Response Lenses
    createNetworkInsightsAccessScopeResponse_networkInsightsAccessScopeContent,
    createNetworkInsightsAccessScopeResponse_networkInsightsAccessScope,
    createNetworkInsightsAccessScopeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateNetworkInsightsAccessScope' smart constructor.
data CreateNetworkInsightsAccessScope = CreateNetworkInsightsAccessScope'
  { -- | The paths to exclude.
    excludePaths :: Prelude.Maybe [AccessScopePathRequest],
    -- | The paths to match.
    matchPaths :: Prelude.Maybe [AccessScopePathRequest],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The tags to apply.
    tagSpecifications :: Prelude.Maybe [TagSpecification],
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateNetworkInsightsAccessScope' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'excludePaths', 'createNetworkInsightsAccessScope_excludePaths' - The paths to exclude.
--
-- 'matchPaths', 'createNetworkInsightsAccessScope_matchPaths' - The paths to match.
--
-- 'dryRun', 'createNetworkInsightsAccessScope_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'tagSpecifications', 'createNetworkInsightsAccessScope_tagSpecifications' - The tags to apply.
--
-- 'clientToken', 'createNetworkInsightsAccessScope_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
newCreateNetworkInsightsAccessScope ::
  -- | 'clientToken'
  Prelude.Text ->
  CreateNetworkInsightsAccessScope
newCreateNetworkInsightsAccessScope pClientToken_ =
  CreateNetworkInsightsAccessScope'
    { excludePaths =
        Prelude.Nothing,
      matchPaths = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      tagSpecifications = Prelude.Nothing,
      clientToken = pClientToken_
    }

-- | The paths to exclude.
createNetworkInsightsAccessScope_excludePaths :: Lens.Lens' CreateNetworkInsightsAccessScope (Prelude.Maybe [AccessScopePathRequest])
createNetworkInsightsAccessScope_excludePaths = Lens.lens (\CreateNetworkInsightsAccessScope' {excludePaths} -> excludePaths) (\s@CreateNetworkInsightsAccessScope' {} a -> s {excludePaths = a} :: CreateNetworkInsightsAccessScope) Prelude.. Lens.mapping Lens.coerced

-- | The paths to match.
createNetworkInsightsAccessScope_matchPaths :: Lens.Lens' CreateNetworkInsightsAccessScope (Prelude.Maybe [AccessScopePathRequest])
createNetworkInsightsAccessScope_matchPaths = Lens.lens (\CreateNetworkInsightsAccessScope' {matchPaths} -> matchPaths) (\s@CreateNetworkInsightsAccessScope' {} a -> s {matchPaths = a} :: CreateNetworkInsightsAccessScope) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createNetworkInsightsAccessScope_dryRun :: Lens.Lens' CreateNetworkInsightsAccessScope (Prelude.Maybe Prelude.Bool)
createNetworkInsightsAccessScope_dryRun = Lens.lens (\CreateNetworkInsightsAccessScope' {dryRun} -> dryRun) (\s@CreateNetworkInsightsAccessScope' {} a -> s {dryRun = a} :: CreateNetworkInsightsAccessScope)

-- | The tags to apply.
createNetworkInsightsAccessScope_tagSpecifications :: Lens.Lens' CreateNetworkInsightsAccessScope (Prelude.Maybe [TagSpecification])
createNetworkInsightsAccessScope_tagSpecifications = Lens.lens (\CreateNetworkInsightsAccessScope' {tagSpecifications} -> tagSpecifications) (\s@CreateNetworkInsightsAccessScope' {} a -> s {tagSpecifications = a} :: CreateNetworkInsightsAccessScope) Prelude.. Lens.mapping Lens.coerced

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to ensure idempotency>.
createNetworkInsightsAccessScope_clientToken :: Lens.Lens' CreateNetworkInsightsAccessScope Prelude.Text
createNetworkInsightsAccessScope_clientToken = Lens.lens (\CreateNetworkInsightsAccessScope' {clientToken} -> clientToken) (\s@CreateNetworkInsightsAccessScope' {} a -> s {clientToken = a} :: CreateNetworkInsightsAccessScope)

instance
  Core.AWSRequest
    CreateNetworkInsightsAccessScope
  where
  type
    AWSResponse CreateNetworkInsightsAccessScope =
      CreateNetworkInsightsAccessScopeResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          CreateNetworkInsightsAccessScopeResponse'
            Prelude.<$> (x Core..@? "networkInsightsAccessScopeContent")
            Prelude.<*> (x Core..@? "networkInsightsAccessScope")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateNetworkInsightsAccessScope
  where
  hashWithSalt
    _salt
    CreateNetworkInsightsAccessScope' {..} =
      _salt `Prelude.hashWithSalt` excludePaths
        `Prelude.hashWithSalt` matchPaths
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` tagSpecifications
        `Prelude.hashWithSalt` clientToken

instance
  Prelude.NFData
    CreateNetworkInsightsAccessScope
  where
  rnf CreateNetworkInsightsAccessScope' {..} =
    Prelude.rnf excludePaths
      `Prelude.seq` Prelude.rnf matchPaths
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf tagSpecifications
      `Prelude.seq` Prelude.rnf clientToken

instance
  Core.ToHeaders
    CreateNetworkInsightsAccessScope
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateNetworkInsightsAccessScope where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    CreateNetworkInsightsAccessScope
  where
  toQuery CreateNetworkInsightsAccessScope' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "CreateNetworkInsightsAccessScope" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        Core.toQuery
          ( Core.toQueryList "ExcludePath"
              Prelude.<$> excludePaths
          ),
        Core.toQuery
          ( Core.toQueryList "MatchPath"
              Prelude.<$> matchPaths
          ),
        "DryRun" Core.=: dryRun,
        Core.toQuery
          ( Core.toQueryList "TagSpecification"
              Prelude.<$> tagSpecifications
          ),
        "ClientToken" Core.=: clientToken
      ]

-- | /See:/ 'newCreateNetworkInsightsAccessScopeResponse' smart constructor.
data CreateNetworkInsightsAccessScopeResponse = CreateNetworkInsightsAccessScopeResponse'
  { -- | The Network Access Scope content.
    networkInsightsAccessScopeContent :: Prelude.Maybe NetworkInsightsAccessScopeContent,
    -- | The Network Access Scope.
    networkInsightsAccessScope :: Prelude.Maybe NetworkInsightsAccessScope,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateNetworkInsightsAccessScopeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkInsightsAccessScopeContent', 'createNetworkInsightsAccessScopeResponse_networkInsightsAccessScopeContent' - The Network Access Scope content.
--
-- 'networkInsightsAccessScope', 'createNetworkInsightsAccessScopeResponse_networkInsightsAccessScope' - The Network Access Scope.
--
-- 'httpStatus', 'createNetworkInsightsAccessScopeResponse_httpStatus' - The response's http status code.
newCreateNetworkInsightsAccessScopeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateNetworkInsightsAccessScopeResponse
newCreateNetworkInsightsAccessScopeResponse
  pHttpStatus_ =
    CreateNetworkInsightsAccessScopeResponse'
      { networkInsightsAccessScopeContent =
          Prelude.Nothing,
        networkInsightsAccessScope =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The Network Access Scope content.
createNetworkInsightsAccessScopeResponse_networkInsightsAccessScopeContent :: Lens.Lens' CreateNetworkInsightsAccessScopeResponse (Prelude.Maybe NetworkInsightsAccessScopeContent)
createNetworkInsightsAccessScopeResponse_networkInsightsAccessScopeContent = Lens.lens (\CreateNetworkInsightsAccessScopeResponse' {networkInsightsAccessScopeContent} -> networkInsightsAccessScopeContent) (\s@CreateNetworkInsightsAccessScopeResponse' {} a -> s {networkInsightsAccessScopeContent = a} :: CreateNetworkInsightsAccessScopeResponse)

-- | The Network Access Scope.
createNetworkInsightsAccessScopeResponse_networkInsightsAccessScope :: Lens.Lens' CreateNetworkInsightsAccessScopeResponse (Prelude.Maybe NetworkInsightsAccessScope)
createNetworkInsightsAccessScopeResponse_networkInsightsAccessScope = Lens.lens (\CreateNetworkInsightsAccessScopeResponse' {networkInsightsAccessScope} -> networkInsightsAccessScope) (\s@CreateNetworkInsightsAccessScopeResponse' {} a -> s {networkInsightsAccessScope = a} :: CreateNetworkInsightsAccessScopeResponse)

-- | The response's http status code.
createNetworkInsightsAccessScopeResponse_httpStatus :: Lens.Lens' CreateNetworkInsightsAccessScopeResponse Prelude.Int
createNetworkInsightsAccessScopeResponse_httpStatus = Lens.lens (\CreateNetworkInsightsAccessScopeResponse' {httpStatus} -> httpStatus) (\s@CreateNetworkInsightsAccessScopeResponse' {} a -> s {httpStatus = a} :: CreateNetworkInsightsAccessScopeResponse)

instance
  Prelude.NFData
    CreateNetworkInsightsAccessScopeResponse
  where
  rnf CreateNetworkInsightsAccessScopeResponse' {..} =
    Prelude.rnf networkInsightsAccessScopeContent
      `Prelude.seq` Prelude.rnf networkInsightsAccessScope
      `Prelude.seq` Prelude.rnf httpStatus
