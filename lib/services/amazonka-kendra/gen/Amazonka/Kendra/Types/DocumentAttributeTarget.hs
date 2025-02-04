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
-- Module      : Amazonka.Kendra.Types.DocumentAttributeTarget
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.DocumentAttributeTarget where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.DocumentAttributeValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The target document attribute or metadata field you want to alter when
-- ingesting documents into Amazon Kendra.
--
-- For example, you can delete customer identification numbers associated
-- with the documents, stored in the document metadata field called
-- \'Customer_ID\'. You set the target key as \'Customer_ID\' and the
-- deletion flag to @TRUE@. This removes all customer ID values in the
-- field \'Customer_ID\'. This would scrub personally identifiable
-- information from each document\'s metadata.
--
-- Amazon Kendra cannot create a target field if it has not already been
-- created as an index field. After you create your index field, you can
-- create a document metadata field using @DocumentAttributeTarget@. Amazon
-- Kendra then will map your newly created metadata field to your index
-- field.
--
-- You can also use this with
-- <https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeCondition.html DocumentAttributeCondition>.
--
-- /See:/ 'newDocumentAttributeTarget' smart constructor.
data DocumentAttributeTarget = DocumentAttributeTarget'
  { -- | The target value you want to create for the target attribute.
    --
    -- For example, \'Finance\' could be the target value for the target
    -- attribute key \'Department\'.
    targetDocumentAttributeValue :: Prelude.Maybe DocumentAttributeValue,
    -- | The identifier of the target document attribute or metadata field.
    --
    -- For example, \'Department\' could be an identifier for the target
    -- attribute or metadata field that includes the department names
    -- associated with the documents.
    targetDocumentAttributeKey :: Prelude.Maybe Prelude.Text,
    -- | @TRUE@ to delete the existing target value for your specified target
    -- attribute key. You cannot create a target value and set this to @TRUE@.
    -- To create a target value (@TargetDocumentAttributeValue@), set this to
    -- @FALSE@.
    targetDocumentAttributeValueDeletion :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentAttributeTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetDocumentAttributeValue', 'documentAttributeTarget_targetDocumentAttributeValue' - The target value you want to create for the target attribute.
--
-- For example, \'Finance\' could be the target value for the target
-- attribute key \'Department\'.
--
-- 'targetDocumentAttributeKey', 'documentAttributeTarget_targetDocumentAttributeKey' - The identifier of the target document attribute or metadata field.
--
-- For example, \'Department\' could be an identifier for the target
-- attribute or metadata field that includes the department names
-- associated with the documents.
--
-- 'targetDocumentAttributeValueDeletion', 'documentAttributeTarget_targetDocumentAttributeValueDeletion' - @TRUE@ to delete the existing target value for your specified target
-- attribute key. You cannot create a target value and set this to @TRUE@.
-- To create a target value (@TargetDocumentAttributeValue@), set this to
-- @FALSE@.
newDocumentAttributeTarget ::
  DocumentAttributeTarget
newDocumentAttributeTarget =
  DocumentAttributeTarget'
    { targetDocumentAttributeValue =
        Prelude.Nothing,
      targetDocumentAttributeKey = Prelude.Nothing,
      targetDocumentAttributeValueDeletion =
        Prelude.Nothing
    }

-- | The target value you want to create for the target attribute.
--
-- For example, \'Finance\' could be the target value for the target
-- attribute key \'Department\'.
documentAttributeTarget_targetDocumentAttributeValue :: Lens.Lens' DocumentAttributeTarget (Prelude.Maybe DocumentAttributeValue)
documentAttributeTarget_targetDocumentAttributeValue = Lens.lens (\DocumentAttributeTarget' {targetDocumentAttributeValue} -> targetDocumentAttributeValue) (\s@DocumentAttributeTarget' {} a -> s {targetDocumentAttributeValue = a} :: DocumentAttributeTarget)

-- | The identifier of the target document attribute or metadata field.
--
-- For example, \'Department\' could be an identifier for the target
-- attribute or metadata field that includes the department names
-- associated with the documents.
documentAttributeTarget_targetDocumentAttributeKey :: Lens.Lens' DocumentAttributeTarget (Prelude.Maybe Prelude.Text)
documentAttributeTarget_targetDocumentAttributeKey = Lens.lens (\DocumentAttributeTarget' {targetDocumentAttributeKey} -> targetDocumentAttributeKey) (\s@DocumentAttributeTarget' {} a -> s {targetDocumentAttributeKey = a} :: DocumentAttributeTarget)

-- | @TRUE@ to delete the existing target value for your specified target
-- attribute key. You cannot create a target value and set this to @TRUE@.
-- To create a target value (@TargetDocumentAttributeValue@), set this to
-- @FALSE@.
documentAttributeTarget_targetDocumentAttributeValueDeletion :: Lens.Lens' DocumentAttributeTarget (Prelude.Maybe Prelude.Bool)
documentAttributeTarget_targetDocumentAttributeValueDeletion = Lens.lens (\DocumentAttributeTarget' {targetDocumentAttributeValueDeletion} -> targetDocumentAttributeValueDeletion) (\s@DocumentAttributeTarget' {} a -> s {targetDocumentAttributeValueDeletion = a} :: DocumentAttributeTarget)

instance Core.FromJSON DocumentAttributeTarget where
  parseJSON =
    Core.withObject
      "DocumentAttributeTarget"
      ( \x ->
          DocumentAttributeTarget'
            Prelude.<$> (x Core..:? "TargetDocumentAttributeValue")
            Prelude.<*> (x Core..:? "TargetDocumentAttributeKey")
            Prelude.<*> (x Core..:? "TargetDocumentAttributeValueDeletion")
      )

instance Prelude.Hashable DocumentAttributeTarget where
  hashWithSalt _salt DocumentAttributeTarget' {..} =
    _salt
      `Prelude.hashWithSalt` targetDocumentAttributeValue
      `Prelude.hashWithSalt` targetDocumentAttributeKey
      `Prelude.hashWithSalt` targetDocumentAttributeValueDeletion

instance Prelude.NFData DocumentAttributeTarget where
  rnf DocumentAttributeTarget' {..} =
    Prelude.rnf targetDocumentAttributeValue
      `Prelude.seq` Prelude.rnf targetDocumentAttributeKey
      `Prelude.seq` Prelude.rnf targetDocumentAttributeValueDeletion

instance Core.ToJSON DocumentAttributeTarget where
  toJSON DocumentAttributeTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TargetDocumentAttributeValue" Core..=)
              Prelude.<$> targetDocumentAttributeValue,
            ("TargetDocumentAttributeKey" Core..=)
              Prelude.<$> targetDocumentAttributeKey,
            ("TargetDocumentAttributeValueDeletion" Core..=)
              Prelude.<$> targetDocumentAttributeValueDeletion
          ]
      )
