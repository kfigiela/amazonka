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
-- Module      : Amazonka.WAFV2.Types.HeaderMatchPattern
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.HeaderMatchPattern where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WAFV2.Types.All

-- | The filter to use to identify the subset of headers to inspect in a web
-- request.
--
-- You must specify exactly one setting: either @All@, @IncludedHeaders@,
-- or @ExcludedHeaders@.
--
-- Example JSON:
-- @\"MatchPattern\": { \"ExcludedHeaders\": {\"KeyToExclude1\", \"KeyToExclude2\"} }@
--
-- /See:/ 'newHeaderMatchPattern' smart constructor.
data HeaderMatchPattern = HeaderMatchPattern'
  { -- | Inspect only the headers whose keys don\'t match any of the strings
    -- specified here.
    excludedHeaders :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Inspect only the headers that have a key that matches one of the strings
    -- specified here.
    includedHeaders :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Inspect all headers.
    all :: Prelude.Maybe All
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HeaderMatchPattern' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'excludedHeaders', 'headerMatchPattern_excludedHeaders' - Inspect only the headers whose keys don\'t match any of the strings
-- specified here.
--
-- 'includedHeaders', 'headerMatchPattern_includedHeaders' - Inspect only the headers that have a key that matches one of the strings
-- specified here.
--
-- 'all', 'headerMatchPattern_all' - Inspect all headers.
newHeaderMatchPattern ::
  HeaderMatchPattern
newHeaderMatchPattern =
  HeaderMatchPattern'
    { excludedHeaders =
        Prelude.Nothing,
      includedHeaders = Prelude.Nothing,
      all = Prelude.Nothing
    }

-- | Inspect only the headers whose keys don\'t match any of the strings
-- specified here.
headerMatchPattern_excludedHeaders :: Lens.Lens' HeaderMatchPattern (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
headerMatchPattern_excludedHeaders = Lens.lens (\HeaderMatchPattern' {excludedHeaders} -> excludedHeaders) (\s@HeaderMatchPattern' {} a -> s {excludedHeaders = a} :: HeaderMatchPattern) Prelude.. Lens.mapping Lens.coerced

-- | Inspect only the headers that have a key that matches one of the strings
-- specified here.
headerMatchPattern_includedHeaders :: Lens.Lens' HeaderMatchPattern (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
headerMatchPattern_includedHeaders = Lens.lens (\HeaderMatchPattern' {includedHeaders} -> includedHeaders) (\s@HeaderMatchPattern' {} a -> s {includedHeaders = a} :: HeaderMatchPattern) Prelude.. Lens.mapping Lens.coerced

-- | Inspect all headers.
headerMatchPattern_all :: Lens.Lens' HeaderMatchPattern (Prelude.Maybe All)
headerMatchPattern_all = Lens.lens (\HeaderMatchPattern' {all} -> all) (\s@HeaderMatchPattern' {} a -> s {all = a} :: HeaderMatchPattern)

instance Core.FromJSON HeaderMatchPattern where
  parseJSON =
    Core.withObject
      "HeaderMatchPattern"
      ( \x ->
          HeaderMatchPattern'
            Prelude.<$> (x Core..:? "ExcludedHeaders")
            Prelude.<*> (x Core..:? "IncludedHeaders")
            Prelude.<*> (x Core..:? "All")
      )

instance Prelude.Hashable HeaderMatchPattern where
  hashWithSalt _salt HeaderMatchPattern' {..} =
    _salt `Prelude.hashWithSalt` excludedHeaders
      `Prelude.hashWithSalt` includedHeaders
      `Prelude.hashWithSalt` all

instance Prelude.NFData HeaderMatchPattern where
  rnf HeaderMatchPattern' {..} =
    Prelude.rnf excludedHeaders
      `Prelude.seq` Prelude.rnf includedHeaders
      `Prelude.seq` Prelude.rnf all

instance Core.ToJSON HeaderMatchPattern where
  toJSON HeaderMatchPattern' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ExcludedHeaders" Core..=)
              Prelude.<$> excludedHeaders,
            ("IncludedHeaders" Core..=)
              Prelude.<$> includedHeaders,
            ("All" Core..=) Prelude.<$> all
          ]
      )
