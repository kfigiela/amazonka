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
-- Module      : Amazonka.MediaTailor.CreateVodSource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates name for a specific VOD source in a source location.
module Amazonka.MediaTailor.CreateVodSource
  ( -- * Creating a Request
    CreateVodSource (..),
    newCreateVodSource,

    -- * Request Lenses
    createVodSource_tags,
    createVodSource_sourceLocationName,
    createVodSource_vodSourceName,
    createVodSource_httpPackageConfigurations,

    -- * Destructuring the Response
    CreateVodSourceResponse (..),
    newCreateVodSourceResponse,

    -- * Response Lenses
    createVodSourceResponse_tags,
    createVodSourceResponse_vodSourceName,
    createVodSourceResponse_arn,
    createVodSourceResponse_lastModifiedTime,
    createVodSourceResponse_creationTime,
    createVodSourceResponse_sourceLocationName,
    createVodSourceResponse_httpPackageConfigurations,
    createVodSourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateVodSource' smart constructor.
data CreateVodSource = CreateVodSource'
  { -- | The tags to assign to the VOD source.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The identifier for the source location you are working on.
    sourceLocationName :: Prelude.Text,
    -- | The identifier for the VOD source you are working on.
    vodSourceName :: Prelude.Text,
    -- | A list of HTTP package configuration parameters for this VOD source.
    httpPackageConfigurations :: [HttpPackageConfiguration]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateVodSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createVodSource_tags' - The tags to assign to the VOD source.
--
-- 'sourceLocationName', 'createVodSource_sourceLocationName' - The identifier for the source location you are working on.
--
-- 'vodSourceName', 'createVodSource_vodSourceName' - The identifier for the VOD source you are working on.
--
-- 'httpPackageConfigurations', 'createVodSource_httpPackageConfigurations' - A list of HTTP package configuration parameters for this VOD source.
newCreateVodSource ::
  -- | 'sourceLocationName'
  Prelude.Text ->
  -- | 'vodSourceName'
  Prelude.Text ->
  CreateVodSource
newCreateVodSource
  pSourceLocationName_
  pVodSourceName_ =
    CreateVodSource'
      { tags = Prelude.Nothing,
        sourceLocationName = pSourceLocationName_,
        vodSourceName = pVodSourceName_,
        httpPackageConfigurations = Prelude.mempty
      }

-- | The tags to assign to the VOD source.
createVodSource_tags :: Lens.Lens' CreateVodSource (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createVodSource_tags = Lens.lens (\CreateVodSource' {tags} -> tags) (\s@CreateVodSource' {} a -> s {tags = a} :: CreateVodSource) Prelude.. Lens.mapping Lens.coerced

-- | The identifier for the source location you are working on.
createVodSource_sourceLocationName :: Lens.Lens' CreateVodSource Prelude.Text
createVodSource_sourceLocationName = Lens.lens (\CreateVodSource' {sourceLocationName} -> sourceLocationName) (\s@CreateVodSource' {} a -> s {sourceLocationName = a} :: CreateVodSource)

-- | The identifier for the VOD source you are working on.
createVodSource_vodSourceName :: Lens.Lens' CreateVodSource Prelude.Text
createVodSource_vodSourceName = Lens.lens (\CreateVodSource' {vodSourceName} -> vodSourceName) (\s@CreateVodSource' {} a -> s {vodSourceName = a} :: CreateVodSource)

-- | A list of HTTP package configuration parameters for this VOD source.
createVodSource_httpPackageConfigurations :: Lens.Lens' CreateVodSource [HttpPackageConfiguration]
createVodSource_httpPackageConfigurations = Lens.lens (\CreateVodSource' {httpPackageConfigurations} -> httpPackageConfigurations) (\s@CreateVodSource' {} a -> s {httpPackageConfigurations = a} :: CreateVodSource) Prelude.. Lens.coerced

instance Core.AWSRequest CreateVodSource where
  type
    AWSResponse CreateVodSource =
      CreateVodSourceResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateVodSourceResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "VodSourceName")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "SourceLocationName")
            Prelude.<*> ( x Core..?> "HttpPackageConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService CreateVodSource where
  service _proxy = defaultService

instance Prelude.Hashable CreateVodSource where
  hashWithSalt _salt CreateVodSource' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` sourceLocationName
      `Prelude.hashWithSalt` vodSourceName
      `Prelude.hashWithSalt` httpPackageConfigurations

instance Prelude.NFData CreateVodSource where
  rnf CreateVodSource' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf sourceLocationName
      `Prelude.seq` Prelude.rnf vodSourceName
      `Prelude.seq` Prelude.rnf httpPackageConfigurations

instance Core.ToHeaders CreateVodSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateVodSource where
  toJSON CreateVodSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ( "HttpPackageConfigurations"
                  Core..= httpPackageConfigurations
              )
          ]
      )

instance Core.ToPath CreateVodSource where
  toPath CreateVodSource' {..} =
    Prelude.mconcat
      [ "/sourceLocation/",
        Core.toBS sourceLocationName,
        "/vodSource/",
        Core.toBS vodSourceName
      ]

instance Core.ToQuery CreateVodSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateVodSourceResponse' smart constructor.
data CreateVodSourceResponse = CreateVodSourceResponse'
  { -- | The tags assigned to the VOD source.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the VOD source.
    vodSourceName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the VOD source.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The last modified time of the VOD source.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The timestamp that indicates when the VOD source was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the source location associated with the VOD source.
    sourceLocationName :: Prelude.Maybe Prelude.Text,
    -- | The HTTP package configurations.
    httpPackageConfigurations :: Prelude.Maybe [HttpPackageConfiguration],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateVodSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createVodSourceResponse_tags' - The tags assigned to the VOD source.
--
-- 'vodSourceName', 'createVodSourceResponse_vodSourceName' - The name of the VOD source.
--
-- 'arn', 'createVodSourceResponse_arn' - The ARN of the VOD source.
--
-- 'lastModifiedTime', 'createVodSourceResponse_lastModifiedTime' - The last modified time of the VOD source.
--
-- 'creationTime', 'createVodSourceResponse_creationTime' - The timestamp that indicates when the VOD source was created.
--
-- 'sourceLocationName', 'createVodSourceResponse_sourceLocationName' - The name of the source location associated with the VOD source.
--
-- 'httpPackageConfigurations', 'createVodSourceResponse_httpPackageConfigurations' - The HTTP package configurations.
--
-- 'httpStatus', 'createVodSourceResponse_httpStatus' - The response's http status code.
newCreateVodSourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateVodSourceResponse
newCreateVodSourceResponse pHttpStatus_ =
  CreateVodSourceResponse'
    { tags = Prelude.Nothing,
      vodSourceName = Prelude.Nothing,
      arn = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      sourceLocationName = Prelude.Nothing,
      httpPackageConfigurations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags assigned to the VOD source.
createVodSourceResponse_tags :: Lens.Lens' CreateVodSourceResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createVodSourceResponse_tags = Lens.lens (\CreateVodSourceResponse' {tags} -> tags) (\s@CreateVodSourceResponse' {} a -> s {tags = a} :: CreateVodSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the VOD source.
createVodSourceResponse_vodSourceName :: Lens.Lens' CreateVodSourceResponse (Prelude.Maybe Prelude.Text)
createVodSourceResponse_vodSourceName = Lens.lens (\CreateVodSourceResponse' {vodSourceName} -> vodSourceName) (\s@CreateVodSourceResponse' {} a -> s {vodSourceName = a} :: CreateVodSourceResponse)

-- | The ARN of the VOD source.
createVodSourceResponse_arn :: Lens.Lens' CreateVodSourceResponse (Prelude.Maybe Prelude.Text)
createVodSourceResponse_arn = Lens.lens (\CreateVodSourceResponse' {arn} -> arn) (\s@CreateVodSourceResponse' {} a -> s {arn = a} :: CreateVodSourceResponse)

-- | The last modified time of the VOD source.
createVodSourceResponse_lastModifiedTime :: Lens.Lens' CreateVodSourceResponse (Prelude.Maybe Prelude.UTCTime)
createVodSourceResponse_lastModifiedTime = Lens.lens (\CreateVodSourceResponse' {lastModifiedTime} -> lastModifiedTime) (\s@CreateVodSourceResponse' {} a -> s {lastModifiedTime = a} :: CreateVodSourceResponse) Prelude.. Lens.mapping Core._Time

-- | The timestamp that indicates when the VOD source was created.
createVodSourceResponse_creationTime :: Lens.Lens' CreateVodSourceResponse (Prelude.Maybe Prelude.UTCTime)
createVodSourceResponse_creationTime = Lens.lens (\CreateVodSourceResponse' {creationTime} -> creationTime) (\s@CreateVodSourceResponse' {} a -> s {creationTime = a} :: CreateVodSourceResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the source location associated with the VOD source.
createVodSourceResponse_sourceLocationName :: Lens.Lens' CreateVodSourceResponse (Prelude.Maybe Prelude.Text)
createVodSourceResponse_sourceLocationName = Lens.lens (\CreateVodSourceResponse' {sourceLocationName} -> sourceLocationName) (\s@CreateVodSourceResponse' {} a -> s {sourceLocationName = a} :: CreateVodSourceResponse)

-- | The HTTP package configurations.
createVodSourceResponse_httpPackageConfigurations :: Lens.Lens' CreateVodSourceResponse (Prelude.Maybe [HttpPackageConfiguration])
createVodSourceResponse_httpPackageConfigurations = Lens.lens (\CreateVodSourceResponse' {httpPackageConfigurations} -> httpPackageConfigurations) (\s@CreateVodSourceResponse' {} a -> s {httpPackageConfigurations = a} :: CreateVodSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createVodSourceResponse_httpStatus :: Lens.Lens' CreateVodSourceResponse Prelude.Int
createVodSourceResponse_httpStatus = Lens.lens (\CreateVodSourceResponse' {httpStatus} -> httpStatus) (\s@CreateVodSourceResponse' {} a -> s {httpStatus = a} :: CreateVodSourceResponse)

instance Prelude.NFData CreateVodSourceResponse where
  rnf CreateVodSourceResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf vodSourceName
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf sourceLocationName
      `Prelude.seq` Prelude.rnf httpPackageConfigurations
      `Prelude.seq` Prelude.rnf httpStatus
