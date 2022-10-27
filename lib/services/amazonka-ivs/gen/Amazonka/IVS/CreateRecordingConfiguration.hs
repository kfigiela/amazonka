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
-- Module      : Amazonka.IVS.CreateRecordingConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new recording configuration, used to enable recording to
-- Amazon S3.
--
-- __Known issue:__ In the us-east-1 region, if you use the Amazon Web
-- Services CLI to create a recording configuration, it returns success
-- even if the S3 bucket is in a different region. In this case, the
-- @state@ of the recording configuration is @CREATE_FAILED@ (instead of
-- @ACTIVE@). (In other regions, the CLI correctly returns failure if the
-- bucket is in a different region.)
--
-- __Workaround:__ Ensure that your S3 bucket is in the same region as the
-- recording configuration. If you create a recording configuration in a
-- different region as your S3 bucket, delete that recording configuration
-- and create a new one with an S3 bucket from the correct region.
module Amazonka.IVS.CreateRecordingConfiguration
  ( -- * Creating a Request
    CreateRecordingConfiguration (..),
    newCreateRecordingConfiguration,

    -- * Request Lenses
    createRecordingConfiguration_tags,
    createRecordingConfiguration_name,
    createRecordingConfiguration_thumbnailConfiguration,
    createRecordingConfiguration_recordingReconnectWindowSeconds,
    createRecordingConfiguration_destinationConfiguration,

    -- * Destructuring the Response
    CreateRecordingConfigurationResponse (..),
    newCreateRecordingConfigurationResponse,

    -- * Response Lenses
    createRecordingConfigurationResponse_recordingConfiguration,
    createRecordingConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IVS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateRecordingConfiguration' smart constructor.
data CreateRecordingConfiguration = CreateRecordingConfiguration'
  { -- | Array of 1-50 maps, each of the form @string:string (key:value)@. See
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
    -- for more information, including restrictions that apply to tags and
    -- \"Tag naming limits and requirements\"; Amazon IVS has no
    -- service-specific constraints beyond what is documented there.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Recording-configuration name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | A complex type that allows you to enable\/disable the recording of
    -- thumbnails for a live session and modify the interval at which
    -- thumbnails are generated for the live session.
    thumbnailConfiguration :: Prelude.Maybe ThumbnailConfiguration,
    -- | If a broadcast disconnects and then reconnects within the specified
    -- interval, the multiple streams will be considered a single broadcast and
    -- merged together. Default: 0.
    recordingReconnectWindowSeconds :: Prelude.Maybe Prelude.Natural,
    -- | A complex type that contains a destination configuration for where
    -- recorded video will be stored.
    destinationConfiguration :: DestinationConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRecordingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRecordingConfiguration_tags' - Array of 1-50 maps, each of the form @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
--
-- 'name', 'createRecordingConfiguration_name' - Recording-configuration name. The value does not need to be unique.
--
-- 'thumbnailConfiguration', 'createRecordingConfiguration_thumbnailConfiguration' - A complex type that allows you to enable\/disable the recording of
-- thumbnails for a live session and modify the interval at which
-- thumbnails are generated for the live session.
--
-- 'recordingReconnectWindowSeconds', 'createRecordingConfiguration_recordingReconnectWindowSeconds' - If a broadcast disconnects and then reconnects within the specified
-- interval, the multiple streams will be considered a single broadcast and
-- merged together. Default: 0.
--
-- 'destinationConfiguration', 'createRecordingConfiguration_destinationConfiguration' - A complex type that contains a destination configuration for where
-- recorded video will be stored.
newCreateRecordingConfiguration ::
  -- | 'destinationConfiguration'
  DestinationConfiguration ->
  CreateRecordingConfiguration
newCreateRecordingConfiguration
  pDestinationConfiguration_ =
    CreateRecordingConfiguration'
      { tags =
          Prelude.Nothing,
        name = Prelude.Nothing,
        thumbnailConfiguration = Prelude.Nothing,
        recordingReconnectWindowSeconds =
          Prelude.Nothing,
        destinationConfiguration =
          pDestinationConfiguration_
      }

-- | Array of 1-50 maps, each of the form @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
createRecordingConfiguration_tags :: Lens.Lens' CreateRecordingConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRecordingConfiguration_tags = Lens.lens (\CreateRecordingConfiguration' {tags} -> tags) (\s@CreateRecordingConfiguration' {} a -> s {tags = a} :: CreateRecordingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Recording-configuration name. The value does not need to be unique.
createRecordingConfiguration_name :: Lens.Lens' CreateRecordingConfiguration (Prelude.Maybe Prelude.Text)
createRecordingConfiguration_name = Lens.lens (\CreateRecordingConfiguration' {name} -> name) (\s@CreateRecordingConfiguration' {} a -> s {name = a} :: CreateRecordingConfiguration)

-- | A complex type that allows you to enable\/disable the recording of
-- thumbnails for a live session and modify the interval at which
-- thumbnails are generated for the live session.
createRecordingConfiguration_thumbnailConfiguration :: Lens.Lens' CreateRecordingConfiguration (Prelude.Maybe ThumbnailConfiguration)
createRecordingConfiguration_thumbnailConfiguration = Lens.lens (\CreateRecordingConfiguration' {thumbnailConfiguration} -> thumbnailConfiguration) (\s@CreateRecordingConfiguration' {} a -> s {thumbnailConfiguration = a} :: CreateRecordingConfiguration)

-- | If a broadcast disconnects and then reconnects within the specified
-- interval, the multiple streams will be considered a single broadcast and
-- merged together. Default: 0.
createRecordingConfiguration_recordingReconnectWindowSeconds :: Lens.Lens' CreateRecordingConfiguration (Prelude.Maybe Prelude.Natural)
createRecordingConfiguration_recordingReconnectWindowSeconds = Lens.lens (\CreateRecordingConfiguration' {recordingReconnectWindowSeconds} -> recordingReconnectWindowSeconds) (\s@CreateRecordingConfiguration' {} a -> s {recordingReconnectWindowSeconds = a} :: CreateRecordingConfiguration)

-- | A complex type that contains a destination configuration for where
-- recorded video will be stored.
createRecordingConfiguration_destinationConfiguration :: Lens.Lens' CreateRecordingConfiguration DestinationConfiguration
createRecordingConfiguration_destinationConfiguration = Lens.lens (\CreateRecordingConfiguration' {destinationConfiguration} -> destinationConfiguration) (\s@CreateRecordingConfiguration' {} a -> s {destinationConfiguration = a} :: CreateRecordingConfiguration)

instance Core.AWSRequest CreateRecordingConfiguration where
  type
    AWSResponse CreateRecordingConfiguration =
      CreateRecordingConfigurationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRecordingConfigurationResponse'
            Prelude.<$> (x Core..?> "recordingConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateRecordingConfiguration
  where
  hashWithSalt _salt CreateRecordingConfiguration' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` thumbnailConfiguration
      `Prelude.hashWithSalt` recordingReconnectWindowSeconds
      `Prelude.hashWithSalt` destinationConfiguration

instance Prelude.NFData CreateRecordingConfiguration where
  rnf CreateRecordingConfiguration' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf thumbnailConfiguration
      `Prelude.seq` Prelude.rnf recordingReconnectWindowSeconds
      `Prelude.seq` Prelude.rnf destinationConfiguration

instance Core.ToHeaders CreateRecordingConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRecordingConfiguration where
  toJSON CreateRecordingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("name" Core..=) Prelude.<$> name,
            ("thumbnailConfiguration" Core..=)
              Prelude.<$> thumbnailConfiguration,
            ("recordingReconnectWindowSeconds" Core..=)
              Prelude.<$> recordingReconnectWindowSeconds,
            Prelude.Just
              ( "destinationConfiguration"
                  Core..= destinationConfiguration
              )
          ]
      )

instance Core.ToPath CreateRecordingConfiguration where
  toPath =
    Prelude.const "/CreateRecordingConfiguration"

instance Core.ToQuery CreateRecordingConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRecordingConfigurationResponse' smart constructor.
data CreateRecordingConfigurationResponse = CreateRecordingConfigurationResponse'
  { recordingConfiguration :: Prelude.Maybe RecordingConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRecordingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recordingConfiguration', 'createRecordingConfigurationResponse_recordingConfiguration' -
--
-- 'httpStatus', 'createRecordingConfigurationResponse_httpStatus' - The response's http status code.
newCreateRecordingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRecordingConfigurationResponse
newCreateRecordingConfigurationResponse pHttpStatus_ =
  CreateRecordingConfigurationResponse'
    { recordingConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
createRecordingConfigurationResponse_recordingConfiguration :: Lens.Lens' CreateRecordingConfigurationResponse (Prelude.Maybe RecordingConfiguration)
createRecordingConfigurationResponse_recordingConfiguration = Lens.lens (\CreateRecordingConfigurationResponse' {recordingConfiguration} -> recordingConfiguration) (\s@CreateRecordingConfigurationResponse' {} a -> s {recordingConfiguration = a} :: CreateRecordingConfigurationResponse)

-- | The response's http status code.
createRecordingConfigurationResponse_httpStatus :: Lens.Lens' CreateRecordingConfigurationResponse Prelude.Int
createRecordingConfigurationResponse_httpStatus = Lens.lens (\CreateRecordingConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreateRecordingConfigurationResponse' {} a -> s {httpStatus = a} :: CreateRecordingConfigurationResponse)

instance
  Prelude.NFData
    CreateRecordingConfigurationResponse
  where
  rnf CreateRecordingConfigurationResponse' {..} =
    Prelude.rnf recordingConfiguration
      `Prelude.seq` Prelude.rnf httpStatus
