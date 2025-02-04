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
-- Module      : Amazonka.WorkSpacesWeb.CreateBrowserSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a browser settings resource that can be associated with a web
-- portal. Once associated with a web portal, browser settings control how
-- the browser will behave once a user starts a streaming session for the
-- web portal.
module Amazonka.WorkSpacesWeb.CreateBrowserSettings
  ( -- * Creating a Request
    CreateBrowserSettings (..),
    newCreateBrowserSettings,

    -- * Request Lenses
    createBrowserSettings_tags,
    createBrowserSettings_clientToken,
    createBrowserSettings_customerManagedKey,
    createBrowserSettings_additionalEncryptionContext,
    createBrowserSettings_browserPolicy,

    -- * Destructuring the Response
    CreateBrowserSettingsResponse (..),
    newCreateBrowserSettingsResponse,

    -- * Response Lenses
    createBrowserSettingsResponse_httpStatus,
    createBrowserSettingsResponse_browserSettingsArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpacesWeb.Types

-- | /See:/ 'newCreateBrowserSettings' smart constructor.
data CreateBrowserSettings = CreateBrowserSettings'
  { -- | The tags to add to the browser settings resource. A tag is a key-value
    -- pair.
    tags :: Prelude.Maybe [Core.Sensitive Tag],
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. Idempotency ensures that an API request
    -- completes only once. With an idempotent request, if the original request
    -- completes successfully, subsequent retries with the same client token
    -- returns the result from the original successful request.
    --
    -- If you do not specify a client token, one is automatically generated by
    -- the AWS SDK.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The custom managed key of the browser settings.
    customerManagedKey :: Prelude.Maybe Prelude.Text,
    -- | Additional encryption context of the browser settings.
    additionalEncryptionContext :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A JSON string containing Chrome Enterprise policies that will be applied
    -- to all streaming sessions.
    browserPolicy :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBrowserSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createBrowserSettings_tags' - The tags to add to the browser settings resource. A tag is a key-value
-- pair.
--
-- 'clientToken', 'createBrowserSettings_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
--
-- 'customerManagedKey', 'createBrowserSettings_customerManagedKey' - The custom managed key of the browser settings.
--
-- 'additionalEncryptionContext', 'createBrowserSettings_additionalEncryptionContext' - Additional encryption context of the browser settings.
--
-- 'browserPolicy', 'createBrowserSettings_browserPolicy' - A JSON string containing Chrome Enterprise policies that will be applied
-- to all streaming sessions.
newCreateBrowserSettings ::
  -- | 'browserPolicy'
  Prelude.Text ->
  CreateBrowserSettings
newCreateBrowserSettings pBrowserPolicy_ =
  CreateBrowserSettings'
    { tags = Prelude.Nothing,
      clientToken = Prelude.Nothing,
      customerManagedKey = Prelude.Nothing,
      additionalEncryptionContext = Prelude.Nothing,
      browserPolicy =
        Core._Sensitive Lens.# pBrowserPolicy_
    }

-- | The tags to add to the browser settings resource. A tag is a key-value
-- pair.
createBrowserSettings_tags :: Lens.Lens' CreateBrowserSettings (Prelude.Maybe [Tag])
createBrowserSettings_tags = Lens.lens (\CreateBrowserSettings' {tags} -> tags) (\s@CreateBrowserSettings' {} a -> s {tags = a} :: CreateBrowserSettings) Prelude.. Lens.mapping Lens.coerced

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
createBrowserSettings_clientToken :: Lens.Lens' CreateBrowserSettings (Prelude.Maybe Prelude.Text)
createBrowserSettings_clientToken = Lens.lens (\CreateBrowserSettings' {clientToken} -> clientToken) (\s@CreateBrowserSettings' {} a -> s {clientToken = a} :: CreateBrowserSettings)

-- | The custom managed key of the browser settings.
createBrowserSettings_customerManagedKey :: Lens.Lens' CreateBrowserSettings (Prelude.Maybe Prelude.Text)
createBrowserSettings_customerManagedKey = Lens.lens (\CreateBrowserSettings' {customerManagedKey} -> customerManagedKey) (\s@CreateBrowserSettings' {} a -> s {customerManagedKey = a} :: CreateBrowserSettings)

-- | Additional encryption context of the browser settings.
createBrowserSettings_additionalEncryptionContext :: Lens.Lens' CreateBrowserSettings (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createBrowserSettings_additionalEncryptionContext = Lens.lens (\CreateBrowserSettings' {additionalEncryptionContext} -> additionalEncryptionContext) (\s@CreateBrowserSettings' {} a -> s {additionalEncryptionContext = a} :: CreateBrowserSettings) Prelude.. Lens.mapping Lens.coerced

-- | A JSON string containing Chrome Enterprise policies that will be applied
-- to all streaming sessions.
createBrowserSettings_browserPolicy :: Lens.Lens' CreateBrowserSettings Prelude.Text
createBrowserSettings_browserPolicy = Lens.lens (\CreateBrowserSettings' {browserPolicy} -> browserPolicy) (\s@CreateBrowserSettings' {} a -> s {browserPolicy = a} :: CreateBrowserSettings) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateBrowserSettings where
  type
    AWSResponse CreateBrowserSettings =
      CreateBrowserSettingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBrowserSettingsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "browserSettingsArn")
      )

instance Prelude.Hashable CreateBrowserSettings where
  hashWithSalt _salt CreateBrowserSettings' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` customerManagedKey
      `Prelude.hashWithSalt` additionalEncryptionContext
      `Prelude.hashWithSalt` browserPolicy

instance Prelude.NFData CreateBrowserSettings where
  rnf CreateBrowserSettings' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf customerManagedKey
      `Prelude.seq` Prelude.rnf additionalEncryptionContext
      `Prelude.seq` Prelude.rnf browserPolicy

instance Core.ToHeaders CreateBrowserSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBrowserSettings where
  toJSON CreateBrowserSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("clientToken" Core..=) Prelude.<$> clientToken,
            ("customerManagedKey" Core..=)
              Prelude.<$> customerManagedKey,
            ("additionalEncryptionContext" Core..=)
              Prelude.<$> additionalEncryptionContext,
            Prelude.Just
              ("browserPolicy" Core..= browserPolicy)
          ]
      )

instance Core.ToPath CreateBrowserSettings where
  toPath = Prelude.const "/browserSettings"

instance Core.ToQuery CreateBrowserSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBrowserSettingsResponse' smart constructor.
data CreateBrowserSettingsResponse = CreateBrowserSettingsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the browser settings.
    browserSettingsArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBrowserSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createBrowserSettingsResponse_httpStatus' - The response's http status code.
--
-- 'browserSettingsArn', 'createBrowserSettingsResponse_browserSettingsArn' - The ARN of the browser settings.
newCreateBrowserSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'browserSettingsArn'
  Prelude.Text ->
  CreateBrowserSettingsResponse
newCreateBrowserSettingsResponse
  pHttpStatus_
  pBrowserSettingsArn_ =
    CreateBrowserSettingsResponse'
      { httpStatus =
          pHttpStatus_,
        browserSettingsArn = pBrowserSettingsArn_
      }

-- | The response's http status code.
createBrowserSettingsResponse_httpStatus :: Lens.Lens' CreateBrowserSettingsResponse Prelude.Int
createBrowserSettingsResponse_httpStatus = Lens.lens (\CreateBrowserSettingsResponse' {httpStatus} -> httpStatus) (\s@CreateBrowserSettingsResponse' {} a -> s {httpStatus = a} :: CreateBrowserSettingsResponse)

-- | The ARN of the browser settings.
createBrowserSettingsResponse_browserSettingsArn :: Lens.Lens' CreateBrowserSettingsResponse Prelude.Text
createBrowserSettingsResponse_browserSettingsArn = Lens.lens (\CreateBrowserSettingsResponse' {browserSettingsArn} -> browserSettingsArn) (\s@CreateBrowserSettingsResponse' {} a -> s {browserSettingsArn = a} :: CreateBrowserSettingsResponse)

instance Prelude.NFData CreateBrowserSettingsResponse where
  rnf CreateBrowserSettingsResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf browserSettingsArn
