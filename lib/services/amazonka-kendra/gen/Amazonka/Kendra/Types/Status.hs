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
-- Module      : Amazonka.Kendra.Types.Status
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.Status where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.DocumentStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about the status of documents submitted for
-- indexing.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status'
  { -- | Indicates the source of the error.
    failureCode :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the document.
    documentId :: Prelude.Maybe Prelude.Text,
    -- | The current status of a document.
    --
    -- If the document was submitted for deletion, the status is @NOT_FOUND@
    -- after the document is deleted.
    documentStatus :: Prelude.Maybe DocumentStatus,
    -- | Provides detailed information about why the document couldn\'t be
    -- indexed. Use this information to correct the error before you resubmit
    -- the document for indexing.
    failureReason :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Status' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failureCode', 'status_failureCode' - Indicates the source of the error.
--
-- 'documentId', 'status_documentId' - The unique identifier of the document.
--
-- 'documentStatus', 'status_documentStatus' - The current status of a document.
--
-- If the document was submitted for deletion, the status is @NOT_FOUND@
-- after the document is deleted.
--
-- 'failureReason', 'status_failureReason' - Provides detailed information about why the document couldn\'t be
-- indexed. Use this information to correct the error before you resubmit
-- the document for indexing.
newStatus ::
  Status
newStatus =
  Status'
    { failureCode = Prelude.Nothing,
      documentId = Prelude.Nothing,
      documentStatus = Prelude.Nothing,
      failureReason = Prelude.Nothing
    }

-- | Indicates the source of the error.
status_failureCode :: Lens.Lens' Status (Prelude.Maybe Prelude.Text)
status_failureCode = Lens.lens (\Status' {failureCode} -> failureCode) (\s@Status' {} a -> s {failureCode = a} :: Status)

-- | The unique identifier of the document.
status_documentId :: Lens.Lens' Status (Prelude.Maybe Prelude.Text)
status_documentId = Lens.lens (\Status' {documentId} -> documentId) (\s@Status' {} a -> s {documentId = a} :: Status)

-- | The current status of a document.
--
-- If the document was submitted for deletion, the status is @NOT_FOUND@
-- after the document is deleted.
status_documentStatus :: Lens.Lens' Status (Prelude.Maybe DocumentStatus)
status_documentStatus = Lens.lens (\Status' {documentStatus} -> documentStatus) (\s@Status' {} a -> s {documentStatus = a} :: Status)

-- | Provides detailed information about why the document couldn\'t be
-- indexed. Use this information to correct the error before you resubmit
-- the document for indexing.
status_failureReason :: Lens.Lens' Status (Prelude.Maybe Prelude.Text)
status_failureReason = Lens.lens (\Status' {failureReason} -> failureReason) (\s@Status' {} a -> s {failureReason = a} :: Status)

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \x ->
          Status'
            Prelude.<$> (x Core..:? "FailureCode")
            Prelude.<*> (x Core..:? "DocumentId")
            Prelude.<*> (x Core..:? "DocumentStatus")
            Prelude.<*> (x Core..:? "FailureReason")
      )

instance Prelude.Hashable Status where
  hashWithSalt _salt Status' {..} =
    _salt `Prelude.hashWithSalt` failureCode
      `Prelude.hashWithSalt` documentId
      `Prelude.hashWithSalt` documentStatus
      `Prelude.hashWithSalt` failureReason

instance Prelude.NFData Status where
  rnf Status' {..} =
    Prelude.rnf failureCode
      `Prelude.seq` Prelude.rnf documentId
      `Prelude.seq` Prelude.rnf documentStatus
      `Prelude.seq` Prelude.rnf failureReason
