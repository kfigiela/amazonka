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
-- Module      : Amazonka.AppConfig.GetApplication
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about an application.
module Amazonka.AppConfig.GetApplication
  ( -- * Creating a Request
    GetApplication (..),
    newGetApplication,

    -- * Request Lenses
    getApplication_applicationId,

    -- * Destructuring the Response
    Application (..),
    newApplication,

    -- * Response Lenses
    application_name,
    application_id,
    application_description,
  )
where

import Amazonka.AppConfig.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetApplication' smart constructor.
data GetApplication = GetApplication'
  { -- | The ID of the application you want to get.
    applicationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'getApplication_applicationId' - The ID of the application you want to get.
newGetApplication ::
  -- | 'applicationId'
  Prelude.Text ->
  GetApplication
newGetApplication pApplicationId_ =
  GetApplication' {applicationId = pApplicationId_}

-- | The ID of the application you want to get.
getApplication_applicationId :: Lens.Lens' GetApplication Prelude.Text
getApplication_applicationId = Lens.lens (\GetApplication' {applicationId} -> applicationId) (\s@GetApplication' {} a -> s {applicationId = a} :: GetApplication)

instance Core.AWSRequest GetApplication where
  type AWSResponse GetApplication = Application
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetApplication where
  hashWithSalt _salt GetApplication' {..} =
    _salt `Prelude.hashWithSalt` applicationId

instance Prelude.NFData GetApplication where
  rnf GetApplication' {..} = Prelude.rnf applicationId

instance Core.ToHeaders GetApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetApplication where
  toPath GetApplication' {..} =
    Prelude.mconcat
      ["/applications/", Core.toBS applicationId]

instance Core.ToQuery GetApplication where
  toQuery = Prelude.const Prelude.mempty
