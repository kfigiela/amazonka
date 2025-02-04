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
-- Module      : Amazonka.CloudSearchDomains.Types.DocumentServiceWarning
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudSearchDomains.Types.DocumentServiceWarning where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A warning returned by the document service when an issue is discovered
-- while processing an upload request.
--
-- /See:/ 'newDocumentServiceWarning' smart constructor.
data DocumentServiceWarning = DocumentServiceWarning'
  { -- | The description for a warning returned by the document service.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentServiceWarning' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'documentServiceWarning_message' - The description for a warning returned by the document service.
newDocumentServiceWarning ::
  DocumentServiceWarning
newDocumentServiceWarning =
  DocumentServiceWarning' {message = Prelude.Nothing}

-- | The description for a warning returned by the document service.
documentServiceWarning_message :: Lens.Lens' DocumentServiceWarning (Prelude.Maybe Prelude.Text)
documentServiceWarning_message = Lens.lens (\DocumentServiceWarning' {message} -> message) (\s@DocumentServiceWarning' {} a -> s {message = a} :: DocumentServiceWarning)

instance Core.FromJSON DocumentServiceWarning where
  parseJSON =
    Core.withObject
      "DocumentServiceWarning"
      ( \x ->
          DocumentServiceWarning'
            Prelude.<$> (x Core..:? "message")
      )

instance Prelude.Hashable DocumentServiceWarning where
  hashWithSalt _salt DocumentServiceWarning' {..} =
    _salt `Prelude.hashWithSalt` message

instance Prelude.NFData DocumentServiceWarning where
  rnf DocumentServiceWarning' {..} = Prelude.rnf message
