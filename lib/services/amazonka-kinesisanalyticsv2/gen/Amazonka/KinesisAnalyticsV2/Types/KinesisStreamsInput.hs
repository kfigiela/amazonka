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
-- Module      : Amazonka.KinesisAnalyticsV2.Types.KinesisStreamsInput
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisAnalyticsV2.Types.KinesisStreamsInput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Identifies a Kinesis data stream as the streaming source. You provide
-- the stream\'s Amazon Resource Name (ARN).
--
-- /See:/ 'newKinesisStreamsInput' smart constructor.
data KinesisStreamsInput = KinesisStreamsInput'
  { -- | The ARN of the input Kinesis data stream to read.
    resourceARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisStreamsInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARN', 'kinesisStreamsInput_resourceARN' - The ARN of the input Kinesis data stream to read.
newKinesisStreamsInput ::
  -- | 'resourceARN'
  Prelude.Text ->
  KinesisStreamsInput
newKinesisStreamsInput pResourceARN_ =
  KinesisStreamsInput' {resourceARN = pResourceARN_}

-- | The ARN of the input Kinesis data stream to read.
kinesisStreamsInput_resourceARN :: Lens.Lens' KinesisStreamsInput Prelude.Text
kinesisStreamsInput_resourceARN = Lens.lens (\KinesisStreamsInput' {resourceARN} -> resourceARN) (\s@KinesisStreamsInput' {} a -> s {resourceARN = a} :: KinesisStreamsInput)

instance Prelude.Hashable KinesisStreamsInput where
  hashWithSalt _salt KinesisStreamsInput' {..} =
    _salt `Prelude.hashWithSalt` resourceARN

instance Prelude.NFData KinesisStreamsInput where
  rnf KinesisStreamsInput' {..} =
    Prelude.rnf resourceARN

instance Core.ToJSON KinesisStreamsInput where
  toJSON KinesisStreamsInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ResourceARN" Core..= resourceARN)]
      )
