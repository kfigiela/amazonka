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
-- Module      : Amazonka.MediaTailor.DescribeVodSource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides details about a specific video on demand (VOD) source in a
-- specific source location.
module Amazonka.MediaTailor.DescribeVodSource
  ( -- * Creating a Request
    DescribeVodSource (..),
    newDescribeVodSource,

    -- * Request Lenses
    describeVodSource_sourceLocationName,
    describeVodSource_vodSourceName,

    -- * Destructuring the Response
    DescribeVodSourceResponse (..),
    newDescribeVodSourceResponse,

    -- * Response Lenses
    describeVodSourceResponse_tags,
    describeVodSourceResponse_vodSourceName,
    describeVodSourceResponse_arn,
    describeVodSourceResponse_lastModifiedTime,
    describeVodSourceResponse_creationTime,
    describeVodSourceResponse_sourceLocationName,
    describeVodSourceResponse_httpPackageConfigurations,
    describeVodSourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeVodSource' smart constructor.
data DescribeVodSource = DescribeVodSource'
  { -- | The name of the source location associated with this VOD Source.
    sourceLocationName :: Prelude.Text,
    -- | The name of the VOD Source.
    vodSourceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVodSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceLocationName', 'describeVodSource_sourceLocationName' - The name of the source location associated with this VOD Source.
--
-- 'vodSourceName', 'describeVodSource_vodSourceName' - The name of the VOD Source.
newDescribeVodSource ::
  -- | 'sourceLocationName'
  Prelude.Text ->
  -- | 'vodSourceName'
  Prelude.Text ->
  DescribeVodSource
newDescribeVodSource
  pSourceLocationName_
  pVodSourceName_ =
    DescribeVodSource'
      { sourceLocationName =
          pSourceLocationName_,
        vodSourceName = pVodSourceName_
      }

-- | The name of the source location associated with this VOD Source.
describeVodSource_sourceLocationName :: Lens.Lens' DescribeVodSource Prelude.Text
describeVodSource_sourceLocationName = Lens.lens (\DescribeVodSource' {sourceLocationName} -> sourceLocationName) (\s@DescribeVodSource' {} a -> s {sourceLocationName = a} :: DescribeVodSource)

-- | The name of the VOD Source.
describeVodSource_vodSourceName :: Lens.Lens' DescribeVodSource Prelude.Text
describeVodSource_vodSourceName = Lens.lens (\DescribeVodSource' {vodSourceName} -> vodSourceName) (\s@DescribeVodSource' {} a -> s {vodSourceName = a} :: DescribeVodSource)

instance Core.AWSRequest DescribeVodSource where
  type
    AWSResponse DescribeVodSource =
      DescribeVodSourceResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeVodSourceResponse'
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

instance Prelude.Hashable DescribeVodSource where
  hashWithSalt _salt DescribeVodSource' {..} =
    _salt `Prelude.hashWithSalt` sourceLocationName
      `Prelude.hashWithSalt` vodSourceName

instance Prelude.NFData DescribeVodSource where
  rnf DescribeVodSource' {..} =
    Prelude.rnf sourceLocationName
      `Prelude.seq` Prelude.rnf vodSourceName

instance Core.ToHeaders DescribeVodSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeVodSource where
  toPath DescribeVodSource' {..} =
    Prelude.mconcat
      [ "/sourceLocation/",
        Core.toBS sourceLocationName,
        "/vodSource/",
        Core.toBS vodSourceName
      ]

instance Core.ToQuery DescribeVodSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeVodSourceResponse' smart constructor.
data DescribeVodSourceResponse = DescribeVodSourceResponse'
  { -- | The tags assigned to the VOD source. Tags are key-value pairs that you
    -- can associate with Amazon resources to help with organization, access
    -- control, and cost tracking. For more information, see
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
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
-- Create a value of 'DescribeVodSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeVodSourceResponse_tags' - The tags assigned to the VOD source. Tags are key-value pairs that you
-- can associate with Amazon resources to help with organization, access
-- control, and cost tracking. For more information, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
--
-- 'vodSourceName', 'describeVodSourceResponse_vodSourceName' - The name of the VOD source.
--
-- 'arn', 'describeVodSourceResponse_arn' - The ARN of the VOD source.
--
-- 'lastModifiedTime', 'describeVodSourceResponse_lastModifiedTime' - The last modified time of the VOD source.
--
-- 'creationTime', 'describeVodSourceResponse_creationTime' - The timestamp that indicates when the VOD source was created.
--
-- 'sourceLocationName', 'describeVodSourceResponse_sourceLocationName' - The name of the source location associated with the VOD source.
--
-- 'httpPackageConfigurations', 'describeVodSourceResponse_httpPackageConfigurations' - The HTTP package configurations.
--
-- 'httpStatus', 'describeVodSourceResponse_httpStatus' - The response's http status code.
newDescribeVodSourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeVodSourceResponse
newDescribeVodSourceResponse pHttpStatus_ =
  DescribeVodSourceResponse'
    { tags = Prelude.Nothing,
      vodSourceName = Prelude.Nothing,
      arn = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      sourceLocationName = Prelude.Nothing,
      httpPackageConfigurations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags assigned to the VOD source. Tags are key-value pairs that you
-- can associate with Amazon resources to help with organization, access
-- control, and cost tracking. For more information, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
describeVodSourceResponse_tags :: Lens.Lens' DescribeVodSourceResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeVodSourceResponse_tags = Lens.lens (\DescribeVodSourceResponse' {tags} -> tags) (\s@DescribeVodSourceResponse' {} a -> s {tags = a} :: DescribeVodSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the VOD source.
describeVodSourceResponse_vodSourceName :: Lens.Lens' DescribeVodSourceResponse (Prelude.Maybe Prelude.Text)
describeVodSourceResponse_vodSourceName = Lens.lens (\DescribeVodSourceResponse' {vodSourceName} -> vodSourceName) (\s@DescribeVodSourceResponse' {} a -> s {vodSourceName = a} :: DescribeVodSourceResponse)

-- | The ARN of the VOD source.
describeVodSourceResponse_arn :: Lens.Lens' DescribeVodSourceResponse (Prelude.Maybe Prelude.Text)
describeVodSourceResponse_arn = Lens.lens (\DescribeVodSourceResponse' {arn} -> arn) (\s@DescribeVodSourceResponse' {} a -> s {arn = a} :: DescribeVodSourceResponse)

-- | The last modified time of the VOD source.
describeVodSourceResponse_lastModifiedTime :: Lens.Lens' DescribeVodSourceResponse (Prelude.Maybe Prelude.UTCTime)
describeVodSourceResponse_lastModifiedTime = Lens.lens (\DescribeVodSourceResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DescribeVodSourceResponse' {} a -> s {lastModifiedTime = a} :: DescribeVodSourceResponse) Prelude.. Lens.mapping Core._Time

-- | The timestamp that indicates when the VOD source was created.
describeVodSourceResponse_creationTime :: Lens.Lens' DescribeVodSourceResponse (Prelude.Maybe Prelude.UTCTime)
describeVodSourceResponse_creationTime = Lens.lens (\DescribeVodSourceResponse' {creationTime} -> creationTime) (\s@DescribeVodSourceResponse' {} a -> s {creationTime = a} :: DescribeVodSourceResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the source location associated with the VOD source.
describeVodSourceResponse_sourceLocationName :: Lens.Lens' DescribeVodSourceResponse (Prelude.Maybe Prelude.Text)
describeVodSourceResponse_sourceLocationName = Lens.lens (\DescribeVodSourceResponse' {sourceLocationName} -> sourceLocationName) (\s@DescribeVodSourceResponse' {} a -> s {sourceLocationName = a} :: DescribeVodSourceResponse)

-- | The HTTP package configurations.
describeVodSourceResponse_httpPackageConfigurations :: Lens.Lens' DescribeVodSourceResponse (Prelude.Maybe [HttpPackageConfiguration])
describeVodSourceResponse_httpPackageConfigurations = Lens.lens (\DescribeVodSourceResponse' {httpPackageConfigurations} -> httpPackageConfigurations) (\s@DescribeVodSourceResponse' {} a -> s {httpPackageConfigurations = a} :: DescribeVodSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeVodSourceResponse_httpStatus :: Lens.Lens' DescribeVodSourceResponse Prelude.Int
describeVodSourceResponse_httpStatus = Lens.lens (\DescribeVodSourceResponse' {httpStatus} -> httpStatus) (\s@DescribeVodSourceResponse' {} a -> s {httpStatus = a} :: DescribeVodSourceResponse)

instance Prelude.NFData DescribeVodSourceResponse where
  rnf DescribeVodSourceResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf vodSourceName
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf sourceLocationName
      `Prelude.seq` Prelude.rnf httpPackageConfigurations
      `Prelude.seq` Prelude.rnf httpStatus
