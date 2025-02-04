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
-- Module      : Amazonka.SageMaker.Types.ClarifyShapConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ClarifyShapConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.ClarifyShapBaselineConfig
import Amazonka.SageMaker.Types.ClarifyTextConfig

-- | The configuration for SHAP analysis using SageMaker Clarify Explainer.
--
-- /See:/ 'newClarifyShapConfig' smart constructor.
data ClarifyShapConfig = ClarifyShapConfig'
  { -- | The starting value used to initialize the random number generator in the
    -- explainer. Provide a value for this parameter to obtain a deterministic
    -- SHAP result.
    seed :: Prelude.Maybe Prelude.Int,
    -- | A parameter that indicates if text features are treated as text and
    -- explanations are provided for individual units of text. Required for
    -- natural language processing (NLP) explainability only.
    textConfig :: Prelude.Maybe ClarifyTextConfig,
    -- | A Boolean toggle to indicate if you want to use the logit function
    -- (true) or log-odds units (false) for model predictions. Defaults to
    -- false.
    useLogit :: Prelude.Maybe Prelude.Bool,
    -- | The number of samples to be used for analysis by the Kernal SHAP
    -- algorithm.
    --
    -- The number of samples determines the size of the synthetic dataset,
    -- which has an impact on latency of explainability requests. For more
    -- information, see the __Synthetic data__ of
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html Configure and create an endpoint>.
    numberOfSamples :: Prelude.Maybe Prelude.Natural,
    -- | The configuration for the SHAP baseline of the Kernal SHAP algorithm.
    shapBaselineConfig :: ClarifyShapBaselineConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClarifyShapConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'seed', 'clarifyShapConfig_seed' - The starting value used to initialize the random number generator in the
-- explainer. Provide a value for this parameter to obtain a deterministic
-- SHAP result.
--
-- 'textConfig', 'clarifyShapConfig_textConfig' - A parameter that indicates if text features are treated as text and
-- explanations are provided for individual units of text. Required for
-- natural language processing (NLP) explainability only.
--
-- 'useLogit', 'clarifyShapConfig_useLogit' - A Boolean toggle to indicate if you want to use the logit function
-- (true) or log-odds units (false) for model predictions. Defaults to
-- false.
--
-- 'numberOfSamples', 'clarifyShapConfig_numberOfSamples' - The number of samples to be used for analysis by the Kernal SHAP
-- algorithm.
--
-- The number of samples determines the size of the synthetic dataset,
-- which has an impact on latency of explainability requests. For more
-- information, see the __Synthetic data__ of
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html Configure and create an endpoint>.
--
-- 'shapBaselineConfig', 'clarifyShapConfig_shapBaselineConfig' - The configuration for the SHAP baseline of the Kernal SHAP algorithm.
newClarifyShapConfig ::
  -- | 'shapBaselineConfig'
  ClarifyShapBaselineConfig ->
  ClarifyShapConfig
newClarifyShapConfig pShapBaselineConfig_ =
  ClarifyShapConfig'
    { seed = Prelude.Nothing,
      textConfig = Prelude.Nothing,
      useLogit = Prelude.Nothing,
      numberOfSamples = Prelude.Nothing,
      shapBaselineConfig = pShapBaselineConfig_
    }

-- | The starting value used to initialize the random number generator in the
-- explainer. Provide a value for this parameter to obtain a deterministic
-- SHAP result.
clarifyShapConfig_seed :: Lens.Lens' ClarifyShapConfig (Prelude.Maybe Prelude.Int)
clarifyShapConfig_seed = Lens.lens (\ClarifyShapConfig' {seed} -> seed) (\s@ClarifyShapConfig' {} a -> s {seed = a} :: ClarifyShapConfig)

-- | A parameter that indicates if text features are treated as text and
-- explanations are provided for individual units of text. Required for
-- natural language processing (NLP) explainability only.
clarifyShapConfig_textConfig :: Lens.Lens' ClarifyShapConfig (Prelude.Maybe ClarifyTextConfig)
clarifyShapConfig_textConfig = Lens.lens (\ClarifyShapConfig' {textConfig} -> textConfig) (\s@ClarifyShapConfig' {} a -> s {textConfig = a} :: ClarifyShapConfig)

-- | A Boolean toggle to indicate if you want to use the logit function
-- (true) or log-odds units (false) for model predictions. Defaults to
-- false.
clarifyShapConfig_useLogit :: Lens.Lens' ClarifyShapConfig (Prelude.Maybe Prelude.Bool)
clarifyShapConfig_useLogit = Lens.lens (\ClarifyShapConfig' {useLogit} -> useLogit) (\s@ClarifyShapConfig' {} a -> s {useLogit = a} :: ClarifyShapConfig)

-- | The number of samples to be used for analysis by the Kernal SHAP
-- algorithm.
--
-- The number of samples determines the size of the synthetic dataset,
-- which has an impact on latency of explainability requests. For more
-- information, see the __Synthetic data__ of
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html Configure and create an endpoint>.
clarifyShapConfig_numberOfSamples :: Lens.Lens' ClarifyShapConfig (Prelude.Maybe Prelude.Natural)
clarifyShapConfig_numberOfSamples = Lens.lens (\ClarifyShapConfig' {numberOfSamples} -> numberOfSamples) (\s@ClarifyShapConfig' {} a -> s {numberOfSamples = a} :: ClarifyShapConfig)

-- | The configuration for the SHAP baseline of the Kernal SHAP algorithm.
clarifyShapConfig_shapBaselineConfig :: Lens.Lens' ClarifyShapConfig ClarifyShapBaselineConfig
clarifyShapConfig_shapBaselineConfig = Lens.lens (\ClarifyShapConfig' {shapBaselineConfig} -> shapBaselineConfig) (\s@ClarifyShapConfig' {} a -> s {shapBaselineConfig = a} :: ClarifyShapConfig)

instance Core.FromJSON ClarifyShapConfig where
  parseJSON =
    Core.withObject
      "ClarifyShapConfig"
      ( \x ->
          ClarifyShapConfig'
            Prelude.<$> (x Core..:? "Seed")
            Prelude.<*> (x Core..:? "TextConfig")
            Prelude.<*> (x Core..:? "UseLogit")
            Prelude.<*> (x Core..:? "NumberOfSamples")
            Prelude.<*> (x Core..: "ShapBaselineConfig")
      )

instance Prelude.Hashable ClarifyShapConfig where
  hashWithSalt _salt ClarifyShapConfig' {..} =
    _salt `Prelude.hashWithSalt` seed
      `Prelude.hashWithSalt` textConfig
      `Prelude.hashWithSalt` useLogit
      `Prelude.hashWithSalt` numberOfSamples
      `Prelude.hashWithSalt` shapBaselineConfig

instance Prelude.NFData ClarifyShapConfig where
  rnf ClarifyShapConfig' {..} =
    Prelude.rnf seed
      `Prelude.seq` Prelude.rnf textConfig
      `Prelude.seq` Prelude.rnf useLogit
      `Prelude.seq` Prelude.rnf numberOfSamples
      `Prelude.seq` Prelude.rnf shapBaselineConfig

instance Core.ToJSON ClarifyShapConfig where
  toJSON ClarifyShapConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Seed" Core..=) Prelude.<$> seed,
            ("TextConfig" Core..=) Prelude.<$> textConfig,
            ("UseLogit" Core..=) Prelude.<$> useLogit,
            ("NumberOfSamples" Core..=)
              Prelude.<$> numberOfSamples,
            Prelude.Just
              ("ShapBaselineConfig" Core..= shapBaselineConfig)
          ]
      )
