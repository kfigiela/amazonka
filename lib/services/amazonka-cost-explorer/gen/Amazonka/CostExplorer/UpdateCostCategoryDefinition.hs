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
-- Module      : Amazonka.CostExplorer.UpdateCostCategoryDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing Cost Category. Changes made to the Cost Category
-- rules will be used to categorize the current month’s expenses and future
-- expenses. This won’t change categorization for the previous months.
module Amazonka.CostExplorer.UpdateCostCategoryDefinition
  ( -- * Creating a Request
    UpdateCostCategoryDefinition (..),
    newUpdateCostCategoryDefinition,

    -- * Request Lenses
    updateCostCategoryDefinition_splitChargeRules,
    updateCostCategoryDefinition_defaultValue,
    updateCostCategoryDefinition_effectiveStart,
    updateCostCategoryDefinition_costCategoryArn,
    updateCostCategoryDefinition_ruleVersion,
    updateCostCategoryDefinition_rules,

    -- * Destructuring the Response
    UpdateCostCategoryDefinitionResponse (..),
    newUpdateCostCategoryDefinitionResponse,

    -- * Response Lenses
    updateCostCategoryDefinitionResponse_effectiveStart,
    updateCostCategoryDefinitionResponse_costCategoryArn,
    updateCostCategoryDefinitionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateCostCategoryDefinition' smart constructor.
data UpdateCostCategoryDefinition = UpdateCostCategoryDefinition'
  { -- | The split charge rules used to allocate your charges between your Cost
    -- Category values.
    splitChargeRules :: Prelude.Maybe (Prelude.NonEmpty CostCategorySplitChargeRule),
    defaultValue :: Prelude.Maybe Prelude.Text,
    -- | The Cost Category\'s effective start date. It can only be a billing
    -- start date (first day of the month). If the date isn\'t provided, it\'s
    -- the first day of the current month. Dates can\'t be before the previous
    -- twelve months, or in the future.
    effectiveStart :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for your Cost Category.
    costCategoryArn :: Prelude.Text,
    ruleVersion :: CostCategoryRuleVersion,
    -- | The @Expression@ object used to categorize costs. For more information,
    -- see
    -- <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html CostCategoryRule>
    -- .
    rules :: Prelude.NonEmpty CostCategoryRule
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCostCategoryDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'splitChargeRules', 'updateCostCategoryDefinition_splitChargeRules' - The split charge rules used to allocate your charges between your Cost
-- Category values.
--
-- 'defaultValue', 'updateCostCategoryDefinition_defaultValue' - Undocumented member.
--
-- 'effectiveStart', 'updateCostCategoryDefinition_effectiveStart' - The Cost Category\'s effective start date. It can only be a billing
-- start date (first day of the month). If the date isn\'t provided, it\'s
-- the first day of the current month. Dates can\'t be before the previous
-- twelve months, or in the future.
--
-- 'costCategoryArn', 'updateCostCategoryDefinition_costCategoryArn' - The unique identifier for your Cost Category.
--
-- 'ruleVersion', 'updateCostCategoryDefinition_ruleVersion' - Undocumented member.
--
-- 'rules', 'updateCostCategoryDefinition_rules' - The @Expression@ object used to categorize costs. For more information,
-- see
-- <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html CostCategoryRule>
-- .
newUpdateCostCategoryDefinition ::
  -- | 'costCategoryArn'
  Prelude.Text ->
  -- | 'ruleVersion'
  CostCategoryRuleVersion ->
  -- | 'rules'
  Prelude.NonEmpty CostCategoryRule ->
  UpdateCostCategoryDefinition
newUpdateCostCategoryDefinition
  pCostCategoryArn_
  pRuleVersion_
  pRules_ =
    UpdateCostCategoryDefinition'
      { splitChargeRules =
          Prelude.Nothing,
        defaultValue = Prelude.Nothing,
        effectiveStart = Prelude.Nothing,
        costCategoryArn = pCostCategoryArn_,
        ruleVersion = pRuleVersion_,
        rules = Lens.coerced Lens.# pRules_
      }

-- | The split charge rules used to allocate your charges between your Cost
-- Category values.
updateCostCategoryDefinition_splitChargeRules :: Lens.Lens' UpdateCostCategoryDefinition (Prelude.Maybe (Prelude.NonEmpty CostCategorySplitChargeRule))
updateCostCategoryDefinition_splitChargeRules = Lens.lens (\UpdateCostCategoryDefinition' {splitChargeRules} -> splitChargeRules) (\s@UpdateCostCategoryDefinition' {} a -> s {splitChargeRules = a} :: UpdateCostCategoryDefinition) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
updateCostCategoryDefinition_defaultValue :: Lens.Lens' UpdateCostCategoryDefinition (Prelude.Maybe Prelude.Text)
updateCostCategoryDefinition_defaultValue = Lens.lens (\UpdateCostCategoryDefinition' {defaultValue} -> defaultValue) (\s@UpdateCostCategoryDefinition' {} a -> s {defaultValue = a} :: UpdateCostCategoryDefinition)

-- | The Cost Category\'s effective start date. It can only be a billing
-- start date (first day of the month). If the date isn\'t provided, it\'s
-- the first day of the current month. Dates can\'t be before the previous
-- twelve months, or in the future.
updateCostCategoryDefinition_effectiveStart :: Lens.Lens' UpdateCostCategoryDefinition (Prelude.Maybe Prelude.Text)
updateCostCategoryDefinition_effectiveStart = Lens.lens (\UpdateCostCategoryDefinition' {effectiveStart} -> effectiveStart) (\s@UpdateCostCategoryDefinition' {} a -> s {effectiveStart = a} :: UpdateCostCategoryDefinition)

-- | The unique identifier for your Cost Category.
updateCostCategoryDefinition_costCategoryArn :: Lens.Lens' UpdateCostCategoryDefinition Prelude.Text
updateCostCategoryDefinition_costCategoryArn = Lens.lens (\UpdateCostCategoryDefinition' {costCategoryArn} -> costCategoryArn) (\s@UpdateCostCategoryDefinition' {} a -> s {costCategoryArn = a} :: UpdateCostCategoryDefinition)

-- | Undocumented member.
updateCostCategoryDefinition_ruleVersion :: Lens.Lens' UpdateCostCategoryDefinition CostCategoryRuleVersion
updateCostCategoryDefinition_ruleVersion = Lens.lens (\UpdateCostCategoryDefinition' {ruleVersion} -> ruleVersion) (\s@UpdateCostCategoryDefinition' {} a -> s {ruleVersion = a} :: UpdateCostCategoryDefinition)

-- | The @Expression@ object used to categorize costs. For more information,
-- see
-- <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html CostCategoryRule>
-- .
updateCostCategoryDefinition_rules :: Lens.Lens' UpdateCostCategoryDefinition (Prelude.NonEmpty CostCategoryRule)
updateCostCategoryDefinition_rules = Lens.lens (\UpdateCostCategoryDefinition' {rules} -> rules) (\s@UpdateCostCategoryDefinition' {} a -> s {rules = a} :: UpdateCostCategoryDefinition) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateCostCategoryDefinition where
  type
    AWSResponse UpdateCostCategoryDefinition =
      UpdateCostCategoryDefinitionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateCostCategoryDefinitionResponse'
            Prelude.<$> (x Core..?> "EffectiveStart")
            Prelude.<*> (x Core..?> "CostCategoryArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateCostCategoryDefinition
  where
  hashWithSalt _salt UpdateCostCategoryDefinition' {..} =
    _salt `Prelude.hashWithSalt` splitChargeRules
      `Prelude.hashWithSalt` defaultValue
      `Prelude.hashWithSalt` effectiveStart
      `Prelude.hashWithSalt` costCategoryArn
      `Prelude.hashWithSalt` ruleVersion
      `Prelude.hashWithSalt` rules

instance Prelude.NFData UpdateCostCategoryDefinition where
  rnf UpdateCostCategoryDefinition' {..} =
    Prelude.rnf splitChargeRules
      `Prelude.seq` Prelude.rnf defaultValue
      `Prelude.seq` Prelude.rnf effectiveStart
      `Prelude.seq` Prelude.rnf costCategoryArn
      `Prelude.seq` Prelude.rnf ruleVersion
      `Prelude.seq` Prelude.rnf rules

instance Core.ToHeaders UpdateCostCategoryDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSInsightsIndexService.UpdateCostCategoryDefinition" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateCostCategoryDefinition where
  toJSON UpdateCostCategoryDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SplitChargeRules" Core..=)
              Prelude.<$> splitChargeRules,
            ("DefaultValue" Core..=) Prelude.<$> defaultValue,
            ("EffectiveStart" Core..=)
              Prelude.<$> effectiveStart,
            Prelude.Just
              ("CostCategoryArn" Core..= costCategoryArn),
            Prelude.Just ("RuleVersion" Core..= ruleVersion),
            Prelude.Just ("Rules" Core..= rules)
          ]
      )

instance Core.ToPath UpdateCostCategoryDefinition where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateCostCategoryDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateCostCategoryDefinitionResponse' smart constructor.
data UpdateCostCategoryDefinitionResponse = UpdateCostCategoryDefinitionResponse'
  { -- | The Cost Category\'s effective start date. It can only be a billing
    -- start date (first day of the month).
    effectiveStart :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for your Cost Category.
    costCategoryArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCostCategoryDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'effectiveStart', 'updateCostCategoryDefinitionResponse_effectiveStart' - The Cost Category\'s effective start date. It can only be a billing
-- start date (first day of the month).
--
-- 'costCategoryArn', 'updateCostCategoryDefinitionResponse_costCategoryArn' - The unique identifier for your Cost Category.
--
-- 'httpStatus', 'updateCostCategoryDefinitionResponse_httpStatus' - The response's http status code.
newUpdateCostCategoryDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateCostCategoryDefinitionResponse
newUpdateCostCategoryDefinitionResponse pHttpStatus_ =
  UpdateCostCategoryDefinitionResponse'
    { effectiveStart =
        Prelude.Nothing,
      costCategoryArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Cost Category\'s effective start date. It can only be a billing
-- start date (first day of the month).
updateCostCategoryDefinitionResponse_effectiveStart :: Lens.Lens' UpdateCostCategoryDefinitionResponse (Prelude.Maybe Prelude.Text)
updateCostCategoryDefinitionResponse_effectiveStart = Lens.lens (\UpdateCostCategoryDefinitionResponse' {effectiveStart} -> effectiveStart) (\s@UpdateCostCategoryDefinitionResponse' {} a -> s {effectiveStart = a} :: UpdateCostCategoryDefinitionResponse)

-- | The unique identifier for your Cost Category.
updateCostCategoryDefinitionResponse_costCategoryArn :: Lens.Lens' UpdateCostCategoryDefinitionResponse (Prelude.Maybe Prelude.Text)
updateCostCategoryDefinitionResponse_costCategoryArn = Lens.lens (\UpdateCostCategoryDefinitionResponse' {costCategoryArn} -> costCategoryArn) (\s@UpdateCostCategoryDefinitionResponse' {} a -> s {costCategoryArn = a} :: UpdateCostCategoryDefinitionResponse)

-- | The response's http status code.
updateCostCategoryDefinitionResponse_httpStatus :: Lens.Lens' UpdateCostCategoryDefinitionResponse Prelude.Int
updateCostCategoryDefinitionResponse_httpStatus = Lens.lens (\UpdateCostCategoryDefinitionResponse' {httpStatus} -> httpStatus) (\s@UpdateCostCategoryDefinitionResponse' {} a -> s {httpStatus = a} :: UpdateCostCategoryDefinitionResponse)

instance
  Prelude.NFData
    UpdateCostCategoryDefinitionResponse
  where
  rnf UpdateCostCategoryDefinitionResponse' {..} =
    Prelude.rnf effectiveStart
      `Prelude.seq` Prelude.rnf costCategoryArn
      `Prelude.seq` Prelude.rnf httpStatus
