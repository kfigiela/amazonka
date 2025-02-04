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
-- Module      : Amazonka.Kendra.CreateExperience
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Kendra experience such as a search application. For
-- more information on creating a search application experience, including
-- using the Python and Java SDKs, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html Building a search experience with no code>.
module Amazonka.Kendra.CreateExperience
  ( -- * Creating a Request
    CreateExperience (..),
    newCreateExperience,

    -- * Request Lenses
    createExperience_clientToken,
    createExperience_roleArn,
    createExperience_configuration,
    createExperience_description,
    createExperience_name,
    createExperience_indexId,

    -- * Destructuring the Response
    CreateExperienceResponse (..),
    newCreateExperienceResponse,

    -- * Response Lenses
    createExperienceResponse_httpStatus,
    createExperienceResponse_id,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateExperience' smart constructor.
data CreateExperience = CreateExperience'
  { -- | A token that you provide to identify the request to create your Amazon
    -- Kendra experience. Multiple calls to the @CreateExperience@ API with the
    -- same client token creates only one Amazon Kendra experience.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of a role with permission to access
    -- @Query@ API, @QuerySuggestions@ API, @SubmitFeedback@ API, and IAM
    -- Identity Center that stores your user and group information. For more
    -- information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html IAM roles for Amazon Kendra>.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | Configuration information for your Amazon Kendra experience. This
    -- includes @ContentSourceConfiguration@, which specifies the data source
    -- IDs and\/or FAQ IDs, and @UserIdentityConfiguration@, which specifies
    -- the user or group information to grant access to your Amazon Kendra
    -- experience.
    configuration :: Prelude.Maybe ExperienceConfiguration,
    -- | A description for your Amazon Kendra experience.
    description :: Prelude.Maybe Prelude.Text,
    -- | A name for your Amazon Kendra experience.
    name :: Prelude.Text,
    -- | The identifier of the index for your Amazon Kendra experience.
    indexId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateExperience' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createExperience_clientToken' - A token that you provide to identify the request to create your Amazon
-- Kendra experience. Multiple calls to the @CreateExperience@ API with the
-- same client token creates only one Amazon Kendra experience.
--
-- 'roleArn', 'createExperience_roleArn' - The Amazon Resource Name (ARN) of a role with permission to access
-- @Query@ API, @QuerySuggestions@ API, @SubmitFeedback@ API, and IAM
-- Identity Center that stores your user and group information. For more
-- information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html IAM roles for Amazon Kendra>.
--
-- 'configuration', 'createExperience_configuration' - Configuration information for your Amazon Kendra experience. This
-- includes @ContentSourceConfiguration@, which specifies the data source
-- IDs and\/or FAQ IDs, and @UserIdentityConfiguration@, which specifies
-- the user or group information to grant access to your Amazon Kendra
-- experience.
--
-- 'description', 'createExperience_description' - A description for your Amazon Kendra experience.
--
-- 'name', 'createExperience_name' - A name for your Amazon Kendra experience.
--
-- 'indexId', 'createExperience_indexId' - The identifier of the index for your Amazon Kendra experience.
newCreateExperience ::
  -- | 'name'
  Prelude.Text ->
  -- | 'indexId'
  Prelude.Text ->
  CreateExperience
newCreateExperience pName_ pIndexId_ =
  CreateExperience'
    { clientToken = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      configuration = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_,
      indexId = pIndexId_
    }

-- | A token that you provide to identify the request to create your Amazon
-- Kendra experience. Multiple calls to the @CreateExperience@ API with the
-- same client token creates only one Amazon Kendra experience.
createExperience_clientToken :: Lens.Lens' CreateExperience (Prelude.Maybe Prelude.Text)
createExperience_clientToken = Lens.lens (\CreateExperience' {clientToken} -> clientToken) (\s@CreateExperience' {} a -> s {clientToken = a} :: CreateExperience)

-- | The Amazon Resource Name (ARN) of a role with permission to access
-- @Query@ API, @QuerySuggestions@ API, @SubmitFeedback@ API, and IAM
-- Identity Center that stores your user and group information. For more
-- information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html IAM roles for Amazon Kendra>.
createExperience_roleArn :: Lens.Lens' CreateExperience (Prelude.Maybe Prelude.Text)
createExperience_roleArn = Lens.lens (\CreateExperience' {roleArn} -> roleArn) (\s@CreateExperience' {} a -> s {roleArn = a} :: CreateExperience)

-- | Configuration information for your Amazon Kendra experience. This
-- includes @ContentSourceConfiguration@, which specifies the data source
-- IDs and\/or FAQ IDs, and @UserIdentityConfiguration@, which specifies
-- the user or group information to grant access to your Amazon Kendra
-- experience.
createExperience_configuration :: Lens.Lens' CreateExperience (Prelude.Maybe ExperienceConfiguration)
createExperience_configuration = Lens.lens (\CreateExperience' {configuration} -> configuration) (\s@CreateExperience' {} a -> s {configuration = a} :: CreateExperience)

-- | A description for your Amazon Kendra experience.
createExperience_description :: Lens.Lens' CreateExperience (Prelude.Maybe Prelude.Text)
createExperience_description = Lens.lens (\CreateExperience' {description} -> description) (\s@CreateExperience' {} a -> s {description = a} :: CreateExperience)

-- | A name for your Amazon Kendra experience.
createExperience_name :: Lens.Lens' CreateExperience Prelude.Text
createExperience_name = Lens.lens (\CreateExperience' {name} -> name) (\s@CreateExperience' {} a -> s {name = a} :: CreateExperience)

-- | The identifier of the index for your Amazon Kendra experience.
createExperience_indexId :: Lens.Lens' CreateExperience Prelude.Text
createExperience_indexId = Lens.lens (\CreateExperience' {indexId} -> indexId) (\s@CreateExperience' {} a -> s {indexId = a} :: CreateExperience)

instance Core.AWSRequest CreateExperience where
  type
    AWSResponse CreateExperience =
      CreateExperienceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateExperienceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Id")
      )

instance Prelude.Hashable CreateExperience where
  hashWithSalt _salt CreateExperience' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` configuration
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` indexId

instance Prelude.NFData CreateExperience where
  rnf CreateExperience' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf configuration
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf indexId

instance Core.ToHeaders CreateExperience where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSKendraFrontendService.CreateExperience" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateExperience where
  toJSON CreateExperience' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClientToken" Core..=) Prelude.<$> clientToken,
            ("RoleArn" Core..=) Prelude.<$> roleArn,
            ("Configuration" Core..=) Prelude.<$> configuration,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("IndexId" Core..= indexId)
          ]
      )

instance Core.ToPath CreateExperience where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateExperience where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateExperienceResponse' smart constructor.
data CreateExperienceResponse = CreateExperienceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The identifier for your created Amazon Kendra experience.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateExperienceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createExperienceResponse_httpStatus' - The response's http status code.
--
-- 'id', 'createExperienceResponse_id' - The identifier for your created Amazon Kendra experience.
newCreateExperienceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'id'
  Prelude.Text ->
  CreateExperienceResponse
newCreateExperienceResponse pHttpStatus_ pId_ =
  CreateExperienceResponse'
    { httpStatus =
        pHttpStatus_,
      id = pId_
    }

-- | The response's http status code.
createExperienceResponse_httpStatus :: Lens.Lens' CreateExperienceResponse Prelude.Int
createExperienceResponse_httpStatus = Lens.lens (\CreateExperienceResponse' {httpStatus} -> httpStatus) (\s@CreateExperienceResponse' {} a -> s {httpStatus = a} :: CreateExperienceResponse)

-- | The identifier for your created Amazon Kendra experience.
createExperienceResponse_id :: Lens.Lens' CreateExperienceResponse Prelude.Text
createExperienceResponse_id = Lens.lens (\CreateExperienceResponse' {id} -> id) (\s@CreateExperienceResponse' {} a -> s {id = a} :: CreateExperienceResponse)

instance Prelude.NFData CreateExperienceResponse where
  rnf CreateExperienceResponse' {..} =
    Prelude.rnf httpStatus `Prelude.seq` Prelude.rnf id
