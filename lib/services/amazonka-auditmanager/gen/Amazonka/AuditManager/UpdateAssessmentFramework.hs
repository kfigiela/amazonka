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
-- Module      : Amazonka.AuditManager.UpdateAssessmentFramework
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a custom framework in Audit Manager.
module Amazonka.AuditManager.UpdateAssessmentFramework
  ( -- * Creating a Request
    UpdateAssessmentFramework (..),
    newUpdateAssessmentFramework,

    -- * Request Lenses
    updateAssessmentFramework_description,
    updateAssessmentFramework_complianceType,
    updateAssessmentFramework_frameworkId,
    updateAssessmentFramework_name,
    updateAssessmentFramework_controlSets,

    -- * Destructuring the Response
    UpdateAssessmentFrameworkResponse (..),
    newUpdateAssessmentFrameworkResponse,

    -- * Response Lenses
    updateAssessmentFrameworkResponse_framework,
    updateAssessmentFrameworkResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateAssessmentFramework' smart constructor.
data UpdateAssessmentFramework = UpdateAssessmentFramework'
  { -- | The description of the updated framework.
    description :: Prelude.Maybe Prelude.Text,
    -- | The compliance type that the new custom framework supports, such as CIS
    -- or HIPAA.
    complianceType :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the framework.
    frameworkId :: Prelude.Text,
    -- | The name of the framework to be updated.
    name :: Prelude.Text,
    -- | The control sets that are associated with the framework.
    controlSets :: Prelude.NonEmpty UpdateAssessmentFrameworkControlSet
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAssessmentFramework' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'updateAssessmentFramework_description' - The description of the updated framework.
--
-- 'complianceType', 'updateAssessmentFramework_complianceType' - The compliance type that the new custom framework supports, such as CIS
-- or HIPAA.
--
-- 'frameworkId', 'updateAssessmentFramework_frameworkId' - The unique identifier for the framework.
--
-- 'name', 'updateAssessmentFramework_name' - The name of the framework to be updated.
--
-- 'controlSets', 'updateAssessmentFramework_controlSets' - The control sets that are associated with the framework.
newUpdateAssessmentFramework ::
  -- | 'frameworkId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'controlSets'
  Prelude.NonEmpty UpdateAssessmentFrameworkControlSet ->
  UpdateAssessmentFramework
newUpdateAssessmentFramework
  pFrameworkId_
  pName_
  pControlSets_ =
    UpdateAssessmentFramework'
      { description =
          Prelude.Nothing,
        complianceType = Prelude.Nothing,
        frameworkId = pFrameworkId_,
        name = pName_,
        controlSets = Lens.coerced Lens.# pControlSets_
      }

-- | The description of the updated framework.
updateAssessmentFramework_description :: Lens.Lens' UpdateAssessmentFramework (Prelude.Maybe Prelude.Text)
updateAssessmentFramework_description = Lens.lens (\UpdateAssessmentFramework' {description} -> description) (\s@UpdateAssessmentFramework' {} a -> s {description = a} :: UpdateAssessmentFramework)

-- | The compliance type that the new custom framework supports, such as CIS
-- or HIPAA.
updateAssessmentFramework_complianceType :: Lens.Lens' UpdateAssessmentFramework (Prelude.Maybe Prelude.Text)
updateAssessmentFramework_complianceType = Lens.lens (\UpdateAssessmentFramework' {complianceType} -> complianceType) (\s@UpdateAssessmentFramework' {} a -> s {complianceType = a} :: UpdateAssessmentFramework)

-- | The unique identifier for the framework.
updateAssessmentFramework_frameworkId :: Lens.Lens' UpdateAssessmentFramework Prelude.Text
updateAssessmentFramework_frameworkId = Lens.lens (\UpdateAssessmentFramework' {frameworkId} -> frameworkId) (\s@UpdateAssessmentFramework' {} a -> s {frameworkId = a} :: UpdateAssessmentFramework)

-- | The name of the framework to be updated.
updateAssessmentFramework_name :: Lens.Lens' UpdateAssessmentFramework Prelude.Text
updateAssessmentFramework_name = Lens.lens (\UpdateAssessmentFramework' {name} -> name) (\s@UpdateAssessmentFramework' {} a -> s {name = a} :: UpdateAssessmentFramework)

-- | The control sets that are associated with the framework.
updateAssessmentFramework_controlSets :: Lens.Lens' UpdateAssessmentFramework (Prelude.NonEmpty UpdateAssessmentFrameworkControlSet)
updateAssessmentFramework_controlSets = Lens.lens (\UpdateAssessmentFramework' {controlSets} -> controlSets) (\s@UpdateAssessmentFramework' {} a -> s {controlSets = a} :: UpdateAssessmentFramework) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateAssessmentFramework where
  type
    AWSResponse UpdateAssessmentFramework =
      UpdateAssessmentFrameworkResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAssessmentFrameworkResponse'
            Prelude.<$> (x Core..?> "framework")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAssessmentFramework where
  hashWithSalt _salt UpdateAssessmentFramework' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` complianceType
      `Prelude.hashWithSalt` frameworkId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` controlSets

instance Prelude.NFData UpdateAssessmentFramework where
  rnf UpdateAssessmentFramework' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf complianceType
      `Prelude.seq` Prelude.rnf frameworkId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf controlSets

instance Core.ToHeaders UpdateAssessmentFramework where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAssessmentFramework where
  toJSON UpdateAssessmentFramework' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("description" Core..=) Prelude.<$> description,
            ("complianceType" Core..=)
              Prelude.<$> complianceType,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("controlSets" Core..= controlSets)
          ]
      )

instance Core.ToPath UpdateAssessmentFramework where
  toPath UpdateAssessmentFramework' {..} =
    Prelude.mconcat
      ["/assessmentFrameworks/", Core.toBS frameworkId]

instance Core.ToQuery UpdateAssessmentFramework where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAssessmentFrameworkResponse' smart constructor.
data UpdateAssessmentFrameworkResponse = UpdateAssessmentFrameworkResponse'
  { -- | The name of the framework.
    framework :: Prelude.Maybe Framework,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAssessmentFrameworkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'framework', 'updateAssessmentFrameworkResponse_framework' - The name of the framework.
--
-- 'httpStatus', 'updateAssessmentFrameworkResponse_httpStatus' - The response's http status code.
newUpdateAssessmentFrameworkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAssessmentFrameworkResponse
newUpdateAssessmentFrameworkResponse pHttpStatus_ =
  UpdateAssessmentFrameworkResponse'
    { framework =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the framework.
updateAssessmentFrameworkResponse_framework :: Lens.Lens' UpdateAssessmentFrameworkResponse (Prelude.Maybe Framework)
updateAssessmentFrameworkResponse_framework = Lens.lens (\UpdateAssessmentFrameworkResponse' {framework} -> framework) (\s@UpdateAssessmentFrameworkResponse' {} a -> s {framework = a} :: UpdateAssessmentFrameworkResponse)

-- | The response's http status code.
updateAssessmentFrameworkResponse_httpStatus :: Lens.Lens' UpdateAssessmentFrameworkResponse Prelude.Int
updateAssessmentFrameworkResponse_httpStatus = Lens.lens (\UpdateAssessmentFrameworkResponse' {httpStatus} -> httpStatus) (\s@UpdateAssessmentFrameworkResponse' {} a -> s {httpStatus = a} :: UpdateAssessmentFrameworkResponse)

instance
  Prelude.NFData
    UpdateAssessmentFrameworkResponse
  where
  rnf UpdateAssessmentFrameworkResponse' {..} =
    Prelude.rnf framework
      `Prelude.seq` Prelude.rnf httpStatus
