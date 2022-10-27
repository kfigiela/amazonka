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
-- Module      : Amazonka.RolesAnywhere.CreateProfile
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a profile. A profile is configuration resource to list the roles
-- that RolesAnywhere service is trusted to assume. In addition, by
-- applying a profile you can intersect permissions with IAM managed
-- policies.
--
-- __Required permissions:__ @rolesanywhere:CreateProfile@.
module Amazonka.RolesAnywhere.CreateProfile
  ( -- * Creating a Request
    CreateProfile (..),
    newCreateProfile,

    -- * Request Lenses
    createProfile_tags,
    createProfile_managedPolicyArns,
    createProfile_enabled,
    createProfile_durationSeconds,
    createProfile_sessionPolicy,
    createProfile_requireInstanceProperties,
    createProfile_name,
    createProfile_roleArns,

    -- * Destructuring the Response
    ProfileDetailResponse (..),
    newProfileDetailResponse,

    -- * Response Lenses
    profileDetailResponse_profile,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.RolesAnywhere.Types

-- | /See:/ 'newCreateProfile' smart constructor.
data CreateProfile = CreateProfile'
  { -- | The tags to attach to the profile.
    tags :: Prelude.Maybe [Tag],
    -- | A list of managed policy ARNs that apply to the vended session
    -- credentials.
    managedPolicyArns :: Prelude.Maybe [Prelude.Text],
    -- | Specifies whether the profile is enabled.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The number of seconds the vended session credentials are valid for.
    durationSeconds :: Prelude.Maybe Prelude.Natural,
    -- | A session policy that applies to the trust boundary of the vended
    -- session credentials.
    sessionPolicy :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether instance properties are required in
    -- <https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html CreateSession>
    -- requests with this profile.
    requireInstanceProperties :: Prelude.Maybe Prelude.Bool,
    -- | The name of the profile.
    name :: Prelude.Text,
    -- | A list of IAM roles that this profile can assume in a
    -- <https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html CreateSession>
    -- operation.
    roleArns :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createProfile_tags' - The tags to attach to the profile.
--
-- 'managedPolicyArns', 'createProfile_managedPolicyArns' - A list of managed policy ARNs that apply to the vended session
-- credentials.
--
-- 'enabled', 'createProfile_enabled' - Specifies whether the profile is enabled.
--
-- 'durationSeconds', 'createProfile_durationSeconds' - The number of seconds the vended session credentials are valid for.
--
-- 'sessionPolicy', 'createProfile_sessionPolicy' - A session policy that applies to the trust boundary of the vended
-- session credentials.
--
-- 'requireInstanceProperties', 'createProfile_requireInstanceProperties' - Specifies whether instance properties are required in
-- <https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html CreateSession>
-- requests with this profile.
--
-- 'name', 'createProfile_name' - The name of the profile.
--
-- 'roleArns', 'createProfile_roleArns' - A list of IAM roles that this profile can assume in a
-- <https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html CreateSession>
-- operation.
newCreateProfile ::
  -- | 'name'
  Prelude.Text ->
  CreateProfile
newCreateProfile pName_ =
  CreateProfile'
    { tags = Prelude.Nothing,
      managedPolicyArns = Prelude.Nothing,
      enabled = Prelude.Nothing,
      durationSeconds = Prelude.Nothing,
      sessionPolicy = Prelude.Nothing,
      requireInstanceProperties = Prelude.Nothing,
      name = pName_,
      roleArns = Prelude.mempty
    }

-- | The tags to attach to the profile.
createProfile_tags :: Lens.Lens' CreateProfile (Prelude.Maybe [Tag])
createProfile_tags = Lens.lens (\CreateProfile' {tags} -> tags) (\s@CreateProfile' {} a -> s {tags = a} :: CreateProfile) Prelude.. Lens.mapping Lens.coerced

-- | A list of managed policy ARNs that apply to the vended session
-- credentials.
createProfile_managedPolicyArns :: Lens.Lens' CreateProfile (Prelude.Maybe [Prelude.Text])
createProfile_managedPolicyArns = Lens.lens (\CreateProfile' {managedPolicyArns} -> managedPolicyArns) (\s@CreateProfile' {} a -> s {managedPolicyArns = a} :: CreateProfile) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether the profile is enabled.
createProfile_enabled :: Lens.Lens' CreateProfile (Prelude.Maybe Prelude.Bool)
createProfile_enabled = Lens.lens (\CreateProfile' {enabled} -> enabled) (\s@CreateProfile' {} a -> s {enabled = a} :: CreateProfile)

-- | The number of seconds the vended session credentials are valid for.
createProfile_durationSeconds :: Lens.Lens' CreateProfile (Prelude.Maybe Prelude.Natural)
createProfile_durationSeconds = Lens.lens (\CreateProfile' {durationSeconds} -> durationSeconds) (\s@CreateProfile' {} a -> s {durationSeconds = a} :: CreateProfile)

-- | A session policy that applies to the trust boundary of the vended
-- session credentials.
createProfile_sessionPolicy :: Lens.Lens' CreateProfile (Prelude.Maybe Prelude.Text)
createProfile_sessionPolicy = Lens.lens (\CreateProfile' {sessionPolicy} -> sessionPolicy) (\s@CreateProfile' {} a -> s {sessionPolicy = a} :: CreateProfile)

-- | Specifies whether instance properties are required in
-- <https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html CreateSession>
-- requests with this profile.
createProfile_requireInstanceProperties :: Lens.Lens' CreateProfile (Prelude.Maybe Prelude.Bool)
createProfile_requireInstanceProperties = Lens.lens (\CreateProfile' {requireInstanceProperties} -> requireInstanceProperties) (\s@CreateProfile' {} a -> s {requireInstanceProperties = a} :: CreateProfile)

-- | The name of the profile.
createProfile_name :: Lens.Lens' CreateProfile Prelude.Text
createProfile_name = Lens.lens (\CreateProfile' {name} -> name) (\s@CreateProfile' {} a -> s {name = a} :: CreateProfile)

-- | A list of IAM roles that this profile can assume in a
-- <https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html CreateSession>
-- operation.
createProfile_roleArns :: Lens.Lens' CreateProfile [Prelude.Text]
createProfile_roleArns = Lens.lens (\CreateProfile' {roleArns} -> roleArns) (\s@CreateProfile' {} a -> s {roleArns = a} :: CreateProfile) Prelude.. Lens.coerced

instance Core.AWSRequest CreateProfile where
  type
    AWSResponse CreateProfile =
      ProfileDetailResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable CreateProfile where
  hashWithSalt _salt CreateProfile' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` managedPolicyArns
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` durationSeconds
      `Prelude.hashWithSalt` sessionPolicy
      `Prelude.hashWithSalt` requireInstanceProperties
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` roleArns

instance Prelude.NFData CreateProfile where
  rnf CreateProfile' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf managedPolicyArns
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf durationSeconds
      `Prelude.seq` Prelude.rnf sessionPolicy
      `Prelude.seq` Prelude.rnf requireInstanceProperties
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf roleArns

instance Core.ToHeaders CreateProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateProfile where
  toJSON CreateProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("managedPolicyArns" Core..=)
              Prelude.<$> managedPolicyArns,
            ("enabled" Core..=) Prelude.<$> enabled,
            ("durationSeconds" Core..=)
              Prelude.<$> durationSeconds,
            ("sessionPolicy" Core..=) Prelude.<$> sessionPolicy,
            ("requireInstanceProperties" Core..=)
              Prelude.<$> requireInstanceProperties,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("roleArns" Core..= roleArns)
          ]
      )

instance Core.ToPath CreateProfile where
  toPath = Prelude.const "/profiles"

instance Core.ToQuery CreateProfile where
  toQuery = Prelude.const Prelude.mempty
