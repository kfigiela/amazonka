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
-- Module      : Amazonka.Kendra.Types.ServiceNowServiceCatalogConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.ServiceNowServiceCatalogConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.DataSourceToIndexFieldMapping
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the configuration information for crawling service catalog
-- items in the ServiceNow site
--
-- /See:/ 'newServiceNowServiceCatalogConfiguration' smart constructor.
data ServiceNowServiceCatalogConfiguration = ServiceNowServiceCatalogConfiguration'
  { -- | A list of regular expression patterns to include certain attachments of
    -- catalogs in your ServiceNow. Item that match the patterns are included
    -- in the index. Items that don\'t match the patterns are excluded from the
    -- index. If an item matches both an inclusion and exclusion pattern, the
    -- exclusion pattern takes precedence and the item isn\'t included in the
    -- index.
    --
    -- The regex is applied to the file name of the attachment.
    includeAttachmentFilePatterns :: Prelude.Maybe [Prelude.Text],
    -- | @TRUE@ to index attachments to service catalog items.
    crawlAttachments :: Prelude.Maybe Prelude.Bool,
    -- | A list of regular expression patterns to exclude certain attachments of
    -- catalogs in your ServiceNow. Item that match the patterns are excluded
    -- from the index. Items that don\'t match the patterns are included in the
    -- index. If an item matches both an inclusion and exclusion pattern, the
    -- exclusion pattern takes precedence and the item isn\'t included in the
    -- index.
    --
    -- The regex is applied to the file name of the attachment.
    excludeAttachmentFilePatterns :: Prelude.Maybe [Prelude.Text],
    -- | Maps attributes or field names of catalogs to Amazon Kendra index field
    -- names. To create custom fields, use the @UpdateIndex@ API before you map
    -- to ServiceNow fields. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
    -- The ServiceNow data source field names must exist in your ServiceNow
    -- custom metadata.
    fieldMappings :: Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping),
    -- | The name of the ServiceNow field that is mapped to the index document
    -- title field.
    documentTitleFieldName :: Prelude.Maybe Prelude.Text,
    -- | The name of the ServiceNow field that is mapped to the index document
    -- contents field in the Amazon Kendra index.
    documentDataFieldName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceNowServiceCatalogConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeAttachmentFilePatterns', 'serviceNowServiceCatalogConfiguration_includeAttachmentFilePatterns' - A list of regular expression patterns to include certain attachments of
-- catalogs in your ServiceNow. Item that match the patterns are included
-- in the index. Items that don\'t match the patterns are excluded from the
-- index. If an item matches both an inclusion and exclusion pattern, the
-- exclusion pattern takes precedence and the item isn\'t included in the
-- index.
--
-- The regex is applied to the file name of the attachment.
--
-- 'crawlAttachments', 'serviceNowServiceCatalogConfiguration_crawlAttachments' - @TRUE@ to index attachments to service catalog items.
--
-- 'excludeAttachmentFilePatterns', 'serviceNowServiceCatalogConfiguration_excludeAttachmentFilePatterns' - A list of regular expression patterns to exclude certain attachments of
-- catalogs in your ServiceNow. Item that match the patterns are excluded
-- from the index. Items that don\'t match the patterns are included in the
-- index. If an item matches both an inclusion and exclusion pattern, the
-- exclusion pattern takes precedence and the item isn\'t included in the
-- index.
--
-- The regex is applied to the file name of the attachment.
--
-- 'fieldMappings', 'serviceNowServiceCatalogConfiguration_fieldMappings' - Maps attributes or field names of catalogs to Amazon Kendra index field
-- names. To create custom fields, use the @UpdateIndex@ API before you map
-- to ServiceNow fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The ServiceNow data source field names must exist in your ServiceNow
-- custom metadata.
--
-- 'documentTitleFieldName', 'serviceNowServiceCatalogConfiguration_documentTitleFieldName' - The name of the ServiceNow field that is mapped to the index document
-- title field.
--
-- 'documentDataFieldName', 'serviceNowServiceCatalogConfiguration_documentDataFieldName' - The name of the ServiceNow field that is mapped to the index document
-- contents field in the Amazon Kendra index.
newServiceNowServiceCatalogConfiguration ::
  -- | 'documentDataFieldName'
  Prelude.Text ->
  ServiceNowServiceCatalogConfiguration
newServiceNowServiceCatalogConfiguration
  pDocumentDataFieldName_ =
    ServiceNowServiceCatalogConfiguration'
      { includeAttachmentFilePatterns =
          Prelude.Nothing,
        crawlAttachments = Prelude.Nothing,
        excludeAttachmentFilePatterns =
          Prelude.Nothing,
        fieldMappings = Prelude.Nothing,
        documentTitleFieldName =
          Prelude.Nothing,
        documentDataFieldName =
          pDocumentDataFieldName_
      }

-- | A list of regular expression patterns to include certain attachments of
-- catalogs in your ServiceNow. Item that match the patterns are included
-- in the index. Items that don\'t match the patterns are excluded from the
-- index. If an item matches both an inclusion and exclusion pattern, the
-- exclusion pattern takes precedence and the item isn\'t included in the
-- index.
--
-- The regex is applied to the file name of the attachment.
serviceNowServiceCatalogConfiguration_includeAttachmentFilePatterns :: Lens.Lens' ServiceNowServiceCatalogConfiguration (Prelude.Maybe [Prelude.Text])
serviceNowServiceCatalogConfiguration_includeAttachmentFilePatterns = Lens.lens (\ServiceNowServiceCatalogConfiguration' {includeAttachmentFilePatterns} -> includeAttachmentFilePatterns) (\s@ServiceNowServiceCatalogConfiguration' {} a -> s {includeAttachmentFilePatterns = a} :: ServiceNowServiceCatalogConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | @TRUE@ to index attachments to service catalog items.
serviceNowServiceCatalogConfiguration_crawlAttachments :: Lens.Lens' ServiceNowServiceCatalogConfiguration (Prelude.Maybe Prelude.Bool)
serviceNowServiceCatalogConfiguration_crawlAttachments = Lens.lens (\ServiceNowServiceCatalogConfiguration' {crawlAttachments} -> crawlAttachments) (\s@ServiceNowServiceCatalogConfiguration' {} a -> s {crawlAttachments = a} :: ServiceNowServiceCatalogConfiguration)

-- | A list of regular expression patterns to exclude certain attachments of
-- catalogs in your ServiceNow. Item that match the patterns are excluded
-- from the index. Items that don\'t match the patterns are included in the
-- index. If an item matches both an inclusion and exclusion pattern, the
-- exclusion pattern takes precedence and the item isn\'t included in the
-- index.
--
-- The regex is applied to the file name of the attachment.
serviceNowServiceCatalogConfiguration_excludeAttachmentFilePatterns :: Lens.Lens' ServiceNowServiceCatalogConfiguration (Prelude.Maybe [Prelude.Text])
serviceNowServiceCatalogConfiguration_excludeAttachmentFilePatterns = Lens.lens (\ServiceNowServiceCatalogConfiguration' {excludeAttachmentFilePatterns} -> excludeAttachmentFilePatterns) (\s@ServiceNowServiceCatalogConfiguration' {} a -> s {excludeAttachmentFilePatterns = a} :: ServiceNowServiceCatalogConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Maps attributes or field names of catalogs to Amazon Kendra index field
-- names. To create custom fields, use the @UpdateIndex@ API before you map
-- to ServiceNow fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The ServiceNow data source field names must exist in your ServiceNow
-- custom metadata.
serviceNowServiceCatalogConfiguration_fieldMappings :: Lens.Lens' ServiceNowServiceCatalogConfiguration (Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping))
serviceNowServiceCatalogConfiguration_fieldMappings = Lens.lens (\ServiceNowServiceCatalogConfiguration' {fieldMappings} -> fieldMappings) (\s@ServiceNowServiceCatalogConfiguration' {} a -> s {fieldMappings = a} :: ServiceNowServiceCatalogConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The name of the ServiceNow field that is mapped to the index document
-- title field.
serviceNowServiceCatalogConfiguration_documentTitleFieldName :: Lens.Lens' ServiceNowServiceCatalogConfiguration (Prelude.Maybe Prelude.Text)
serviceNowServiceCatalogConfiguration_documentTitleFieldName = Lens.lens (\ServiceNowServiceCatalogConfiguration' {documentTitleFieldName} -> documentTitleFieldName) (\s@ServiceNowServiceCatalogConfiguration' {} a -> s {documentTitleFieldName = a} :: ServiceNowServiceCatalogConfiguration)

-- | The name of the ServiceNow field that is mapped to the index document
-- contents field in the Amazon Kendra index.
serviceNowServiceCatalogConfiguration_documentDataFieldName :: Lens.Lens' ServiceNowServiceCatalogConfiguration Prelude.Text
serviceNowServiceCatalogConfiguration_documentDataFieldName = Lens.lens (\ServiceNowServiceCatalogConfiguration' {documentDataFieldName} -> documentDataFieldName) (\s@ServiceNowServiceCatalogConfiguration' {} a -> s {documentDataFieldName = a} :: ServiceNowServiceCatalogConfiguration)

instance
  Core.FromJSON
    ServiceNowServiceCatalogConfiguration
  where
  parseJSON =
    Core.withObject
      "ServiceNowServiceCatalogConfiguration"
      ( \x ->
          ServiceNowServiceCatalogConfiguration'
            Prelude.<$> ( x Core..:? "IncludeAttachmentFilePatterns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "CrawlAttachments")
            Prelude.<*> ( x Core..:? "ExcludeAttachmentFilePatterns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "FieldMappings")
            Prelude.<*> (x Core..:? "DocumentTitleFieldName")
            Prelude.<*> (x Core..: "DocumentDataFieldName")
      )

instance
  Prelude.Hashable
    ServiceNowServiceCatalogConfiguration
  where
  hashWithSalt
    _salt
    ServiceNowServiceCatalogConfiguration' {..} =
      _salt
        `Prelude.hashWithSalt` includeAttachmentFilePatterns
        `Prelude.hashWithSalt` crawlAttachments
        `Prelude.hashWithSalt` excludeAttachmentFilePatterns
        `Prelude.hashWithSalt` fieldMappings
        `Prelude.hashWithSalt` documentTitleFieldName
        `Prelude.hashWithSalt` documentDataFieldName

instance
  Prelude.NFData
    ServiceNowServiceCatalogConfiguration
  where
  rnf ServiceNowServiceCatalogConfiguration' {..} =
    Prelude.rnf includeAttachmentFilePatterns
      `Prelude.seq` Prelude.rnf crawlAttachments
      `Prelude.seq` Prelude.rnf excludeAttachmentFilePatterns
      `Prelude.seq` Prelude.rnf fieldMappings
      `Prelude.seq` Prelude.rnf documentTitleFieldName
      `Prelude.seq` Prelude.rnf documentDataFieldName

instance
  Core.ToJSON
    ServiceNowServiceCatalogConfiguration
  where
  toJSON ServiceNowServiceCatalogConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IncludeAttachmentFilePatterns" Core..=)
              Prelude.<$> includeAttachmentFilePatterns,
            ("CrawlAttachments" Core..=)
              Prelude.<$> crawlAttachments,
            ("ExcludeAttachmentFilePatterns" Core..=)
              Prelude.<$> excludeAttachmentFilePatterns,
            ("FieldMappings" Core..=) Prelude.<$> fieldMappings,
            ("DocumentTitleFieldName" Core..=)
              Prelude.<$> documentTitleFieldName,
            Prelude.Just
              ( "DocumentDataFieldName"
                  Core..= documentDataFieldName
              )
          ]
      )
