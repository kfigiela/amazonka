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
-- Module      : Amazonka.SageMaker.Types.ClarifyShapBaselineConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ClarifyShapBaselineConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configuration for the
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-feature-attribute-shap-baselines.html SHAP baseline>
-- (also called the background or reference dataset) of the Kernal SHAP
-- algorithm.
--
-- -   The number of records in the baseline data determines the size of
--     the synthetic dataset, which has an impact on latency of
--     explainability requests. For more information, see the __Synthetic
--     data__ of
--     <https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html Configure and create an endpoint>.
--
-- -   @ShapBaseline@ and @ShapBaselineUri@ are mutually exclusive
--     parameters. One or the either is required to configure a SHAP
--     baseline.
--
-- /See:/ 'newClarifyShapBaselineConfig' smart constructor.
data ClarifyShapBaselineConfig = ClarifyShapBaselineConfig'
  { -- | The inline SHAP baseline data in string format. @ShapBaseline@ can have
    -- one or multiple records to be used as the baseline dataset. The format
    -- of the SHAP baseline file should be the same format as the training
    -- dataset. For example, if the training dataset is in CSV format and each
    -- record contains four features, and all features are numerical, then the
    -- format of the baseline data should also share these characteristics. For
    -- natural language processing (NLP) of text columns, the baseline value
    -- should be the value used to replace the unit of text specified by the
    -- @Granularity@ of the @TextConfig@ parameter. The size limit for
    -- @ShapBasline@ is 4 KB. Use the @ShapBaselineUri@ parameter if you want
    -- to provide more than 4 KB of baseline data.
    shapBaseline :: Prelude.Maybe Prelude.Text,
    -- | The uniform resource identifier (URI) of the S3 bucket where the SHAP
    -- baseline file is stored. The format of the SHAP baseline file should be
    -- the same format as the format of the training dataset. For example, if
    -- the training dataset is in CSV format, and each record in the training
    -- dataset has four features, and all features are numerical, then the
    -- baseline file should also have this same format. Each record should
    -- contain only the features. If you are using a virtual private cloud
    -- (VPC), the @ShapBaselineUri@ should be accessible to the VPC. For more
    -- information about setting up endpoints with Amazon Virtual Private
    -- Cloud, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/infrastructure-give-access.html Give SageMaker access to Resources in your Amazon Virtual Private Cloud>.
    shapBaselineUri :: Prelude.Maybe Prelude.Text,
    -- | The MIME type of the baseline data. Choose from @\'text\/csv\'@ or
    -- @\'application\/jsonlines\'@. Defaults to @\'text\/csv\'@.
    mimeType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClarifyShapBaselineConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shapBaseline', 'clarifyShapBaselineConfig_shapBaseline' - The inline SHAP baseline data in string format. @ShapBaseline@ can have
-- one or multiple records to be used as the baseline dataset. The format
-- of the SHAP baseline file should be the same format as the training
-- dataset. For example, if the training dataset is in CSV format and each
-- record contains four features, and all features are numerical, then the
-- format of the baseline data should also share these characteristics. For
-- natural language processing (NLP) of text columns, the baseline value
-- should be the value used to replace the unit of text specified by the
-- @Granularity@ of the @TextConfig@ parameter. The size limit for
-- @ShapBasline@ is 4 KB. Use the @ShapBaselineUri@ parameter if you want
-- to provide more than 4 KB of baseline data.
--
-- 'shapBaselineUri', 'clarifyShapBaselineConfig_shapBaselineUri' - The uniform resource identifier (URI) of the S3 bucket where the SHAP
-- baseline file is stored. The format of the SHAP baseline file should be
-- the same format as the format of the training dataset. For example, if
-- the training dataset is in CSV format, and each record in the training
-- dataset has four features, and all features are numerical, then the
-- baseline file should also have this same format. Each record should
-- contain only the features. If you are using a virtual private cloud
-- (VPC), the @ShapBaselineUri@ should be accessible to the VPC. For more
-- information about setting up endpoints with Amazon Virtual Private
-- Cloud, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/infrastructure-give-access.html Give SageMaker access to Resources in your Amazon Virtual Private Cloud>.
--
-- 'mimeType', 'clarifyShapBaselineConfig_mimeType' - The MIME type of the baseline data. Choose from @\'text\/csv\'@ or
-- @\'application\/jsonlines\'@. Defaults to @\'text\/csv\'@.
newClarifyShapBaselineConfig ::
  ClarifyShapBaselineConfig
newClarifyShapBaselineConfig =
  ClarifyShapBaselineConfig'
    { shapBaseline =
        Prelude.Nothing,
      shapBaselineUri = Prelude.Nothing,
      mimeType = Prelude.Nothing
    }

-- | The inline SHAP baseline data in string format. @ShapBaseline@ can have
-- one or multiple records to be used as the baseline dataset. The format
-- of the SHAP baseline file should be the same format as the training
-- dataset. For example, if the training dataset is in CSV format and each
-- record contains four features, and all features are numerical, then the
-- format of the baseline data should also share these characteristics. For
-- natural language processing (NLP) of text columns, the baseline value
-- should be the value used to replace the unit of text specified by the
-- @Granularity@ of the @TextConfig@ parameter. The size limit for
-- @ShapBasline@ is 4 KB. Use the @ShapBaselineUri@ parameter if you want
-- to provide more than 4 KB of baseline data.
clarifyShapBaselineConfig_shapBaseline :: Lens.Lens' ClarifyShapBaselineConfig (Prelude.Maybe Prelude.Text)
clarifyShapBaselineConfig_shapBaseline = Lens.lens (\ClarifyShapBaselineConfig' {shapBaseline} -> shapBaseline) (\s@ClarifyShapBaselineConfig' {} a -> s {shapBaseline = a} :: ClarifyShapBaselineConfig)

-- | The uniform resource identifier (URI) of the S3 bucket where the SHAP
-- baseline file is stored. The format of the SHAP baseline file should be
-- the same format as the format of the training dataset. For example, if
-- the training dataset is in CSV format, and each record in the training
-- dataset has four features, and all features are numerical, then the
-- baseline file should also have this same format. Each record should
-- contain only the features. If you are using a virtual private cloud
-- (VPC), the @ShapBaselineUri@ should be accessible to the VPC. For more
-- information about setting up endpoints with Amazon Virtual Private
-- Cloud, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/infrastructure-give-access.html Give SageMaker access to Resources in your Amazon Virtual Private Cloud>.
clarifyShapBaselineConfig_shapBaselineUri :: Lens.Lens' ClarifyShapBaselineConfig (Prelude.Maybe Prelude.Text)
clarifyShapBaselineConfig_shapBaselineUri = Lens.lens (\ClarifyShapBaselineConfig' {shapBaselineUri} -> shapBaselineUri) (\s@ClarifyShapBaselineConfig' {} a -> s {shapBaselineUri = a} :: ClarifyShapBaselineConfig)

-- | The MIME type of the baseline data. Choose from @\'text\/csv\'@ or
-- @\'application\/jsonlines\'@. Defaults to @\'text\/csv\'@.
clarifyShapBaselineConfig_mimeType :: Lens.Lens' ClarifyShapBaselineConfig (Prelude.Maybe Prelude.Text)
clarifyShapBaselineConfig_mimeType = Lens.lens (\ClarifyShapBaselineConfig' {mimeType} -> mimeType) (\s@ClarifyShapBaselineConfig' {} a -> s {mimeType = a} :: ClarifyShapBaselineConfig)

instance Core.FromJSON ClarifyShapBaselineConfig where
  parseJSON =
    Core.withObject
      "ClarifyShapBaselineConfig"
      ( \x ->
          ClarifyShapBaselineConfig'
            Prelude.<$> (x Core..:? "ShapBaseline")
            Prelude.<*> (x Core..:? "ShapBaselineUri")
            Prelude.<*> (x Core..:? "MimeType")
      )

instance Prelude.Hashable ClarifyShapBaselineConfig where
  hashWithSalt _salt ClarifyShapBaselineConfig' {..} =
    _salt `Prelude.hashWithSalt` shapBaseline
      `Prelude.hashWithSalt` shapBaselineUri
      `Prelude.hashWithSalt` mimeType

instance Prelude.NFData ClarifyShapBaselineConfig where
  rnf ClarifyShapBaselineConfig' {..} =
    Prelude.rnf shapBaseline
      `Prelude.seq` Prelude.rnf shapBaselineUri
      `Prelude.seq` Prelude.rnf mimeType

instance Core.ToJSON ClarifyShapBaselineConfig where
  toJSON ClarifyShapBaselineConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ShapBaseline" Core..=) Prelude.<$> shapBaseline,
            ("ShapBaselineUri" Core..=)
              Prelude.<$> shapBaselineUri,
            ("MimeType" Core..=) Prelude.<$> mimeType
          ]
      )
