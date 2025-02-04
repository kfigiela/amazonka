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
-- Module      : Amazonka.MediaLive.Types.Scte20PlusEmbeddedDestinationSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.Scte20PlusEmbeddedDestinationSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Scte20 Plus Embedded Destination Settings
--
-- /See:/ 'newScte20PlusEmbeddedDestinationSettings' smart constructor.
data Scte20PlusEmbeddedDestinationSettings = Scte20PlusEmbeddedDestinationSettings'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Scte20PlusEmbeddedDestinationSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newScte20PlusEmbeddedDestinationSettings ::
  Scte20PlusEmbeddedDestinationSettings
newScte20PlusEmbeddedDestinationSettings =
  Scte20PlusEmbeddedDestinationSettings'

instance
  Core.FromJSON
    Scte20PlusEmbeddedDestinationSettings
  where
  parseJSON =
    Core.withObject
      "Scte20PlusEmbeddedDestinationSettings"
      ( \x ->
          Prelude.pure Scte20PlusEmbeddedDestinationSettings'
      )

instance
  Prelude.Hashable
    Scte20PlusEmbeddedDestinationSettings
  where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance
  Prelude.NFData
    Scte20PlusEmbeddedDestinationSettings
  where
  rnf _ = ()

instance
  Core.ToJSON
    Scte20PlusEmbeddedDestinationSettings
  where
  toJSON = Prelude.const (Core.Object Prelude.mempty)
