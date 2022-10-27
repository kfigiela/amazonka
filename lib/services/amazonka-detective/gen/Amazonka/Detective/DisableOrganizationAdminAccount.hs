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
-- Module      : Amazonka.Detective.DisableOrganizationAdminAccount
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the Detective administrator account in the current Region.
-- Deletes the organization behavior graph.
--
-- Can only be called by the organization management account.
--
-- Removing the Detective administrator account does not affect the
-- delegated administrator account for Detective in Organizations.
--
-- To remove the delegated administrator account in Organizations, use the
-- Organizations API. Removing the delegated administrator account also
-- removes the Detective administrator account in all Regions, except for
-- Regions where the Detective administrator account is the organization
-- management account.
module Amazonka.Detective.DisableOrganizationAdminAccount
  ( -- * Creating a Request
    DisableOrganizationAdminAccount (..),
    newDisableOrganizationAdminAccount,

    -- * Destructuring the Response
    DisableOrganizationAdminAccountResponse (..),
    newDisableOrganizationAdminAccountResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Detective.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisableOrganizationAdminAccount' smart constructor.
data DisableOrganizationAdminAccount = DisableOrganizationAdminAccount'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableOrganizationAdminAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisableOrganizationAdminAccount ::
  DisableOrganizationAdminAccount
newDisableOrganizationAdminAccount =
  DisableOrganizationAdminAccount'

instance
  Core.AWSRequest
    DisableOrganizationAdminAccount
  where
  type
    AWSResponse DisableOrganizationAdminAccount =
      DisableOrganizationAdminAccountResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull
      DisableOrganizationAdminAccountResponse'

instance
  Prelude.Hashable
    DisableOrganizationAdminAccount
  where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance
  Prelude.NFData
    DisableOrganizationAdminAccount
  where
  rnf _ = ()

instance
  Core.ToHeaders
    DisableOrganizationAdminAccount
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

instance Core.ToJSON DisableOrganizationAdminAccount where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath DisableOrganizationAdminAccount where
  toPath = Prelude.const "/orgs/disableAdminAccount"

instance Core.ToQuery DisableOrganizationAdminAccount where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisableOrganizationAdminAccountResponse' smart constructor.
data DisableOrganizationAdminAccountResponse = DisableOrganizationAdminAccountResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableOrganizationAdminAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisableOrganizationAdminAccountResponse ::
  DisableOrganizationAdminAccountResponse
newDisableOrganizationAdminAccountResponse =
  DisableOrganizationAdminAccountResponse'

instance
  Prelude.NFData
    DisableOrganizationAdminAccountResponse
  where
  rnf _ = ()
