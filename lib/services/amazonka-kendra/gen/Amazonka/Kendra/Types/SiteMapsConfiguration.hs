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
-- Module      : Amazonka.Kendra.Types.SiteMapsConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.SiteMapsConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the configuration information for the sitemap URLs to crawl.
--
-- /When selecting websites to index, you must adhere to the
-- <https://aws.amazon.com/aup/ Amazon Acceptable Use Policy> and all other
-- Amazon terms. Remember that you must only use Amazon Kendra Web Crawler
-- to index your own webpages, or webpages that you have authorization to
-- index./
--
-- /See:/ 'newSiteMapsConfiguration' smart constructor.
data SiteMapsConfiguration = SiteMapsConfiguration'
  { -- | The list of sitemap URLs of the websites you want to crawl.
    --
    -- The list can include a maximum of three sitemap URLs.
    siteMaps :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SiteMapsConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'siteMaps', 'siteMapsConfiguration_siteMaps' - The list of sitemap URLs of the websites you want to crawl.
--
-- The list can include a maximum of three sitemap URLs.
newSiteMapsConfiguration ::
  SiteMapsConfiguration
newSiteMapsConfiguration =
  SiteMapsConfiguration' {siteMaps = Prelude.mempty}

-- | The list of sitemap URLs of the websites you want to crawl.
--
-- The list can include a maximum of three sitemap URLs.
siteMapsConfiguration_siteMaps :: Lens.Lens' SiteMapsConfiguration [Prelude.Text]
siteMapsConfiguration_siteMaps = Lens.lens (\SiteMapsConfiguration' {siteMaps} -> siteMaps) (\s@SiteMapsConfiguration' {} a -> s {siteMaps = a} :: SiteMapsConfiguration) Prelude.. Lens.coerced

instance Core.FromJSON SiteMapsConfiguration where
  parseJSON =
    Core.withObject
      "SiteMapsConfiguration"
      ( \x ->
          SiteMapsConfiguration'
            Prelude.<$> (x Core..:? "SiteMaps" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable SiteMapsConfiguration where
  hashWithSalt _salt SiteMapsConfiguration' {..} =
    _salt `Prelude.hashWithSalt` siteMaps

instance Prelude.NFData SiteMapsConfiguration where
  rnf SiteMapsConfiguration' {..} = Prelude.rnf siteMaps

instance Core.ToJSON SiteMapsConfiguration where
  toJSON SiteMapsConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("SiteMaps" Core..= siteMaps)]
      )
