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
-- Module      : Amazonka.SWF.Types.DomainConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SWF.Types.DomainConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains the configuration settings of a domain.
--
-- /See:/ 'newDomainConfiguration' smart constructor.
data DomainConfiguration = DomainConfiguration'
  { -- | The retention period for workflow executions in this domain.
    workflowExecutionRetentionPeriodInDays :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workflowExecutionRetentionPeriodInDays', 'domainConfiguration_workflowExecutionRetentionPeriodInDays' - The retention period for workflow executions in this domain.
newDomainConfiguration ::
  -- | 'workflowExecutionRetentionPeriodInDays'
  Prelude.Text ->
  DomainConfiguration
newDomainConfiguration
  pWorkflowExecutionRetentionPeriodInDays_ =
    DomainConfiguration'
      { workflowExecutionRetentionPeriodInDays =
          pWorkflowExecutionRetentionPeriodInDays_
      }

-- | The retention period for workflow executions in this domain.
domainConfiguration_workflowExecutionRetentionPeriodInDays :: Lens.Lens' DomainConfiguration Prelude.Text
domainConfiguration_workflowExecutionRetentionPeriodInDays = Lens.lens (\DomainConfiguration' {workflowExecutionRetentionPeriodInDays} -> workflowExecutionRetentionPeriodInDays) (\s@DomainConfiguration' {} a -> s {workflowExecutionRetentionPeriodInDays = a} :: DomainConfiguration)

instance Core.FromJSON DomainConfiguration where
  parseJSON =
    Core.withObject
      "DomainConfiguration"
      ( \x ->
          DomainConfiguration'
            Prelude.<$> (x Core..: "workflowExecutionRetentionPeriodInDays")
      )

instance Prelude.Hashable DomainConfiguration where
  hashWithSalt _salt DomainConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` workflowExecutionRetentionPeriodInDays

instance Prelude.NFData DomainConfiguration where
  rnf DomainConfiguration' {..} =
    Prelude.rnf workflowExecutionRetentionPeriodInDays
