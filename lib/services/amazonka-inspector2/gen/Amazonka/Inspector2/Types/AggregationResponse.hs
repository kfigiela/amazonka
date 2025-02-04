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
-- Module      : Amazonka.Inspector2.Types.AggregationResponse
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Inspector2.Types.AggregationResponse where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types.AccountAggregationResponse
import Amazonka.Inspector2.Types.AmiAggregationResponse
import Amazonka.Inspector2.Types.AwsEcrContainerAggregationResponse
import Amazonka.Inspector2.Types.Ec2InstanceAggregationResponse
import Amazonka.Inspector2.Types.FindingTypeAggregationResponse
import Amazonka.Inspector2.Types.ImageLayerAggregationResponse
import Amazonka.Inspector2.Types.PackageAggregationResponse
import Amazonka.Inspector2.Types.RepositoryAggregationResponse
import Amazonka.Inspector2.Types.TitleAggregationResponse
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A structure that contains details about the results of an aggregation
-- type.
--
-- /See:/ 'newAggregationResponse' smart constructor.
data AggregationResponse = AggregationResponse'
  { -- | An object that contains details about an aggregation response based on
    -- Amazon ECR repositories.
    repositoryAggregation :: Prelude.Maybe RepositoryAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- container image layers.
    imageLayerAggregation :: Prelude.Maybe ImageLayerAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- Amazon Web Services account IDs.
    accountAggregation :: Prelude.Maybe AccountAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- Amazon ECR container images.
    awsEcrContainerAggregation :: Prelude.Maybe AwsEcrContainerAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- Amazon EC2 instances.
    ec2InstanceAggregation :: Prelude.Maybe Ec2InstanceAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- finding types.
    findingTypeAggregation :: Prelude.Maybe FindingTypeAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- operating system package type.
    packageAggregation :: Prelude.Maybe PackageAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- finding title.
    titleAggregation :: Prelude.Maybe TitleAggregationResponse,
    -- | An object that contains details about an aggregation response based on
    -- Amazon Machine Images (AMIs).
    amiAggregation :: Prelude.Maybe AmiAggregationResponse
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AggregationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositoryAggregation', 'aggregationResponse_repositoryAggregation' - An object that contains details about an aggregation response based on
-- Amazon ECR repositories.
--
-- 'imageLayerAggregation', 'aggregationResponse_imageLayerAggregation' - An object that contains details about an aggregation response based on
-- container image layers.
--
-- 'accountAggregation', 'aggregationResponse_accountAggregation' - An object that contains details about an aggregation response based on
-- Amazon Web Services account IDs.
--
-- 'awsEcrContainerAggregation', 'aggregationResponse_awsEcrContainerAggregation' - An object that contains details about an aggregation response based on
-- Amazon ECR container images.
--
-- 'ec2InstanceAggregation', 'aggregationResponse_ec2InstanceAggregation' - An object that contains details about an aggregation response based on
-- Amazon EC2 instances.
--
-- 'findingTypeAggregation', 'aggregationResponse_findingTypeAggregation' - An object that contains details about an aggregation response based on
-- finding types.
--
-- 'packageAggregation', 'aggregationResponse_packageAggregation' - An object that contains details about an aggregation response based on
-- operating system package type.
--
-- 'titleAggregation', 'aggregationResponse_titleAggregation' - An object that contains details about an aggregation response based on
-- finding title.
--
-- 'amiAggregation', 'aggregationResponse_amiAggregation' - An object that contains details about an aggregation response based on
-- Amazon Machine Images (AMIs).
newAggregationResponse ::
  AggregationResponse
newAggregationResponse =
  AggregationResponse'
    { repositoryAggregation =
        Prelude.Nothing,
      imageLayerAggregation = Prelude.Nothing,
      accountAggregation = Prelude.Nothing,
      awsEcrContainerAggregation = Prelude.Nothing,
      ec2InstanceAggregation = Prelude.Nothing,
      findingTypeAggregation = Prelude.Nothing,
      packageAggregation = Prelude.Nothing,
      titleAggregation = Prelude.Nothing,
      amiAggregation = Prelude.Nothing
    }

-- | An object that contains details about an aggregation response based on
-- Amazon ECR repositories.
aggregationResponse_repositoryAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe RepositoryAggregationResponse)
aggregationResponse_repositoryAggregation = Lens.lens (\AggregationResponse' {repositoryAggregation} -> repositoryAggregation) (\s@AggregationResponse' {} a -> s {repositoryAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- container image layers.
aggregationResponse_imageLayerAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe ImageLayerAggregationResponse)
aggregationResponse_imageLayerAggregation = Lens.lens (\AggregationResponse' {imageLayerAggregation} -> imageLayerAggregation) (\s@AggregationResponse' {} a -> s {imageLayerAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- Amazon Web Services account IDs.
aggregationResponse_accountAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe AccountAggregationResponse)
aggregationResponse_accountAggregation = Lens.lens (\AggregationResponse' {accountAggregation} -> accountAggregation) (\s@AggregationResponse' {} a -> s {accountAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- Amazon ECR container images.
aggregationResponse_awsEcrContainerAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe AwsEcrContainerAggregationResponse)
aggregationResponse_awsEcrContainerAggregation = Lens.lens (\AggregationResponse' {awsEcrContainerAggregation} -> awsEcrContainerAggregation) (\s@AggregationResponse' {} a -> s {awsEcrContainerAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- Amazon EC2 instances.
aggregationResponse_ec2InstanceAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe Ec2InstanceAggregationResponse)
aggregationResponse_ec2InstanceAggregation = Lens.lens (\AggregationResponse' {ec2InstanceAggregation} -> ec2InstanceAggregation) (\s@AggregationResponse' {} a -> s {ec2InstanceAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- finding types.
aggregationResponse_findingTypeAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe FindingTypeAggregationResponse)
aggregationResponse_findingTypeAggregation = Lens.lens (\AggregationResponse' {findingTypeAggregation} -> findingTypeAggregation) (\s@AggregationResponse' {} a -> s {findingTypeAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- operating system package type.
aggregationResponse_packageAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe PackageAggregationResponse)
aggregationResponse_packageAggregation = Lens.lens (\AggregationResponse' {packageAggregation} -> packageAggregation) (\s@AggregationResponse' {} a -> s {packageAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- finding title.
aggregationResponse_titleAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe TitleAggregationResponse)
aggregationResponse_titleAggregation = Lens.lens (\AggregationResponse' {titleAggregation} -> titleAggregation) (\s@AggregationResponse' {} a -> s {titleAggregation = a} :: AggregationResponse)

-- | An object that contains details about an aggregation response based on
-- Amazon Machine Images (AMIs).
aggregationResponse_amiAggregation :: Lens.Lens' AggregationResponse (Prelude.Maybe AmiAggregationResponse)
aggregationResponse_amiAggregation = Lens.lens (\AggregationResponse' {amiAggregation} -> amiAggregation) (\s@AggregationResponse' {} a -> s {amiAggregation = a} :: AggregationResponse)

instance Core.FromJSON AggregationResponse where
  parseJSON =
    Core.withObject
      "AggregationResponse"
      ( \x ->
          AggregationResponse'
            Prelude.<$> (x Core..:? "repositoryAggregation")
            Prelude.<*> (x Core..:? "imageLayerAggregation")
            Prelude.<*> (x Core..:? "accountAggregation")
            Prelude.<*> (x Core..:? "awsEcrContainerAggregation")
            Prelude.<*> (x Core..:? "ec2InstanceAggregation")
            Prelude.<*> (x Core..:? "findingTypeAggregation")
            Prelude.<*> (x Core..:? "packageAggregation")
            Prelude.<*> (x Core..:? "titleAggregation")
            Prelude.<*> (x Core..:? "amiAggregation")
      )

instance Prelude.Hashable AggregationResponse where
  hashWithSalt _salt AggregationResponse' {..} =
    _salt `Prelude.hashWithSalt` repositoryAggregation
      `Prelude.hashWithSalt` imageLayerAggregation
      `Prelude.hashWithSalt` accountAggregation
      `Prelude.hashWithSalt` awsEcrContainerAggregation
      `Prelude.hashWithSalt` ec2InstanceAggregation
      `Prelude.hashWithSalt` findingTypeAggregation
      `Prelude.hashWithSalt` packageAggregation
      `Prelude.hashWithSalt` titleAggregation
      `Prelude.hashWithSalt` amiAggregation

instance Prelude.NFData AggregationResponse where
  rnf AggregationResponse' {..} =
    Prelude.rnf repositoryAggregation
      `Prelude.seq` Prelude.rnf imageLayerAggregation
      `Prelude.seq` Prelude.rnf accountAggregation
      `Prelude.seq` Prelude.rnf awsEcrContainerAggregation
      `Prelude.seq` Prelude.rnf ec2InstanceAggregation
      `Prelude.seq` Prelude.rnf findingTypeAggregation
      `Prelude.seq` Prelude.rnf packageAggregation
      `Prelude.seq` Prelude.rnf titleAggregation
      `Prelude.seq` Prelude.rnf amiAggregation
