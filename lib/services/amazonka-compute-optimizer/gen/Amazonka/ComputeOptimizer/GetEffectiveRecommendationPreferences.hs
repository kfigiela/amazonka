{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ComputeOptimizer.GetEffectiveRecommendationPreferences
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the recommendation preferences that are in effect for a given
-- resource, such as enhanced infrastructure metrics. Considers all
-- applicable preferences that you might have set at the resource, account,
-- and organization level.
--
-- When you create a recommendation preference, you can set its status to
-- @Active@ or @Inactive@. Use this action to view the recommendation
-- preferences that are in effect, or @Active@.
module Amazonka.ComputeOptimizer.GetEffectiveRecommendationPreferences
  ( -- * Creating a Request
    GetEffectiveRecommendationPreferences (..),
    newGetEffectiveRecommendationPreferences,

    -- * Request Lenses
    getEffectiveRecommendationPreferences_resourceArn,

    -- * Destructuring the Response
    GetEffectiveRecommendationPreferencesResponse (..),
    newGetEffectiveRecommendationPreferencesResponse,

    -- * Response Lenses
    getEffectiveRecommendationPreferencesResponse_enhancedInfrastructureMetrics,
    getEffectiveRecommendationPreferencesResponse_httpStatus,
  )
where

import Amazonka.ComputeOptimizer.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetEffectiveRecommendationPreferences' smart constructor.
data GetEffectiveRecommendationPreferences = GetEffectiveRecommendationPreferences'
  { -- | The Amazon Resource Name (ARN) of the resource for which to confirm
    -- effective recommendation preferences. Only EC2 instance and Auto Scaling
    -- group ARNs are currently supported.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEffectiveRecommendationPreferences' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'getEffectiveRecommendationPreferences_resourceArn' - The Amazon Resource Name (ARN) of the resource for which to confirm
-- effective recommendation preferences. Only EC2 instance and Auto Scaling
-- group ARNs are currently supported.
newGetEffectiveRecommendationPreferences ::
  -- | 'resourceArn'
  Prelude.Text ->
  GetEffectiveRecommendationPreferences
newGetEffectiveRecommendationPreferences
  pResourceArn_ =
    GetEffectiveRecommendationPreferences'
      { resourceArn =
          pResourceArn_
      }

-- | The Amazon Resource Name (ARN) of the resource for which to confirm
-- effective recommendation preferences. Only EC2 instance and Auto Scaling
-- group ARNs are currently supported.
getEffectiveRecommendationPreferences_resourceArn :: Lens.Lens' GetEffectiveRecommendationPreferences Prelude.Text
getEffectiveRecommendationPreferences_resourceArn = Lens.lens (\GetEffectiveRecommendationPreferences' {resourceArn} -> resourceArn) (\s@GetEffectiveRecommendationPreferences' {} a -> s {resourceArn = a} :: GetEffectiveRecommendationPreferences)

instance
  Core.AWSRequest
    GetEffectiveRecommendationPreferences
  where
  type
    AWSResponse
      GetEffectiveRecommendationPreferences =
      GetEffectiveRecommendationPreferencesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEffectiveRecommendationPreferencesResponse'
            Prelude.<$> (x Core..?> "enhancedInfrastructureMetrics")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetEffectiveRecommendationPreferences
  where
  hashWithSalt
    _salt
    GetEffectiveRecommendationPreferences' {..} =
      _salt `Prelude.hashWithSalt` resourceArn

instance
  Prelude.NFData
    GetEffectiveRecommendationPreferences
  where
  rnf GetEffectiveRecommendationPreferences' {..} =
    Prelude.rnf resourceArn

instance
  Core.ToHeaders
    GetEffectiveRecommendationPreferences
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.GetEffectiveRecommendationPreferences" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    GetEffectiveRecommendationPreferences
  where
  toJSON GetEffectiveRecommendationPreferences' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("resourceArn" Core..= resourceArn)]
      )

instance
  Core.ToPath
    GetEffectiveRecommendationPreferences
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetEffectiveRecommendationPreferences
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEffectiveRecommendationPreferencesResponse' smart constructor.
data GetEffectiveRecommendationPreferencesResponse = GetEffectiveRecommendationPreferencesResponse'
  { -- | The status of the enhanced infrastructure metrics recommendation
    -- preference. Considers all applicable preferences that you might have set
    -- at the resource, account, and organization level.
    --
    -- A status of @Active@ confirms that the preference is applied in the
    -- latest recommendation refresh, and a status of @Inactive@ confirms that
    -- it\'s not yet applied to recommendations.
    --
    -- To validate whether the preference is applied to your last generated set
    -- of recommendations, review the @effectiveRecommendationPreferences@
    -- value in the response of the GetAutoScalingGroupRecommendations and
    -- GetEC2InstanceRecommendations actions.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html Enhanced infrastructure metrics>
    -- in the /Compute Optimizer User Guide/.
    enhancedInfrastructureMetrics :: Prelude.Maybe EnhancedInfrastructureMetrics,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEffectiveRecommendationPreferencesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enhancedInfrastructureMetrics', 'getEffectiveRecommendationPreferencesResponse_enhancedInfrastructureMetrics' - The status of the enhanced infrastructure metrics recommendation
-- preference. Considers all applicable preferences that you might have set
-- at the resource, account, and organization level.
--
-- A status of @Active@ confirms that the preference is applied in the
-- latest recommendation refresh, and a status of @Inactive@ confirms that
-- it\'s not yet applied to recommendations.
--
-- To validate whether the preference is applied to your last generated set
-- of recommendations, review the @effectiveRecommendationPreferences@
-- value in the response of the GetAutoScalingGroupRecommendations and
-- GetEC2InstanceRecommendations actions.
--
-- For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html Enhanced infrastructure metrics>
-- in the /Compute Optimizer User Guide/.
--
-- 'httpStatus', 'getEffectiveRecommendationPreferencesResponse_httpStatus' - The response's http status code.
newGetEffectiveRecommendationPreferencesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEffectiveRecommendationPreferencesResponse
newGetEffectiveRecommendationPreferencesResponse
  pHttpStatus_ =
    GetEffectiveRecommendationPreferencesResponse'
      { enhancedInfrastructureMetrics =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The status of the enhanced infrastructure metrics recommendation
-- preference. Considers all applicable preferences that you might have set
-- at the resource, account, and organization level.
--
-- A status of @Active@ confirms that the preference is applied in the
-- latest recommendation refresh, and a status of @Inactive@ confirms that
-- it\'s not yet applied to recommendations.
--
-- To validate whether the preference is applied to your last generated set
-- of recommendations, review the @effectiveRecommendationPreferences@
-- value in the response of the GetAutoScalingGroupRecommendations and
-- GetEC2InstanceRecommendations actions.
--
-- For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html Enhanced infrastructure metrics>
-- in the /Compute Optimizer User Guide/.
getEffectiveRecommendationPreferencesResponse_enhancedInfrastructureMetrics :: Lens.Lens' GetEffectiveRecommendationPreferencesResponse (Prelude.Maybe EnhancedInfrastructureMetrics)
getEffectiveRecommendationPreferencesResponse_enhancedInfrastructureMetrics = Lens.lens (\GetEffectiveRecommendationPreferencesResponse' {enhancedInfrastructureMetrics} -> enhancedInfrastructureMetrics) (\s@GetEffectiveRecommendationPreferencesResponse' {} a -> s {enhancedInfrastructureMetrics = a} :: GetEffectiveRecommendationPreferencesResponse)

-- | The response's http status code.
getEffectiveRecommendationPreferencesResponse_httpStatus :: Lens.Lens' GetEffectiveRecommendationPreferencesResponse Prelude.Int
getEffectiveRecommendationPreferencesResponse_httpStatus = Lens.lens (\GetEffectiveRecommendationPreferencesResponse' {httpStatus} -> httpStatus) (\s@GetEffectiveRecommendationPreferencesResponse' {} a -> s {httpStatus = a} :: GetEffectiveRecommendationPreferencesResponse)

instance
  Prelude.NFData
    GetEffectiveRecommendationPreferencesResponse
  where
  rnf
    GetEffectiveRecommendationPreferencesResponse' {..} =
      Prelude.rnf enhancedInfrastructureMetrics
        `Prelude.seq` Prelude.rnf httpStatus
