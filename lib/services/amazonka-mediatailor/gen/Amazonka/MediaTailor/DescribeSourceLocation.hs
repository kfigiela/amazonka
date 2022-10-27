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
-- Module      : Amazonka.MediaTailor.DescribeSourceLocation
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a source location. A source location is a container for
-- sources. For more information about source locations, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html Working with source locations>
-- in the /MediaTailor User Guide/.
module Amazonka.MediaTailor.DescribeSourceLocation
  ( -- * Creating a Request
    DescribeSourceLocation (..),
    newDescribeSourceLocation,

    -- * Request Lenses
    describeSourceLocation_sourceLocationName,

    -- * Destructuring the Response
    DescribeSourceLocationResponse (..),
    newDescribeSourceLocationResponse,

    -- * Response Lenses
    describeSourceLocationResponse_tags,
    describeSourceLocationResponse_segmentDeliveryConfigurations,
    describeSourceLocationResponse_arn,
    describeSourceLocationResponse_accessConfiguration,
    describeSourceLocationResponse_defaultSegmentDeliveryConfiguration,
    describeSourceLocationResponse_lastModifiedTime,
    describeSourceLocationResponse_creationTime,
    describeSourceLocationResponse_sourceLocationName,
    describeSourceLocationResponse_httpConfiguration,
    describeSourceLocationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeSourceLocation' smart constructor.
data DescribeSourceLocation = DescribeSourceLocation'
  { -- | The name of the source location.
    sourceLocationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSourceLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceLocationName', 'describeSourceLocation_sourceLocationName' - The name of the source location.
newDescribeSourceLocation ::
  -- | 'sourceLocationName'
  Prelude.Text ->
  DescribeSourceLocation
newDescribeSourceLocation pSourceLocationName_ =
  DescribeSourceLocation'
    { sourceLocationName =
        pSourceLocationName_
    }

-- | The name of the source location.
describeSourceLocation_sourceLocationName :: Lens.Lens' DescribeSourceLocation Prelude.Text
describeSourceLocation_sourceLocationName = Lens.lens (\DescribeSourceLocation' {sourceLocationName} -> sourceLocationName) (\s@DescribeSourceLocation' {} a -> s {sourceLocationName = a} :: DescribeSourceLocation)

instance Core.AWSRequest DescribeSourceLocation where
  type
    AWSResponse DescribeSourceLocation =
      DescribeSourceLocationResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSourceLocationResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> ( x Core..?> "SegmentDeliveryConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "AccessConfiguration")
            Prelude.<*> (x Core..?> "DefaultSegmentDeliveryConfiguration")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "SourceLocationName")
            Prelude.<*> (x Core..?> "HttpConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSourceLocation where
  hashWithSalt _salt DescribeSourceLocation' {..} =
    _salt `Prelude.hashWithSalt` sourceLocationName

instance Prelude.NFData DescribeSourceLocation where
  rnf DescribeSourceLocation' {..} =
    Prelude.rnf sourceLocationName

instance Core.ToHeaders DescribeSourceLocation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeSourceLocation where
  toPath DescribeSourceLocation' {..} =
    Prelude.mconcat
      ["/sourceLocation/", Core.toBS sourceLocationName]

instance Core.ToQuery DescribeSourceLocation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSourceLocationResponse' smart constructor.
data DescribeSourceLocationResponse = DescribeSourceLocationResponse'
  { -- | The tags assigned to the source location. Tags are key-value pairs that
    -- you can associate with Amazon resources to help with organization,
    -- access control, and cost tracking. For more information, see
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A list of the segment delivery configurations associated with this
    -- resource.
    segmentDeliveryConfigurations :: Prelude.Maybe [SegmentDeliveryConfiguration],
    -- | The ARN of the source location.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The access configuration for the source location.
    accessConfiguration :: Prelude.Maybe AccessConfiguration,
    -- | The default segment delivery configuration settings.
    defaultSegmentDeliveryConfiguration :: Prelude.Maybe DefaultSegmentDeliveryConfiguration,
    -- | The timestamp that indicates when the source location was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The timestamp that indicates when the source location was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the source location.
    sourceLocationName :: Prelude.Maybe Prelude.Text,
    -- | The HTTP package configuration settings for the source location.
    httpConfiguration :: Prelude.Maybe HttpConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSourceLocationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeSourceLocationResponse_tags' - The tags assigned to the source location. Tags are key-value pairs that
-- you can associate with Amazon resources to help with organization,
-- access control, and cost tracking. For more information, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
--
-- 'segmentDeliveryConfigurations', 'describeSourceLocationResponse_segmentDeliveryConfigurations' - A list of the segment delivery configurations associated with this
-- resource.
--
-- 'arn', 'describeSourceLocationResponse_arn' - The ARN of the source location.
--
-- 'accessConfiguration', 'describeSourceLocationResponse_accessConfiguration' - The access configuration for the source location.
--
-- 'defaultSegmentDeliveryConfiguration', 'describeSourceLocationResponse_defaultSegmentDeliveryConfiguration' - The default segment delivery configuration settings.
--
-- 'lastModifiedTime', 'describeSourceLocationResponse_lastModifiedTime' - The timestamp that indicates when the source location was last modified.
--
-- 'creationTime', 'describeSourceLocationResponse_creationTime' - The timestamp that indicates when the source location was created.
--
-- 'sourceLocationName', 'describeSourceLocationResponse_sourceLocationName' - The name of the source location.
--
-- 'httpConfiguration', 'describeSourceLocationResponse_httpConfiguration' - The HTTP package configuration settings for the source location.
--
-- 'httpStatus', 'describeSourceLocationResponse_httpStatus' - The response's http status code.
newDescribeSourceLocationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSourceLocationResponse
newDescribeSourceLocationResponse pHttpStatus_ =
  DescribeSourceLocationResponse'
    { tags =
        Prelude.Nothing,
      segmentDeliveryConfigurations =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      accessConfiguration = Prelude.Nothing,
      defaultSegmentDeliveryConfiguration =
        Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      sourceLocationName = Prelude.Nothing,
      httpConfiguration = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags assigned to the source location. Tags are key-value pairs that
-- you can associate with Amazon resources to help with organization,
-- access control, and cost tracking. For more information, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
describeSourceLocationResponse_tags :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeSourceLocationResponse_tags = Lens.lens (\DescribeSourceLocationResponse' {tags} -> tags) (\s@DescribeSourceLocationResponse' {} a -> s {tags = a} :: DescribeSourceLocationResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of the segment delivery configurations associated with this
-- resource.
describeSourceLocationResponse_segmentDeliveryConfigurations :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe [SegmentDeliveryConfiguration])
describeSourceLocationResponse_segmentDeliveryConfigurations = Lens.lens (\DescribeSourceLocationResponse' {segmentDeliveryConfigurations} -> segmentDeliveryConfigurations) (\s@DescribeSourceLocationResponse' {} a -> s {segmentDeliveryConfigurations = a} :: DescribeSourceLocationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the source location.
describeSourceLocationResponse_arn :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe Prelude.Text)
describeSourceLocationResponse_arn = Lens.lens (\DescribeSourceLocationResponse' {arn} -> arn) (\s@DescribeSourceLocationResponse' {} a -> s {arn = a} :: DescribeSourceLocationResponse)

-- | The access configuration for the source location.
describeSourceLocationResponse_accessConfiguration :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe AccessConfiguration)
describeSourceLocationResponse_accessConfiguration = Lens.lens (\DescribeSourceLocationResponse' {accessConfiguration} -> accessConfiguration) (\s@DescribeSourceLocationResponse' {} a -> s {accessConfiguration = a} :: DescribeSourceLocationResponse)

-- | The default segment delivery configuration settings.
describeSourceLocationResponse_defaultSegmentDeliveryConfiguration :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe DefaultSegmentDeliveryConfiguration)
describeSourceLocationResponse_defaultSegmentDeliveryConfiguration = Lens.lens (\DescribeSourceLocationResponse' {defaultSegmentDeliveryConfiguration} -> defaultSegmentDeliveryConfiguration) (\s@DescribeSourceLocationResponse' {} a -> s {defaultSegmentDeliveryConfiguration = a} :: DescribeSourceLocationResponse)

-- | The timestamp that indicates when the source location was last modified.
describeSourceLocationResponse_lastModifiedTime :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe Prelude.UTCTime)
describeSourceLocationResponse_lastModifiedTime = Lens.lens (\DescribeSourceLocationResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DescribeSourceLocationResponse' {} a -> s {lastModifiedTime = a} :: DescribeSourceLocationResponse) Prelude.. Lens.mapping Core._Time

-- | The timestamp that indicates when the source location was created.
describeSourceLocationResponse_creationTime :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe Prelude.UTCTime)
describeSourceLocationResponse_creationTime = Lens.lens (\DescribeSourceLocationResponse' {creationTime} -> creationTime) (\s@DescribeSourceLocationResponse' {} a -> s {creationTime = a} :: DescribeSourceLocationResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the source location.
describeSourceLocationResponse_sourceLocationName :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe Prelude.Text)
describeSourceLocationResponse_sourceLocationName = Lens.lens (\DescribeSourceLocationResponse' {sourceLocationName} -> sourceLocationName) (\s@DescribeSourceLocationResponse' {} a -> s {sourceLocationName = a} :: DescribeSourceLocationResponse)

-- | The HTTP package configuration settings for the source location.
describeSourceLocationResponse_httpConfiguration :: Lens.Lens' DescribeSourceLocationResponse (Prelude.Maybe HttpConfiguration)
describeSourceLocationResponse_httpConfiguration = Lens.lens (\DescribeSourceLocationResponse' {httpConfiguration} -> httpConfiguration) (\s@DescribeSourceLocationResponse' {} a -> s {httpConfiguration = a} :: DescribeSourceLocationResponse)

-- | The response's http status code.
describeSourceLocationResponse_httpStatus :: Lens.Lens' DescribeSourceLocationResponse Prelude.Int
describeSourceLocationResponse_httpStatus = Lens.lens (\DescribeSourceLocationResponse' {httpStatus} -> httpStatus) (\s@DescribeSourceLocationResponse' {} a -> s {httpStatus = a} :: DescribeSourceLocationResponse)

instance
  Prelude.NFData
    DescribeSourceLocationResponse
  where
  rnf DescribeSourceLocationResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf segmentDeliveryConfigurations
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf accessConfiguration
      `Prelude.seq` Prelude.rnf defaultSegmentDeliveryConfiguration
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf sourceLocationName
      `Prelude.seq` Prelude.rnf httpConfiguration
      `Prelude.seq` Prelude.rnf httpStatus
