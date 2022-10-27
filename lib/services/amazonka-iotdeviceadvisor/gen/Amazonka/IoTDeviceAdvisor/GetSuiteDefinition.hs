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
-- Module      : Amazonka.IoTDeviceAdvisor.GetSuiteDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Device Advisor test suite.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions GetSuiteDefinition>
-- action.
module Amazonka.IoTDeviceAdvisor.GetSuiteDefinition
  ( -- * Creating a Request
    GetSuiteDefinition (..),
    newGetSuiteDefinition,

    -- * Request Lenses
    getSuiteDefinition_suiteDefinitionVersion,
    getSuiteDefinition_suiteDefinitionId,

    -- * Destructuring the Response
    GetSuiteDefinitionResponse (..),
    newGetSuiteDefinitionResponse,

    -- * Response Lenses
    getSuiteDefinitionResponse_tags,
    getSuiteDefinitionResponse_latestVersion,
    getSuiteDefinitionResponse_suiteDefinitionConfiguration,
    getSuiteDefinitionResponse_suiteDefinitionArn,
    getSuiteDefinitionResponse_suiteDefinitionVersion,
    getSuiteDefinitionResponse_suiteDefinitionId,
    getSuiteDefinitionResponse_createdAt,
    getSuiteDefinitionResponse_lastModifiedAt,
    getSuiteDefinitionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTDeviceAdvisor.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetSuiteDefinition' smart constructor.
data GetSuiteDefinition = GetSuiteDefinition'
  { -- | Suite definition version of the test suite to get.
    suiteDefinitionVersion :: Prelude.Maybe Prelude.Text,
    -- | Suite definition ID of the test suite to get.
    suiteDefinitionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSuiteDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'suiteDefinitionVersion', 'getSuiteDefinition_suiteDefinitionVersion' - Suite definition version of the test suite to get.
--
-- 'suiteDefinitionId', 'getSuiteDefinition_suiteDefinitionId' - Suite definition ID of the test suite to get.
newGetSuiteDefinition ::
  -- | 'suiteDefinitionId'
  Prelude.Text ->
  GetSuiteDefinition
newGetSuiteDefinition pSuiteDefinitionId_ =
  GetSuiteDefinition'
    { suiteDefinitionVersion =
        Prelude.Nothing,
      suiteDefinitionId = pSuiteDefinitionId_
    }

-- | Suite definition version of the test suite to get.
getSuiteDefinition_suiteDefinitionVersion :: Lens.Lens' GetSuiteDefinition (Prelude.Maybe Prelude.Text)
getSuiteDefinition_suiteDefinitionVersion = Lens.lens (\GetSuiteDefinition' {suiteDefinitionVersion} -> suiteDefinitionVersion) (\s@GetSuiteDefinition' {} a -> s {suiteDefinitionVersion = a} :: GetSuiteDefinition)

-- | Suite definition ID of the test suite to get.
getSuiteDefinition_suiteDefinitionId :: Lens.Lens' GetSuiteDefinition Prelude.Text
getSuiteDefinition_suiteDefinitionId = Lens.lens (\GetSuiteDefinition' {suiteDefinitionId} -> suiteDefinitionId) (\s@GetSuiteDefinition' {} a -> s {suiteDefinitionId = a} :: GetSuiteDefinition)

instance Core.AWSRequest GetSuiteDefinition where
  type
    AWSResponse GetSuiteDefinition =
      GetSuiteDefinitionResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSuiteDefinitionResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "latestVersion")
            Prelude.<*> (x Core..?> "suiteDefinitionConfiguration")
            Prelude.<*> (x Core..?> "suiteDefinitionArn")
            Prelude.<*> (x Core..?> "suiteDefinitionVersion")
            Prelude.<*> (x Core..?> "suiteDefinitionId")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "lastModifiedAt")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSuiteDefinition where
  hashWithSalt _salt GetSuiteDefinition' {..} =
    _salt `Prelude.hashWithSalt` suiteDefinitionVersion
      `Prelude.hashWithSalt` suiteDefinitionId

instance Prelude.NFData GetSuiteDefinition where
  rnf GetSuiteDefinition' {..} =
    Prelude.rnf suiteDefinitionVersion
      `Prelude.seq` Prelude.rnf suiteDefinitionId

instance Core.ToHeaders GetSuiteDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetSuiteDefinition where
  toPath GetSuiteDefinition' {..} =
    Prelude.mconcat
      ["/suiteDefinitions/", Core.toBS suiteDefinitionId]

instance Core.ToQuery GetSuiteDefinition where
  toQuery GetSuiteDefinition' {..} =
    Prelude.mconcat
      [ "suiteDefinitionVersion"
          Core.=: suiteDefinitionVersion
      ]

-- | /See:/ 'newGetSuiteDefinitionResponse' smart constructor.
data GetSuiteDefinitionResponse = GetSuiteDefinitionResponse'
  { -- | Tags attached to the suite definition.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Latest suite definition version of the suite definition.
    latestVersion :: Prelude.Maybe Prelude.Text,
    -- | Suite configuration of the suite definition.
    suiteDefinitionConfiguration :: Prelude.Maybe SuiteDefinitionConfiguration,
    -- | The ARN of the suite definition.
    suiteDefinitionArn :: Prelude.Maybe Prelude.Text,
    -- | Suite definition version of the suite definition.
    suiteDefinitionVersion :: Prelude.Maybe Prelude.Text,
    -- | Suite definition ID of the suite definition.
    suiteDefinitionId :: Prelude.Maybe Prelude.Text,
    -- | Date (in Unix epoch time) when the suite definition was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | Date (in Unix epoch time) when the suite definition was last modified.
    lastModifiedAt :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSuiteDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getSuiteDefinitionResponse_tags' - Tags attached to the suite definition.
--
-- 'latestVersion', 'getSuiteDefinitionResponse_latestVersion' - Latest suite definition version of the suite definition.
--
-- 'suiteDefinitionConfiguration', 'getSuiteDefinitionResponse_suiteDefinitionConfiguration' - Suite configuration of the suite definition.
--
-- 'suiteDefinitionArn', 'getSuiteDefinitionResponse_suiteDefinitionArn' - The ARN of the suite definition.
--
-- 'suiteDefinitionVersion', 'getSuiteDefinitionResponse_suiteDefinitionVersion' - Suite definition version of the suite definition.
--
-- 'suiteDefinitionId', 'getSuiteDefinitionResponse_suiteDefinitionId' - Suite definition ID of the suite definition.
--
-- 'createdAt', 'getSuiteDefinitionResponse_createdAt' - Date (in Unix epoch time) when the suite definition was created.
--
-- 'lastModifiedAt', 'getSuiteDefinitionResponse_lastModifiedAt' - Date (in Unix epoch time) when the suite definition was last modified.
--
-- 'httpStatus', 'getSuiteDefinitionResponse_httpStatus' - The response's http status code.
newGetSuiteDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSuiteDefinitionResponse
newGetSuiteDefinitionResponse pHttpStatus_ =
  GetSuiteDefinitionResponse'
    { tags = Prelude.Nothing,
      latestVersion = Prelude.Nothing,
      suiteDefinitionConfiguration = Prelude.Nothing,
      suiteDefinitionArn = Prelude.Nothing,
      suiteDefinitionVersion = Prelude.Nothing,
      suiteDefinitionId = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      lastModifiedAt = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Tags attached to the suite definition.
getSuiteDefinitionResponse_tags :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getSuiteDefinitionResponse_tags = Lens.lens (\GetSuiteDefinitionResponse' {tags} -> tags) (\s@GetSuiteDefinitionResponse' {} a -> s {tags = a} :: GetSuiteDefinitionResponse) Prelude.. Lens.mapping Lens.coerced

-- | Latest suite definition version of the suite definition.
getSuiteDefinitionResponse_latestVersion :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe Prelude.Text)
getSuiteDefinitionResponse_latestVersion = Lens.lens (\GetSuiteDefinitionResponse' {latestVersion} -> latestVersion) (\s@GetSuiteDefinitionResponse' {} a -> s {latestVersion = a} :: GetSuiteDefinitionResponse)

-- | Suite configuration of the suite definition.
getSuiteDefinitionResponse_suiteDefinitionConfiguration :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe SuiteDefinitionConfiguration)
getSuiteDefinitionResponse_suiteDefinitionConfiguration = Lens.lens (\GetSuiteDefinitionResponse' {suiteDefinitionConfiguration} -> suiteDefinitionConfiguration) (\s@GetSuiteDefinitionResponse' {} a -> s {suiteDefinitionConfiguration = a} :: GetSuiteDefinitionResponse)

-- | The ARN of the suite definition.
getSuiteDefinitionResponse_suiteDefinitionArn :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe Prelude.Text)
getSuiteDefinitionResponse_suiteDefinitionArn = Lens.lens (\GetSuiteDefinitionResponse' {suiteDefinitionArn} -> suiteDefinitionArn) (\s@GetSuiteDefinitionResponse' {} a -> s {suiteDefinitionArn = a} :: GetSuiteDefinitionResponse)

-- | Suite definition version of the suite definition.
getSuiteDefinitionResponse_suiteDefinitionVersion :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe Prelude.Text)
getSuiteDefinitionResponse_suiteDefinitionVersion = Lens.lens (\GetSuiteDefinitionResponse' {suiteDefinitionVersion} -> suiteDefinitionVersion) (\s@GetSuiteDefinitionResponse' {} a -> s {suiteDefinitionVersion = a} :: GetSuiteDefinitionResponse)

-- | Suite definition ID of the suite definition.
getSuiteDefinitionResponse_suiteDefinitionId :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe Prelude.Text)
getSuiteDefinitionResponse_suiteDefinitionId = Lens.lens (\GetSuiteDefinitionResponse' {suiteDefinitionId} -> suiteDefinitionId) (\s@GetSuiteDefinitionResponse' {} a -> s {suiteDefinitionId = a} :: GetSuiteDefinitionResponse)

-- | Date (in Unix epoch time) when the suite definition was created.
getSuiteDefinitionResponse_createdAt :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe Prelude.UTCTime)
getSuiteDefinitionResponse_createdAt = Lens.lens (\GetSuiteDefinitionResponse' {createdAt} -> createdAt) (\s@GetSuiteDefinitionResponse' {} a -> s {createdAt = a} :: GetSuiteDefinitionResponse) Prelude.. Lens.mapping Core._Time

-- | Date (in Unix epoch time) when the suite definition was last modified.
getSuiteDefinitionResponse_lastModifiedAt :: Lens.Lens' GetSuiteDefinitionResponse (Prelude.Maybe Prelude.UTCTime)
getSuiteDefinitionResponse_lastModifiedAt = Lens.lens (\GetSuiteDefinitionResponse' {lastModifiedAt} -> lastModifiedAt) (\s@GetSuiteDefinitionResponse' {} a -> s {lastModifiedAt = a} :: GetSuiteDefinitionResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getSuiteDefinitionResponse_httpStatus :: Lens.Lens' GetSuiteDefinitionResponse Prelude.Int
getSuiteDefinitionResponse_httpStatus = Lens.lens (\GetSuiteDefinitionResponse' {httpStatus} -> httpStatus) (\s@GetSuiteDefinitionResponse' {} a -> s {httpStatus = a} :: GetSuiteDefinitionResponse)

instance Prelude.NFData GetSuiteDefinitionResponse where
  rnf GetSuiteDefinitionResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf latestVersion
      `Prelude.seq` Prelude.rnf suiteDefinitionConfiguration
      `Prelude.seq` Prelude.rnf suiteDefinitionArn
      `Prelude.seq` Prelude.rnf suiteDefinitionVersion
      `Prelude.seq` Prelude.rnf suiteDefinitionId
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf lastModifiedAt
      `Prelude.seq` Prelude.rnf httpStatus
