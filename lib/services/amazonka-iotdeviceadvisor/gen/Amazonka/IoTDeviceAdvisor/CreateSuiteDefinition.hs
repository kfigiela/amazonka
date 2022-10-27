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
-- Module      : Amazonka.IoTDeviceAdvisor.CreateSuiteDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Device Advisor test suite.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions CreateSuiteDefinition>
-- action.
module Amazonka.IoTDeviceAdvisor.CreateSuiteDefinition
  ( -- * Creating a Request
    CreateSuiteDefinition (..),
    newCreateSuiteDefinition,

    -- * Request Lenses
    createSuiteDefinition_tags,
    createSuiteDefinition_suiteDefinitionConfiguration,

    -- * Destructuring the Response
    CreateSuiteDefinitionResponse (..),
    newCreateSuiteDefinitionResponse,

    -- * Response Lenses
    createSuiteDefinitionResponse_suiteDefinitionName,
    createSuiteDefinitionResponse_suiteDefinitionArn,
    createSuiteDefinitionResponse_suiteDefinitionId,
    createSuiteDefinitionResponse_createdAt,
    createSuiteDefinitionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTDeviceAdvisor.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateSuiteDefinition' smart constructor.
data CreateSuiteDefinition = CreateSuiteDefinition'
  { -- | The tags to be attached to the suite definition.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Creates a Device Advisor test suite with suite definition configuration.
    suiteDefinitionConfiguration :: Prelude.Maybe SuiteDefinitionConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSuiteDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createSuiteDefinition_tags' - The tags to be attached to the suite definition.
--
-- 'suiteDefinitionConfiguration', 'createSuiteDefinition_suiteDefinitionConfiguration' - Creates a Device Advisor test suite with suite definition configuration.
newCreateSuiteDefinition ::
  CreateSuiteDefinition
newCreateSuiteDefinition =
  CreateSuiteDefinition'
    { tags = Prelude.Nothing,
      suiteDefinitionConfiguration = Prelude.Nothing
    }

-- | The tags to be attached to the suite definition.
createSuiteDefinition_tags :: Lens.Lens' CreateSuiteDefinition (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createSuiteDefinition_tags = Lens.lens (\CreateSuiteDefinition' {tags} -> tags) (\s@CreateSuiteDefinition' {} a -> s {tags = a} :: CreateSuiteDefinition) Prelude.. Lens.mapping Lens.coerced

-- | Creates a Device Advisor test suite with suite definition configuration.
createSuiteDefinition_suiteDefinitionConfiguration :: Lens.Lens' CreateSuiteDefinition (Prelude.Maybe SuiteDefinitionConfiguration)
createSuiteDefinition_suiteDefinitionConfiguration = Lens.lens (\CreateSuiteDefinition' {suiteDefinitionConfiguration} -> suiteDefinitionConfiguration) (\s@CreateSuiteDefinition' {} a -> s {suiteDefinitionConfiguration = a} :: CreateSuiteDefinition)

instance Core.AWSRequest CreateSuiteDefinition where
  type
    AWSResponse CreateSuiteDefinition =
      CreateSuiteDefinitionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSuiteDefinitionResponse'
            Prelude.<$> (x Core..?> "suiteDefinitionName")
            Prelude.<*> (x Core..?> "suiteDefinitionArn")
            Prelude.<*> (x Core..?> "suiteDefinitionId")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSuiteDefinition where
  hashWithSalt _salt CreateSuiteDefinition' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` suiteDefinitionConfiguration

instance Prelude.NFData CreateSuiteDefinition where
  rnf CreateSuiteDefinition' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf suiteDefinitionConfiguration

instance Core.ToHeaders CreateSuiteDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateSuiteDefinition where
  toJSON CreateSuiteDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("suiteDefinitionConfiguration" Core..=)
              Prelude.<$> suiteDefinitionConfiguration
          ]
      )

instance Core.ToPath CreateSuiteDefinition where
  toPath = Prelude.const "/suiteDefinitions"

instance Core.ToQuery CreateSuiteDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSuiteDefinitionResponse' smart constructor.
data CreateSuiteDefinitionResponse = CreateSuiteDefinitionResponse'
  { -- | Creates a Device Advisor test suite with suite definition name.
    suiteDefinitionName :: Prelude.Maybe Prelude.Text,
    -- | Creates a Device Advisor test suite with Amazon Resource Name (ARN).
    suiteDefinitionArn :: Prelude.Maybe Prelude.Text,
    -- | Creates a Device Advisor test suite with suite UUID.
    suiteDefinitionId :: Prelude.Maybe Prelude.Text,
    -- | Creates a Device Advisor test suite with TimeStamp of when it was
    -- created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSuiteDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'suiteDefinitionName', 'createSuiteDefinitionResponse_suiteDefinitionName' - Creates a Device Advisor test suite with suite definition name.
--
-- 'suiteDefinitionArn', 'createSuiteDefinitionResponse_suiteDefinitionArn' - Creates a Device Advisor test suite with Amazon Resource Name (ARN).
--
-- 'suiteDefinitionId', 'createSuiteDefinitionResponse_suiteDefinitionId' - Creates a Device Advisor test suite with suite UUID.
--
-- 'createdAt', 'createSuiteDefinitionResponse_createdAt' - Creates a Device Advisor test suite with TimeStamp of when it was
-- created.
--
-- 'httpStatus', 'createSuiteDefinitionResponse_httpStatus' - The response's http status code.
newCreateSuiteDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSuiteDefinitionResponse
newCreateSuiteDefinitionResponse pHttpStatus_ =
  CreateSuiteDefinitionResponse'
    { suiteDefinitionName =
        Prelude.Nothing,
      suiteDefinitionArn = Prelude.Nothing,
      suiteDefinitionId = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Creates a Device Advisor test suite with suite definition name.
createSuiteDefinitionResponse_suiteDefinitionName :: Lens.Lens' CreateSuiteDefinitionResponse (Prelude.Maybe Prelude.Text)
createSuiteDefinitionResponse_suiteDefinitionName = Lens.lens (\CreateSuiteDefinitionResponse' {suiteDefinitionName} -> suiteDefinitionName) (\s@CreateSuiteDefinitionResponse' {} a -> s {suiteDefinitionName = a} :: CreateSuiteDefinitionResponse)

-- | Creates a Device Advisor test suite with Amazon Resource Name (ARN).
createSuiteDefinitionResponse_suiteDefinitionArn :: Lens.Lens' CreateSuiteDefinitionResponse (Prelude.Maybe Prelude.Text)
createSuiteDefinitionResponse_suiteDefinitionArn = Lens.lens (\CreateSuiteDefinitionResponse' {suiteDefinitionArn} -> suiteDefinitionArn) (\s@CreateSuiteDefinitionResponse' {} a -> s {suiteDefinitionArn = a} :: CreateSuiteDefinitionResponse)

-- | Creates a Device Advisor test suite with suite UUID.
createSuiteDefinitionResponse_suiteDefinitionId :: Lens.Lens' CreateSuiteDefinitionResponse (Prelude.Maybe Prelude.Text)
createSuiteDefinitionResponse_suiteDefinitionId = Lens.lens (\CreateSuiteDefinitionResponse' {suiteDefinitionId} -> suiteDefinitionId) (\s@CreateSuiteDefinitionResponse' {} a -> s {suiteDefinitionId = a} :: CreateSuiteDefinitionResponse)

-- | Creates a Device Advisor test suite with TimeStamp of when it was
-- created.
createSuiteDefinitionResponse_createdAt :: Lens.Lens' CreateSuiteDefinitionResponse (Prelude.Maybe Prelude.UTCTime)
createSuiteDefinitionResponse_createdAt = Lens.lens (\CreateSuiteDefinitionResponse' {createdAt} -> createdAt) (\s@CreateSuiteDefinitionResponse' {} a -> s {createdAt = a} :: CreateSuiteDefinitionResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
createSuiteDefinitionResponse_httpStatus :: Lens.Lens' CreateSuiteDefinitionResponse Prelude.Int
createSuiteDefinitionResponse_httpStatus = Lens.lens (\CreateSuiteDefinitionResponse' {httpStatus} -> httpStatus) (\s@CreateSuiteDefinitionResponse' {} a -> s {httpStatus = a} :: CreateSuiteDefinitionResponse)

instance Prelude.NFData CreateSuiteDefinitionResponse where
  rnf CreateSuiteDefinitionResponse' {..} =
    Prelude.rnf suiteDefinitionName
      `Prelude.seq` Prelude.rnf suiteDefinitionArn
      `Prelude.seq` Prelude.rnf suiteDefinitionId
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf httpStatus
