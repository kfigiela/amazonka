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
-- Module      : Amazonka.AppConfig.UpdateApplication
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an application.
module Amazonka.AppConfig.UpdateApplication
  ( -- * Creating a Request
    UpdateApplication (..),
    newUpdateApplication,

    -- * Request Lenses
    updateApplication_name,
    updateApplication_description,
    updateApplication_applicationId,

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

-- | /See:/ 'newUpdateApplication' smart constructor.
data UpdateApplication = UpdateApplication'
  { -- | The name of the application.
    name :: Prelude.Maybe Prelude.Text,
    -- | A description of the application.
    description :: Prelude.Maybe Prelude.Text,
    -- | The application ID.
    applicationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateApplication_name' - The name of the application.
--
-- 'description', 'updateApplication_description' - A description of the application.
--
-- 'applicationId', 'updateApplication_applicationId' - The application ID.
newUpdateApplication ::
  -- | 'applicationId'
  Prelude.Text ->
  UpdateApplication
newUpdateApplication pApplicationId_ =
  UpdateApplication'
    { name = Prelude.Nothing,
      description = Prelude.Nothing,
      applicationId = pApplicationId_
    }

-- | The name of the application.
updateApplication_name :: Lens.Lens' UpdateApplication (Prelude.Maybe Prelude.Text)
updateApplication_name = Lens.lens (\UpdateApplication' {name} -> name) (\s@UpdateApplication' {} a -> s {name = a} :: UpdateApplication)

-- | A description of the application.
updateApplication_description :: Lens.Lens' UpdateApplication (Prelude.Maybe Prelude.Text)
updateApplication_description = Lens.lens (\UpdateApplication' {description} -> description) (\s@UpdateApplication' {} a -> s {description = a} :: UpdateApplication)

-- | The application ID.
updateApplication_applicationId :: Lens.Lens' UpdateApplication Prelude.Text
updateApplication_applicationId = Lens.lens (\UpdateApplication' {applicationId} -> applicationId) (\s@UpdateApplication' {} a -> s {applicationId = a} :: UpdateApplication)

instance Core.AWSRequest UpdateApplication where
  type AWSResponse UpdateApplication = Application
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable UpdateApplication where
  hashWithSalt _salt UpdateApplication' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` applicationId

instance Prelude.NFData UpdateApplication where
  rnf UpdateApplication' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf applicationId

instance Core.ToHeaders UpdateApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateApplication where
  toJSON UpdateApplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateApplication where
  toPath UpdateApplication' {..} =
    Prelude.mconcat
      ["/applications/", Core.toBS applicationId]

instance Core.ToQuery UpdateApplication where
  toQuery = Prelude.const Prelude.mempty
