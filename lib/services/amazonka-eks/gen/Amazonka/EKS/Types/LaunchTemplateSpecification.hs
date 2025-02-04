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
-- Module      : Amazonka.EKS.Types.LaunchTemplateSpecification
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EKS.Types.LaunchTemplateSpecification where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object representing a node group launch template specification. The
-- launch template can\'t include
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html SubnetId>
-- ,
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html IamInstanceProfile>
-- ,
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html RequestSpotInstances>
-- ,
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html HibernationOptions>
-- , or
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html TerminateInstances>
-- , or the node group deployment or update will fail. For more information
-- about launch templates, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html CreateLaunchTemplate>
-- in the Amazon EC2 API Reference. For more information about using launch
-- templates with Amazon EKS, see
-- <https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html Launch template support>
-- in the /Amazon EKS User Guide/.
--
-- You must specify either the launch template ID or the launch template
-- name in the request, but not both.
--
-- /See:/ 'newLaunchTemplateSpecification' smart constructor.
data LaunchTemplateSpecification = LaunchTemplateSpecification'
  { -- | The name of the launch template.
    --
    -- You must specify either the launch template name or the launch template
    -- ID in the request, but not both.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the launch template.
    --
    -- You must specify either the launch template ID or the launch template
    -- name in the request, but not both.
    id :: Prelude.Maybe Prelude.Text,
    -- | The launch template version number, @$Latest@, or @$Default@.
    --
    -- If the value is @$Latest@, Amazon EKS uses the latest version of the
    -- launch template.
    --
    -- If the value is @$Default@, Amazon EKS uses the default version of the
    -- launch template.
    --
    -- Default: The default version of the launch template.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LaunchTemplateSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'launchTemplateSpecification_name' - The name of the launch template.
--
-- You must specify either the launch template name or the launch template
-- ID in the request, but not both.
--
-- 'id', 'launchTemplateSpecification_id' - The ID of the launch template.
--
-- You must specify either the launch template ID or the launch template
-- name in the request, but not both.
--
-- 'version', 'launchTemplateSpecification_version' - The launch template version number, @$Latest@, or @$Default@.
--
-- If the value is @$Latest@, Amazon EKS uses the latest version of the
-- launch template.
--
-- If the value is @$Default@, Amazon EKS uses the default version of the
-- launch template.
--
-- Default: The default version of the launch template.
newLaunchTemplateSpecification ::
  LaunchTemplateSpecification
newLaunchTemplateSpecification =
  LaunchTemplateSpecification'
    { name =
        Prelude.Nothing,
      id = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The name of the launch template.
--
-- You must specify either the launch template name or the launch template
-- ID in the request, but not both.
launchTemplateSpecification_name :: Lens.Lens' LaunchTemplateSpecification (Prelude.Maybe Prelude.Text)
launchTemplateSpecification_name = Lens.lens (\LaunchTemplateSpecification' {name} -> name) (\s@LaunchTemplateSpecification' {} a -> s {name = a} :: LaunchTemplateSpecification)

-- | The ID of the launch template.
--
-- You must specify either the launch template ID or the launch template
-- name in the request, but not both.
launchTemplateSpecification_id :: Lens.Lens' LaunchTemplateSpecification (Prelude.Maybe Prelude.Text)
launchTemplateSpecification_id = Lens.lens (\LaunchTemplateSpecification' {id} -> id) (\s@LaunchTemplateSpecification' {} a -> s {id = a} :: LaunchTemplateSpecification)

-- | The launch template version number, @$Latest@, or @$Default@.
--
-- If the value is @$Latest@, Amazon EKS uses the latest version of the
-- launch template.
--
-- If the value is @$Default@, Amazon EKS uses the default version of the
-- launch template.
--
-- Default: The default version of the launch template.
launchTemplateSpecification_version :: Lens.Lens' LaunchTemplateSpecification (Prelude.Maybe Prelude.Text)
launchTemplateSpecification_version = Lens.lens (\LaunchTemplateSpecification' {version} -> version) (\s@LaunchTemplateSpecification' {} a -> s {version = a} :: LaunchTemplateSpecification)

instance Core.FromJSON LaunchTemplateSpecification where
  parseJSON =
    Core.withObject
      "LaunchTemplateSpecification"
      ( \x ->
          LaunchTemplateSpecification'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable LaunchTemplateSpecification where
  hashWithSalt _salt LaunchTemplateSpecification' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` version

instance Prelude.NFData LaunchTemplateSpecification where
  rnf LaunchTemplateSpecification' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf version

instance Core.ToJSON LaunchTemplateSpecification where
  toJSON LaunchTemplateSpecification' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("id" Core..=) Prelude.<$> id,
            ("version" Core..=) Prelude.<$> version
          ]
      )
