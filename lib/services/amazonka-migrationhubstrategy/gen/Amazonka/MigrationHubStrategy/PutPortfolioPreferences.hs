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
-- Module      : Amazonka.MigrationHubStrategy.PutPortfolioPreferences
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Saves the specified migration and modernization preferences.
module Amazonka.MigrationHubStrategy.PutPortfolioPreferences
  ( -- * Creating a Request
    PutPortfolioPreferences (..),
    newPutPortfolioPreferences,

    -- * Request Lenses
    putPortfolioPreferences_databasePreferences,
    putPortfolioPreferences_prioritizeBusinessGoals,
    putPortfolioPreferences_applicationPreferences,

    -- * Destructuring the Response
    PutPortfolioPreferencesResponse (..),
    newPutPortfolioPreferencesResponse,

    -- * Response Lenses
    putPortfolioPreferencesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubStrategy.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutPortfolioPreferences' smart constructor.
data PutPortfolioPreferences = PutPortfolioPreferences'
  { -- | The transformation preferences for database applications.
    databasePreferences :: Prelude.Maybe DatabasePreferences,
    -- | The rank of the business goals based on priority.
    prioritizeBusinessGoals :: Prelude.Maybe PrioritizeBusinessGoals,
    -- | The transformation preferences for non-database applications.
    applicationPreferences :: Prelude.Maybe ApplicationPreferences
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutPortfolioPreferences' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databasePreferences', 'putPortfolioPreferences_databasePreferences' - The transformation preferences for database applications.
--
-- 'prioritizeBusinessGoals', 'putPortfolioPreferences_prioritizeBusinessGoals' - The rank of the business goals based on priority.
--
-- 'applicationPreferences', 'putPortfolioPreferences_applicationPreferences' - The transformation preferences for non-database applications.
newPutPortfolioPreferences ::
  PutPortfolioPreferences
newPutPortfolioPreferences =
  PutPortfolioPreferences'
    { databasePreferences =
        Prelude.Nothing,
      prioritizeBusinessGoals = Prelude.Nothing,
      applicationPreferences = Prelude.Nothing
    }

-- | The transformation preferences for database applications.
putPortfolioPreferences_databasePreferences :: Lens.Lens' PutPortfolioPreferences (Prelude.Maybe DatabasePreferences)
putPortfolioPreferences_databasePreferences = Lens.lens (\PutPortfolioPreferences' {databasePreferences} -> databasePreferences) (\s@PutPortfolioPreferences' {} a -> s {databasePreferences = a} :: PutPortfolioPreferences)

-- | The rank of the business goals based on priority.
putPortfolioPreferences_prioritizeBusinessGoals :: Lens.Lens' PutPortfolioPreferences (Prelude.Maybe PrioritizeBusinessGoals)
putPortfolioPreferences_prioritizeBusinessGoals = Lens.lens (\PutPortfolioPreferences' {prioritizeBusinessGoals} -> prioritizeBusinessGoals) (\s@PutPortfolioPreferences' {} a -> s {prioritizeBusinessGoals = a} :: PutPortfolioPreferences)

-- | The transformation preferences for non-database applications.
putPortfolioPreferences_applicationPreferences :: Lens.Lens' PutPortfolioPreferences (Prelude.Maybe ApplicationPreferences)
putPortfolioPreferences_applicationPreferences = Lens.lens (\PutPortfolioPreferences' {applicationPreferences} -> applicationPreferences) (\s@PutPortfolioPreferences' {} a -> s {applicationPreferences = a} :: PutPortfolioPreferences)

instance Core.AWSRequest PutPortfolioPreferences where
  type
    AWSResponse PutPortfolioPreferences =
      PutPortfolioPreferencesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutPortfolioPreferencesResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutPortfolioPreferences where
  hashWithSalt _salt PutPortfolioPreferences' {..} =
    _salt `Prelude.hashWithSalt` databasePreferences
      `Prelude.hashWithSalt` prioritizeBusinessGoals
      `Prelude.hashWithSalt` applicationPreferences

instance Prelude.NFData PutPortfolioPreferences where
  rnf PutPortfolioPreferences' {..} =
    Prelude.rnf databasePreferences
      `Prelude.seq` Prelude.rnf prioritizeBusinessGoals
      `Prelude.seq` Prelude.rnf applicationPreferences

instance Core.ToHeaders PutPortfolioPreferences where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutPortfolioPreferences where
  toJSON PutPortfolioPreferences' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("databasePreferences" Core..=)
              Prelude.<$> databasePreferences,
            ("prioritizeBusinessGoals" Core..=)
              Prelude.<$> prioritizeBusinessGoals,
            ("applicationPreferences" Core..=)
              Prelude.<$> applicationPreferences
          ]
      )

instance Core.ToPath PutPortfolioPreferences where
  toPath = Prelude.const "/put-portfolio-preferences"

instance Core.ToQuery PutPortfolioPreferences where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutPortfolioPreferencesResponse' smart constructor.
data PutPortfolioPreferencesResponse = PutPortfolioPreferencesResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutPortfolioPreferencesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putPortfolioPreferencesResponse_httpStatus' - The response's http status code.
newPutPortfolioPreferencesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutPortfolioPreferencesResponse
newPutPortfolioPreferencesResponse pHttpStatus_ =
  PutPortfolioPreferencesResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
putPortfolioPreferencesResponse_httpStatus :: Lens.Lens' PutPortfolioPreferencesResponse Prelude.Int
putPortfolioPreferencesResponse_httpStatus = Lens.lens (\PutPortfolioPreferencesResponse' {httpStatus} -> httpStatus) (\s@PutPortfolioPreferencesResponse' {} a -> s {httpStatus = a} :: PutPortfolioPreferencesResponse)

instance
  Prelude.NFData
    PutPortfolioPreferencesResponse
  where
  rnf PutPortfolioPreferencesResponse' {..} =
    Prelude.rnf httpStatus
