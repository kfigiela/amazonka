{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Evidently.Types.Segment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Evidently.Types.Segment where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | This structure contains information about one audience /segment/. You
-- can use segments in your experiments and launches to narrow the user
-- sessions used for experiment or launch to only the user sessions that
-- match one or more criteria.
--
-- /See:/ 'newSegment' smart constructor.
data Segment = Segment'
  { -- | The list of tag keys and values associated with this launch.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The customer-created description for this segment.
    description :: Prelude.Maybe Prelude.Text,
    -- | The number of launches that this segment is used in. This count includes
    -- all current launches, not just those that are currently running.
    launchCount :: Prelude.Maybe Prelude.Integer,
    -- | The number of experiments that this segment is used in. This count
    -- includes all current experiments, not just those that are currently
    -- running.
    experimentCount :: Prelude.Maybe Prelude.Integer,
    -- | The ARN of the segment.
    arn :: Prelude.Text,
    -- | The date and time that this segment was created.
    createdTime :: Core.POSIX,
    -- | The date and time that this segment was most recently updated.
    lastUpdatedTime :: Core.POSIX,
    -- | The name of the segment.
    name :: Prelude.Text,
    -- | The pattern that defines the attributes to use to evalute whether a user
    -- session will be in the segment. For more information about the pattern
    -- syntax, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html Segment rule pattern syntax>.
    pattern' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Segment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'segment_tags' - The list of tag keys and values associated with this launch.
--
-- 'description', 'segment_description' - The customer-created description for this segment.
--
-- 'launchCount', 'segment_launchCount' - The number of launches that this segment is used in. This count includes
-- all current launches, not just those that are currently running.
--
-- 'experimentCount', 'segment_experimentCount' - The number of experiments that this segment is used in. This count
-- includes all current experiments, not just those that are currently
-- running.
--
-- 'arn', 'segment_arn' - The ARN of the segment.
--
-- 'createdTime', 'segment_createdTime' - The date and time that this segment was created.
--
-- 'lastUpdatedTime', 'segment_lastUpdatedTime' - The date and time that this segment was most recently updated.
--
-- 'name', 'segment_name' - The name of the segment.
--
-- 'pattern'', 'segment_pattern' - The pattern that defines the attributes to use to evalute whether a user
-- session will be in the segment. For more information about the pattern
-- syntax, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html Segment rule pattern syntax>.
newSegment ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'createdTime'
  Prelude.UTCTime ->
  -- | 'lastUpdatedTime'
  Prelude.UTCTime ->
  -- | 'name'
  Prelude.Text ->
  -- | 'pattern''
  Prelude.Text ->
  Segment
newSegment
  pArn_
  pCreatedTime_
  pLastUpdatedTime_
  pName_
  pPattern_ =
    Segment'
      { tags = Prelude.Nothing,
        description = Prelude.Nothing,
        launchCount = Prelude.Nothing,
        experimentCount = Prelude.Nothing,
        arn = pArn_,
        createdTime = Core._Time Lens.# pCreatedTime_,
        lastUpdatedTime =
          Core._Time Lens.# pLastUpdatedTime_,
        name = pName_,
        pattern' = pPattern_
      }

-- | The list of tag keys and values associated with this launch.
segment_tags :: Lens.Lens' Segment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
segment_tags = Lens.lens (\Segment' {tags} -> tags) (\s@Segment' {} a -> s {tags = a} :: Segment) Prelude.. Lens.mapping Lens.coerced

-- | The customer-created description for this segment.
segment_description :: Lens.Lens' Segment (Prelude.Maybe Prelude.Text)
segment_description = Lens.lens (\Segment' {description} -> description) (\s@Segment' {} a -> s {description = a} :: Segment)

-- | The number of launches that this segment is used in. This count includes
-- all current launches, not just those that are currently running.
segment_launchCount :: Lens.Lens' Segment (Prelude.Maybe Prelude.Integer)
segment_launchCount = Lens.lens (\Segment' {launchCount} -> launchCount) (\s@Segment' {} a -> s {launchCount = a} :: Segment)

-- | The number of experiments that this segment is used in. This count
-- includes all current experiments, not just those that are currently
-- running.
segment_experimentCount :: Lens.Lens' Segment (Prelude.Maybe Prelude.Integer)
segment_experimentCount = Lens.lens (\Segment' {experimentCount} -> experimentCount) (\s@Segment' {} a -> s {experimentCount = a} :: Segment)

-- | The ARN of the segment.
segment_arn :: Lens.Lens' Segment Prelude.Text
segment_arn = Lens.lens (\Segment' {arn} -> arn) (\s@Segment' {} a -> s {arn = a} :: Segment)

-- | The date and time that this segment was created.
segment_createdTime :: Lens.Lens' Segment Prelude.UTCTime
segment_createdTime = Lens.lens (\Segment' {createdTime} -> createdTime) (\s@Segment' {} a -> s {createdTime = a} :: Segment) Prelude.. Core._Time

-- | The date and time that this segment was most recently updated.
segment_lastUpdatedTime :: Lens.Lens' Segment Prelude.UTCTime
segment_lastUpdatedTime = Lens.lens (\Segment' {lastUpdatedTime} -> lastUpdatedTime) (\s@Segment' {} a -> s {lastUpdatedTime = a} :: Segment) Prelude.. Core._Time

-- | The name of the segment.
segment_name :: Lens.Lens' Segment Prelude.Text
segment_name = Lens.lens (\Segment' {name} -> name) (\s@Segment' {} a -> s {name = a} :: Segment)

-- | The pattern that defines the attributes to use to evalute whether a user
-- session will be in the segment. For more information about the pattern
-- syntax, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html Segment rule pattern syntax>.
segment_pattern :: Lens.Lens' Segment Prelude.Text
segment_pattern = Lens.lens (\Segment' {pattern'} -> pattern') (\s@Segment' {} a -> s {pattern' = a} :: Segment)

instance Core.FromJSON Segment where
  parseJSON =
    Core.withObject
      "Segment"
      ( \x ->
          Segment'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "launchCount")
            Prelude.<*> (x Core..:? "experimentCount")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "createdTime")
            Prelude.<*> (x Core..: "lastUpdatedTime")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "pattern")
      )

instance Prelude.Hashable Segment where
  hashWithSalt _salt Segment' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` launchCount
      `Prelude.hashWithSalt` experimentCount
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` createdTime
      `Prelude.hashWithSalt` lastUpdatedTime
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` pattern'

instance Prelude.NFData Segment where
  rnf Segment' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf launchCount
      `Prelude.seq` Prelude.rnf experimentCount
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf pattern'
