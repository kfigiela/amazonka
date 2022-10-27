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
-- Module      : Amazonka.SSM.UpdatePatchBaseline
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing patch baseline. Fields not specified in the request
-- are left unchanged.
--
-- For information about valid key-value pairs in @PatchFilters@ for each
-- supported operating system type, see PatchFilter.
module Amazonka.SSM.UpdatePatchBaseline
  ( -- * Creating a Request
    UpdatePatchBaseline (..),
    newUpdatePatchBaseline,

    -- * Request Lenses
    updatePatchBaseline_approvedPatches,
    updatePatchBaseline_approvedPatchesComplianceLevel,
    updatePatchBaseline_sources,
    updatePatchBaseline_name,
    updatePatchBaseline_approvalRules,
    updatePatchBaseline_rejectedPatchesAction,
    updatePatchBaseline_description,
    updatePatchBaseline_globalFilters,
    updatePatchBaseline_rejectedPatches,
    updatePatchBaseline_approvedPatchesEnableNonSecurity,
    updatePatchBaseline_replace,
    updatePatchBaseline_baselineId,

    -- * Destructuring the Response
    UpdatePatchBaselineResponse (..),
    newUpdatePatchBaselineResponse,

    -- * Response Lenses
    updatePatchBaselineResponse_operatingSystem,
    updatePatchBaselineResponse_approvedPatches,
    updatePatchBaselineResponse_approvedPatchesComplianceLevel,
    updatePatchBaselineResponse_sources,
    updatePatchBaselineResponse_name,
    updatePatchBaselineResponse_baselineId,
    updatePatchBaselineResponse_approvalRules,
    updatePatchBaselineResponse_rejectedPatchesAction,
    updatePatchBaselineResponse_description,
    updatePatchBaselineResponse_globalFilters,
    updatePatchBaselineResponse_createdDate,
    updatePatchBaselineResponse_rejectedPatches,
    updatePatchBaselineResponse_approvedPatchesEnableNonSecurity,
    updatePatchBaselineResponse_modifiedDate,
    updatePatchBaselineResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSM.Types

-- | /See:/ 'newUpdatePatchBaseline' smart constructor.
data UpdatePatchBaseline = UpdatePatchBaseline'
  { -- | A list of explicitly approved patches for the baseline.
    --
    -- For information about accepted formats for lists of approved patches and
    -- rejected patches, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists>
    -- in the /Amazon Web Services Systems Manager User Guide/.
    approvedPatches :: Prelude.Maybe [Prelude.Text],
    -- | Assigns a new compliance severity level to an existing patch baseline.
    approvedPatchesComplianceLevel :: Prelude.Maybe PatchComplianceLevel,
    -- | Information about the patches to use to update the managed nodes,
    -- including target operating systems and source repositories. Applies to
    -- Linux managed nodes only.
    sources :: Prelude.Maybe [PatchSource],
    -- | The name of the patch baseline.
    name :: Prelude.Maybe Prelude.Text,
    -- | A set of rules used to include patches in the baseline.
    approvalRules :: Prelude.Maybe PatchRuleGroup,
    -- | The action for Patch Manager to take on patches included in the
    -- @RejectedPackages@ list.
    --
    -- -   __@ALLOW_AS_DEPENDENCY@__ : A package in the @Rejected@ patches list
    --     is installed only if it is a dependency of another package. It is
    --     considered compliant with the patch baseline, and its status is
    --     reported as @InstalledOther@. This is the default action if no
    --     option is specified.
    --
    -- -   __@BLOCK@__ : Packages in the @RejectedPatches@ list, and packages
    --     that include them as dependencies, aren\'t installed under any
    --     circumstances. If a package was installed before it was added to the
    --     @Rejected@ patches list, it is considered non-compliant with the
    --     patch baseline, and its status is reported as @InstalledRejected@.
    rejectedPatchesAction :: Prelude.Maybe PatchAction,
    -- | A description of the patch baseline.
    description :: Prelude.Maybe Prelude.Text,
    -- | A set of global filters used to include patches in the baseline.
    globalFilters :: Prelude.Maybe PatchFilterGroup,
    -- | A list of explicitly rejected patches for the baseline.
    --
    -- For information about accepted formats for lists of approved patches and
    -- rejected patches, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists>
    -- in the /Amazon Web Services Systems Manager User Guide/.
    rejectedPatches :: Prelude.Maybe [Prelude.Text],
    -- | Indicates whether the list of approved patches includes non-security
    -- updates that should be applied to the managed nodes. The default value
    -- is @false@. Applies to Linux managed nodes only.
    approvedPatchesEnableNonSecurity :: Prelude.Maybe Prelude.Bool,
    -- | If True, then all fields that are required by the CreatePatchBaseline
    -- operation are also required for this API request. Optional fields that
    -- aren\'t specified are set to null.
    replace :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the patch baseline to update.
    baselineId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePatchBaseline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approvedPatches', 'updatePatchBaseline_approvedPatches' - A list of explicitly approved patches for the baseline.
--
-- For information about accepted formats for lists of approved patches and
-- rejected patches, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists>
-- in the /Amazon Web Services Systems Manager User Guide/.
--
-- 'approvedPatchesComplianceLevel', 'updatePatchBaseline_approvedPatchesComplianceLevel' - Assigns a new compliance severity level to an existing patch baseline.
--
-- 'sources', 'updatePatchBaseline_sources' - Information about the patches to use to update the managed nodes,
-- including target operating systems and source repositories. Applies to
-- Linux managed nodes only.
--
-- 'name', 'updatePatchBaseline_name' - The name of the patch baseline.
--
-- 'approvalRules', 'updatePatchBaseline_approvalRules' - A set of rules used to include patches in the baseline.
--
-- 'rejectedPatchesAction', 'updatePatchBaseline_rejectedPatchesAction' - The action for Patch Manager to take on patches included in the
-- @RejectedPackages@ list.
--
-- -   __@ALLOW_AS_DEPENDENCY@__ : A package in the @Rejected@ patches list
--     is installed only if it is a dependency of another package. It is
--     considered compliant with the patch baseline, and its status is
--     reported as @InstalledOther@. This is the default action if no
--     option is specified.
--
-- -   __@BLOCK@__ : Packages in the @RejectedPatches@ list, and packages
--     that include them as dependencies, aren\'t installed under any
--     circumstances. If a package was installed before it was added to the
--     @Rejected@ patches list, it is considered non-compliant with the
--     patch baseline, and its status is reported as @InstalledRejected@.
--
-- 'description', 'updatePatchBaseline_description' - A description of the patch baseline.
--
-- 'globalFilters', 'updatePatchBaseline_globalFilters' - A set of global filters used to include patches in the baseline.
--
-- 'rejectedPatches', 'updatePatchBaseline_rejectedPatches' - A list of explicitly rejected patches for the baseline.
--
-- For information about accepted formats for lists of approved patches and
-- rejected patches, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists>
-- in the /Amazon Web Services Systems Manager User Guide/.
--
-- 'approvedPatchesEnableNonSecurity', 'updatePatchBaseline_approvedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security
-- updates that should be applied to the managed nodes. The default value
-- is @false@. Applies to Linux managed nodes only.
--
-- 'replace', 'updatePatchBaseline_replace' - If True, then all fields that are required by the CreatePatchBaseline
-- operation are also required for this API request. Optional fields that
-- aren\'t specified are set to null.
--
-- 'baselineId', 'updatePatchBaseline_baselineId' - The ID of the patch baseline to update.
newUpdatePatchBaseline ::
  -- | 'baselineId'
  Prelude.Text ->
  UpdatePatchBaseline
newUpdatePatchBaseline pBaselineId_ =
  UpdatePatchBaseline'
    { approvedPatches =
        Prelude.Nothing,
      approvedPatchesComplianceLevel = Prelude.Nothing,
      sources = Prelude.Nothing,
      name = Prelude.Nothing,
      approvalRules = Prelude.Nothing,
      rejectedPatchesAction = Prelude.Nothing,
      description = Prelude.Nothing,
      globalFilters = Prelude.Nothing,
      rejectedPatches = Prelude.Nothing,
      approvedPatchesEnableNonSecurity = Prelude.Nothing,
      replace = Prelude.Nothing,
      baselineId = pBaselineId_
    }

-- | A list of explicitly approved patches for the baseline.
--
-- For information about accepted formats for lists of approved patches and
-- rejected patches, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists>
-- in the /Amazon Web Services Systems Manager User Guide/.
updatePatchBaseline_approvedPatches :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe [Prelude.Text])
updatePatchBaseline_approvedPatches = Lens.lens (\UpdatePatchBaseline' {approvedPatches} -> approvedPatches) (\s@UpdatePatchBaseline' {} a -> s {approvedPatches = a} :: UpdatePatchBaseline) Prelude.. Lens.mapping Lens.coerced

-- | Assigns a new compliance severity level to an existing patch baseline.
updatePatchBaseline_approvedPatchesComplianceLevel :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe PatchComplianceLevel)
updatePatchBaseline_approvedPatchesComplianceLevel = Lens.lens (\UpdatePatchBaseline' {approvedPatchesComplianceLevel} -> approvedPatchesComplianceLevel) (\s@UpdatePatchBaseline' {} a -> s {approvedPatchesComplianceLevel = a} :: UpdatePatchBaseline)

-- | Information about the patches to use to update the managed nodes,
-- including target operating systems and source repositories. Applies to
-- Linux managed nodes only.
updatePatchBaseline_sources :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe [PatchSource])
updatePatchBaseline_sources = Lens.lens (\UpdatePatchBaseline' {sources} -> sources) (\s@UpdatePatchBaseline' {} a -> s {sources = a} :: UpdatePatchBaseline) Prelude.. Lens.mapping Lens.coerced

-- | The name of the patch baseline.
updatePatchBaseline_name :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe Prelude.Text)
updatePatchBaseline_name = Lens.lens (\UpdatePatchBaseline' {name} -> name) (\s@UpdatePatchBaseline' {} a -> s {name = a} :: UpdatePatchBaseline)

-- | A set of rules used to include patches in the baseline.
updatePatchBaseline_approvalRules :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe PatchRuleGroup)
updatePatchBaseline_approvalRules = Lens.lens (\UpdatePatchBaseline' {approvalRules} -> approvalRules) (\s@UpdatePatchBaseline' {} a -> s {approvalRules = a} :: UpdatePatchBaseline)

-- | The action for Patch Manager to take on patches included in the
-- @RejectedPackages@ list.
--
-- -   __@ALLOW_AS_DEPENDENCY@__ : A package in the @Rejected@ patches list
--     is installed only if it is a dependency of another package. It is
--     considered compliant with the patch baseline, and its status is
--     reported as @InstalledOther@. This is the default action if no
--     option is specified.
--
-- -   __@BLOCK@__ : Packages in the @RejectedPatches@ list, and packages
--     that include them as dependencies, aren\'t installed under any
--     circumstances. If a package was installed before it was added to the
--     @Rejected@ patches list, it is considered non-compliant with the
--     patch baseline, and its status is reported as @InstalledRejected@.
updatePatchBaseline_rejectedPatchesAction :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe PatchAction)
updatePatchBaseline_rejectedPatchesAction = Lens.lens (\UpdatePatchBaseline' {rejectedPatchesAction} -> rejectedPatchesAction) (\s@UpdatePatchBaseline' {} a -> s {rejectedPatchesAction = a} :: UpdatePatchBaseline)

-- | A description of the patch baseline.
updatePatchBaseline_description :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe Prelude.Text)
updatePatchBaseline_description = Lens.lens (\UpdatePatchBaseline' {description} -> description) (\s@UpdatePatchBaseline' {} a -> s {description = a} :: UpdatePatchBaseline)

-- | A set of global filters used to include patches in the baseline.
updatePatchBaseline_globalFilters :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe PatchFilterGroup)
updatePatchBaseline_globalFilters = Lens.lens (\UpdatePatchBaseline' {globalFilters} -> globalFilters) (\s@UpdatePatchBaseline' {} a -> s {globalFilters = a} :: UpdatePatchBaseline)

-- | A list of explicitly rejected patches for the baseline.
--
-- For information about accepted formats for lists of approved patches and
-- rejected patches, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists>
-- in the /Amazon Web Services Systems Manager User Guide/.
updatePatchBaseline_rejectedPatches :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe [Prelude.Text])
updatePatchBaseline_rejectedPatches = Lens.lens (\UpdatePatchBaseline' {rejectedPatches} -> rejectedPatches) (\s@UpdatePatchBaseline' {} a -> s {rejectedPatches = a} :: UpdatePatchBaseline) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the list of approved patches includes non-security
-- updates that should be applied to the managed nodes. The default value
-- is @false@. Applies to Linux managed nodes only.
updatePatchBaseline_approvedPatchesEnableNonSecurity :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe Prelude.Bool)
updatePatchBaseline_approvedPatchesEnableNonSecurity = Lens.lens (\UpdatePatchBaseline' {approvedPatchesEnableNonSecurity} -> approvedPatchesEnableNonSecurity) (\s@UpdatePatchBaseline' {} a -> s {approvedPatchesEnableNonSecurity = a} :: UpdatePatchBaseline)

-- | If True, then all fields that are required by the CreatePatchBaseline
-- operation are also required for this API request. Optional fields that
-- aren\'t specified are set to null.
updatePatchBaseline_replace :: Lens.Lens' UpdatePatchBaseline (Prelude.Maybe Prelude.Bool)
updatePatchBaseline_replace = Lens.lens (\UpdatePatchBaseline' {replace} -> replace) (\s@UpdatePatchBaseline' {} a -> s {replace = a} :: UpdatePatchBaseline)

-- | The ID of the patch baseline to update.
updatePatchBaseline_baselineId :: Lens.Lens' UpdatePatchBaseline Prelude.Text
updatePatchBaseline_baselineId = Lens.lens (\UpdatePatchBaseline' {baselineId} -> baselineId) (\s@UpdatePatchBaseline' {} a -> s {baselineId = a} :: UpdatePatchBaseline)

instance Core.AWSRequest UpdatePatchBaseline where
  type
    AWSResponse UpdatePatchBaseline =
      UpdatePatchBaselineResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdatePatchBaselineResponse'
            Prelude.<$> (x Core..?> "OperatingSystem")
            Prelude.<*> ( x Core..?> "ApprovedPatches"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "ApprovedPatchesComplianceLevel")
            Prelude.<*> (x Core..?> "Sources" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "BaselineId")
            Prelude.<*> (x Core..?> "ApprovalRules")
            Prelude.<*> (x Core..?> "RejectedPatchesAction")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "GlobalFilters")
            Prelude.<*> (x Core..?> "CreatedDate")
            Prelude.<*> ( x Core..?> "RejectedPatches"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "ApprovedPatchesEnableNonSecurity")
            Prelude.<*> (x Core..?> "ModifiedDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePatchBaseline where
  hashWithSalt _salt UpdatePatchBaseline' {..} =
    _salt `Prelude.hashWithSalt` approvedPatches
      `Prelude.hashWithSalt` approvedPatchesComplianceLevel
      `Prelude.hashWithSalt` sources
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` approvalRules
      `Prelude.hashWithSalt` rejectedPatchesAction
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` globalFilters
      `Prelude.hashWithSalt` rejectedPatches
      `Prelude.hashWithSalt` approvedPatchesEnableNonSecurity
      `Prelude.hashWithSalt` replace
      `Prelude.hashWithSalt` baselineId

instance Prelude.NFData UpdatePatchBaseline where
  rnf UpdatePatchBaseline' {..} =
    Prelude.rnf approvedPatches
      `Prelude.seq` Prelude.rnf approvedPatchesComplianceLevel
      `Prelude.seq` Prelude.rnf sources
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf approvalRules
      `Prelude.seq` Prelude.rnf rejectedPatchesAction
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf globalFilters
      `Prelude.seq` Prelude.rnf rejectedPatches
      `Prelude.seq` Prelude.rnf approvedPatchesEnableNonSecurity
      `Prelude.seq` Prelude.rnf replace
      `Prelude.seq` Prelude.rnf baselineId

instance Core.ToHeaders UpdatePatchBaseline where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.UpdatePatchBaseline" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdatePatchBaseline where
  toJSON UpdatePatchBaseline' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ApprovedPatches" Core..=)
              Prelude.<$> approvedPatches,
            ("ApprovedPatchesComplianceLevel" Core..=)
              Prelude.<$> approvedPatchesComplianceLevel,
            ("Sources" Core..=) Prelude.<$> sources,
            ("Name" Core..=) Prelude.<$> name,
            ("ApprovalRules" Core..=) Prelude.<$> approvalRules,
            ("RejectedPatchesAction" Core..=)
              Prelude.<$> rejectedPatchesAction,
            ("Description" Core..=) Prelude.<$> description,
            ("GlobalFilters" Core..=) Prelude.<$> globalFilters,
            ("RejectedPatches" Core..=)
              Prelude.<$> rejectedPatches,
            ("ApprovedPatchesEnableNonSecurity" Core..=)
              Prelude.<$> approvedPatchesEnableNonSecurity,
            ("Replace" Core..=) Prelude.<$> replace,
            Prelude.Just ("BaselineId" Core..= baselineId)
          ]
      )

instance Core.ToPath UpdatePatchBaseline where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdatePatchBaseline where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePatchBaselineResponse' smart constructor.
data UpdatePatchBaselineResponse = UpdatePatchBaselineResponse'
  { -- | The operating system rule used by the updated patch baseline.
    operatingSystem :: Prelude.Maybe OperatingSystem,
    -- | A list of explicitly approved patches for the baseline.
    approvedPatches :: Prelude.Maybe [Prelude.Text],
    -- | The compliance severity level assigned to the patch baseline after the
    -- update completed.
    approvedPatchesComplianceLevel :: Prelude.Maybe PatchComplianceLevel,
    -- | Information about the patches to use to update the managed nodes,
    -- including target operating systems and source repositories. Applies to
    -- Linux managed nodes only.
    sources :: Prelude.Maybe [PatchSource],
    -- | The name of the patch baseline.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the deleted patch baseline.
    baselineId :: Prelude.Maybe Prelude.Text,
    -- | A set of rules used to include patches in the baseline.
    approvalRules :: Prelude.Maybe PatchRuleGroup,
    -- | The action specified to take on patches included in the
    -- @RejectedPatches@ list. A patch can be allowed only if it is a
    -- dependency of another package, or blocked entirely along with packages
    -- that include it as a dependency.
    rejectedPatchesAction :: Prelude.Maybe PatchAction,
    -- | A description of the patch baseline.
    description :: Prelude.Maybe Prelude.Text,
    -- | A set of global filters used to exclude patches from the baseline.
    globalFilters :: Prelude.Maybe PatchFilterGroup,
    -- | The date when the patch baseline was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | A list of explicitly rejected patches for the baseline.
    rejectedPatches :: Prelude.Maybe [Prelude.Text],
    -- | Indicates whether the list of approved patches includes non-security
    -- updates that should be applied to the managed nodes. The default value
    -- is @false@. Applies to Linux managed nodes only.
    approvedPatchesEnableNonSecurity :: Prelude.Maybe Prelude.Bool,
    -- | The date when the patch baseline was last modified.
    modifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePatchBaselineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operatingSystem', 'updatePatchBaselineResponse_operatingSystem' - The operating system rule used by the updated patch baseline.
--
-- 'approvedPatches', 'updatePatchBaselineResponse_approvedPatches' - A list of explicitly approved patches for the baseline.
--
-- 'approvedPatchesComplianceLevel', 'updatePatchBaselineResponse_approvedPatchesComplianceLevel' - The compliance severity level assigned to the patch baseline after the
-- update completed.
--
-- 'sources', 'updatePatchBaselineResponse_sources' - Information about the patches to use to update the managed nodes,
-- including target operating systems and source repositories. Applies to
-- Linux managed nodes only.
--
-- 'name', 'updatePatchBaselineResponse_name' - The name of the patch baseline.
--
-- 'baselineId', 'updatePatchBaselineResponse_baselineId' - The ID of the deleted patch baseline.
--
-- 'approvalRules', 'updatePatchBaselineResponse_approvalRules' - A set of rules used to include patches in the baseline.
--
-- 'rejectedPatchesAction', 'updatePatchBaselineResponse_rejectedPatchesAction' - The action specified to take on patches included in the
-- @RejectedPatches@ list. A patch can be allowed only if it is a
-- dependency of another package, or blocked entirely along with packages
-- that include it as a dependency.
--
-- 'description', 'updatePatchBaselineResponse_description' - A description of the patch baseline.
--
-- 'globalFilters', 'updatePatchBaselineResponse_globalFilters' - A set of global filters used to exclude patches from the baseline.
--
-- 'createdDate', 'updatePatchBaselineResponse_createdDate' - The date when the patch baseline was created.
--
-- 'rejectedPatches', 'updatePatchBaselineResponse_rejectedPatches' - A list of explicitly rejected patches for the baseline.
--
-- 'approvedPatchesEnableNonSecurity', 'updatePatchBaselineResponse_approvedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security
-- updates that should be applied to the managed nodes. The default value
-- is @false@. Applies to Linux managed nodes only.
--
-- 'modifiedDate', 'updatePatchBaselineResponse_modifiedDate' - The date when the patch baseline was last modified.
--
-- 'httpStatus', 'updatePatchBaselineResponse_httpStatus' - The response's http status code.
newUpdatePatchBaselineResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePatchBaselineResponse
newUpdatePatchBaselineResponse pHttpStatus_ =
  UpdatePatchBaselineResponse'
    { operatingSystem =
        Prelude.Nothing,
      approvedPatches = Prelude.Nothing,
      approvedPatchesComplianceLevel =
        Prelude.Nothing,
      sources = Prelude.Nothing,
      name = Prelude.Nothing,
      baselineId = Prelude.Nothing,
      approvalRules = Prelude.Nothing,
      rejectedPatchesAction = Prelude.Nothing,
      description = Prelude.Nothing,
      globalFilters = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      rejectedPatches = Prelude.Nothing,
      approvedPatchesEnableNonSecurity =
        Prelude.Nothing,
      modifiedDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The operating system rule used by the updated patch baseline.
updatePatchBaselineResponse_operatingSystem :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe OperatingSystem)
updatePatchBaselineResponse_operatingSystem = Lens.lens (\UpdatePatchBaselineResponse' {operatingSystem} -> operatingSystem) (\s@UpdatePatchBaselineResponse' {} a -> s {operatingSystem = a} :: UpdatePatchBaselineResponse)

-- | A list of explicitly approved patches for the baseline.
updatePatchBaselineResponse_approvedPatches :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe [Prelude.Text])
updatePatchBaselineResponse_approvedPatches = Lens.lens (\UpdatePatchBaselineResponse' {approvedPatches} -> approvedPatches) (\s@UpdatePatchBaselineResponse' {} a -> s {approvedPatches = a} :: UpdatePatchBaselineResponse) Prelude.. Lens.mapping Lens.coerced

-- | The compliance severity level assigned to the patch baseline after the
-- update completed.
updatePatchBaselineResponse_approvedPatchesComplianceLevel :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe PatchComplianceLevel)
updatePatchBaselineResponse_approvedPatchesComplianceLevel = Lens.lens (\UpdatePatchBaselineResponse' {approvedPatchesComplianceLevel} -> approvedPatchesComplianceLevel) (\s@UpdatePatchBaselineResponse' {} a -> s {approvedPatchesComplianceLevel = a} :: UpdatePatchBaselineResponse)

-- | Information about the patches to use to update the managed nodes,
-- including target operating systems and source repositories. Applies to
-- Linux managed nodes only.
updatePatchBaselineResponse_sources :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe [PatchSource])
updatePatchBaselineResponse_sources = Lens.lens (\UpdatePatchBaselineResponse' {sources} -> sources) (\s@UpdatePatchBaselineResponse' {} a -> s {sources = a} :: UpdatePatchBaselineResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the patch baseline.
updatePatchBaselineResponse_name :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe Prelude.Text)
updatePatchBaselineResponse_name = Lens.lens (\UpdatePatchBaselineResponse' {name} -> name) (\s@UpdatePatchBaselineResponse' {} a -> s {name = a} :: UpdatePatchBaselineResponse)

-- | The ID of the deleted patch baseline.
updatePatchBaselineResponse_baselineId :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe Prelude.Text)
updatePatchBaselineResponse_baselineId = Lens.lens (\UpdatePatchBaselineResponse' {baselineId} -> baselineId) (\s@UpdatePatchBaselineResponse' {} a -> s {baselineId = a} :: UpdatePatchBaselineResponse)

-- | A set of rules used to include patches in the baseline.
updatePatchBaselineResponse_approvalRules :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe PatchRuleGroup)
updatePatchBaselineResponse_approvalRules = Lens.lens (\UpdatePatchBaselineResponse' {approvalRules} -> approvalRules) (\s@UpdatePatchBaselineResponse' {} a -> s {approvalRules = a} :: UpdatePatchBaselineResponse)

-- | The action specified to take on patches included in the
-- @RejectedPatches@ list. A patch can be allowed only if it is a
-- dependency of another package, or blocked entirely along with packages
-- that include it as a dependency.
updatePatchBaselineResponse_rejectedPatchesAction :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe PatchAction)
updatePatchBaselineResponse_rejectedPatchesAction = Lens.lens (\UpdatePatchBaselineResponse' {rejectedPatchesAction} -> rejectedPatchesAction) (\s@UpdatePatchBaselineResponse' {} a -> s {rejectedPatchesAction = a} :: UpdatePatchBaselineResponse)

-- | A description of the patch baseline.
updatePatchBaselineResponse_description :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe Prelude.Text)
updatePatchBaselineResponse_description = Lens.lens (\UpdatePatchBaselineResponse' {description} -> description) (\s@UpdatePatchBaselineResponse' {} a -> s {description = a} :: UpdatePatchBaselineResponse)

-- | A set of global filters used to exclude patches from the baseline.
updatePatchBaselineResponse_globalFilters :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe PatchFilterGroup)
updatePatchBaselineResponse_globalFilters = Lens.lens (\UpdatePatchBaselineResponse' {globalFilters} -> globalFilters) (\s@UpdatePatchBaselineResponse' {} a -> s {globalFilters = a} :: UpdatePatchBaselineResponse)

-- | The date when the patch baseline was created.
updatePatchBaselineResponse_createdDate :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe Prelude.UTCTime)
updatePatchBaselineResponse_createdDate = Lens.lens (\UpdatePatchBaselineResponse' {createdDate} -> createdDate) (\s@UpdatePatchBaselineResponse' {} a -> s {createdDate = a} :: UpdatePatchBaselineResponse) Prelude.. Lens.mapping Core._Time

-- | A list of explicitly rejected patches for the baseline.
updatePatchBaselineResponse_rejectedPatches :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe [Prelude.Text])
updatePatchBaselineResponse_rejectedPatches = Lens.lens (\UpdatePatchBaselineResponse' {rejectedPatches} -> rejectedPatches) (\s@UpdatePatchBaselineResponse' {} a -> s {rejectedPatches = a} :: UpdatePatchBaselineResponse) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the list of approved patches includes non-security
-- updates that should be applied to the managed nodes. The default value
-- is @false@. Applies to Linux managed nodes only.
updatePatchBaselineResponse_approvedPatchesEnableNonSecurity :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe Prelude.Bool)
updatePatchBaselineResponse_approvedPatchesEnableNonSecurity = Lens.lens (\UpdatePatchBaselineResponse' {approvedPatchesEnableNonSecurity} -> approvedPatchesEnableNonSecurity) (\s@UpdatePatchBaselineResponse' {} a -> s {approvedPatchesEnableNonSecurity = a} :: UpdatePatchBaselineResponse)

-- | The date when the patch baseline was last modified.
updatePatchBaselineResponse_modifiedDate :: Lens.Lens' UpdatePatchBaselineResponse (Prelude.Maybe Prelude.UTCTime)
updatePatchBaselineResponse_modifiedDate = Lens.lens (\UpdatePatchBaselineResponse' {modifiedDate} -> modifiedDate) (\s@UpdatePatchBaselineResponse' {} a -> s {modifiedDate = a} :: UpdatePatchBaselineResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
updatePatchBaselineResponse_httpStatus :: Lens.Lens' UpdatePatchBaselineResponse Prelude.Int
updatePatchBaselineResponse_httpStatus = Lens.lens (\UpdatePatchBaselineResponse' {httpStatus} -> httpStatus) (\s@UpdatePatchBaselineResponse' {} a -> s {httpStatus = a} :: UpdatePatchBaselineResponse)

instance Prelude.NFData UpdatePatchBaselineResponse where
  rnf UpdatePatchBaselineResponse' {..} =
    Prelude.rnf operatingSystem
      `Prelude.seq` Prelude.rnf approvedPatches
      `Prelude.seq` Prelude.rnf approvedPatchesComplianceLevel
      `Prelude.seq` Prelude.rnf sources
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf baselineId
      `Prelude.seq` Prelude.rnf approvalRules
      `Prelude.seq` Prelude.rnf rejectedPatchesAction
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf globalFilters
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf rejectedPatches
      `Prelude.seq` Prelude.rnf approvedPatchesEnableNonSecurity
      `Prelude.seq` Prelude.rnf modifiedDate
      `Prelude.seq` Prelude.rnf httpStatus
