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
-- Module      : Amazonka.CloudWatchLogs.PutSubscriptionFilter
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a subscription filter and associates it with the
-- specified log group. Subscription filters allow you to subscribe to a
-- real-time stream of log events ingested through
-- <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html PutLogEvents>
-- and have them delivered to a specific destination. When log events are
-- sent to the receiving service, they are Base64 encoded and compressed
-- with the gzip format.
--
-- The following destinations are supported for subscription filters:
--
-- -   An Amazon Kinesis stream belonging to the same account as the
--     subscription filter, for same-account delivery.
--
-- -   A logical destination that belongs to a different account, for
--     cross-account delivery.
--
-- -   An Amazon Kinesis Firehose delivery stream that belongs to the same
--     account as the subscription filter, for same-account delivery.
--
-- -   An Lambda function that belongs to the same account as the
--     subscription filter, for same-account delivery.
--
-- Each log group can have up to two subscription filters associated with
-- it. If you are updating an existing filter, you must specify the correct
-- name in @filterName@.
--
-- To perform a @PutSubscriptionFilter@ operation, you must also have the
-- @iam:PassRole@ permission.
module Amazonka.CloudWatchLogs.PutSubscriptionFilter
  ( -- * Creating a Request
    PutSubscriptionFilter (..),
    newPutSubscriptionFilter,

    -- * Request Lenses
    putSubscriptionFilter_roleArn,
    putSubscriptionFilter_distribution,
    putSubscriptionFilter_logGroupName,
    putSubscriptionFilter_filterName,
    putSubscriptionFilter_filterPattern,
    putSubscriptionFilter_destinationArn,

    -- * Destructuring the Response
    PutSubscriptionFilterResponse (..),
    newPutSubscriptionFilterResponse,
  )
where

import Amazonka.CloudWatchLogs.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutSubscriptionFilter' smart constructor.
data PutSubscriptionFilter = PutSubscriptionFilter'
  { -- | The ARN of an IAM role that grants CloudWatch Logs permissions to
    -- deliver ingested log events to the destination stream. You don\'t need
    -- to provide the ARN when you are working with a logical destination for
    -- cross-account delivery.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The method used to distribute log data to the destination. By default,
    -- log data is grouped by log stream, but the grouping can be set to random
    -- for a more even distribution. This property is only applicable when the
    -- destination is an Amazon Kinesis stream.
    distribution :: Prelude.Maybe Distribution,
    -- | The name of the log group.
    logGroupName :: Prelude.Text,
    -- | A name for the subscription filter. If you are updating an existing
    -- filter, you must specify the correct name in @filterName@. To find the
    -- name of the filter currently associated with a log group, use
    -- <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html DescribeSubscriptionFilters>.
    filterName :: Prelude.Text,
    -- | A filter pattern for subscribing to a filtered stream of log events.
    filterPattern :: Prelude.Text,
    -- | The ARN of the destination to deliver matching log events to. Currently,
    -- the supported destinations are:
    --
    -- -   An Amazon Kinesis stream belonging to the same account as the
    --     subscription filter, for same-account delivery.
    --
    -- -   A logical destination (specified using an ARN) belonging to a
    --     different account, for cross-account delivery.
    --
    --     If you are setting up a cross-account subscription, the destination
    --     must have an IAM policy associated with it that allows the sender to
    --     send logs to the destination. For more information, see
    --     <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html PutDestinationPolicy>.
    --
    -- -   An Amazon Kinesis Firehose delivery stream belonging to the same
    --     account as the subscription filter, for same-account delivery.
    --
    -- -   A Lambda function belonging to the same account as the subscription
    --     filter, for same-account delivery.
    destinationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutSubscriptionFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'putSubscriptionFilter_roleArn' - The ARN of an IAM role that grants CloudWatch Logs permissions to
-- deliver ingested log events to the destination stream. You don\'t need
-- to provide the ARN when you are working with a logical destination for
-- cross-account delivery.
--
-- 'distribution', 'putSubscriptionFilter_distribution' - The method used to distribute log data to the destination. By default,
-- log data is grouped by log stream, but the grouping can be set to random
-- for a more even distribution. This property is only applicable when the
-- destination is an Amazon Kinesis stream.
--
-- 'logGroupName', 'putSubscriptionFilter_logGroupName' - The name of the log group.
--
-- 'filterName', 'putSubscriptionFilter_filterName' - A name for the subscription filter. If you are updating an existing
-- filter, you must specify the correct name in @filterName@. To find the
-- name of the filter currently associated with a log group, use
-- <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html DescribeSubscriptionFilters>.
--
-- 'filterPattern', 'putSubscriptionFilter_filterPattern' - A filter pattern for subscribing to a filtered stream of log events.
--
-- 'destinationArn', 'putSubscriptionFilter_destinationArn' - The ARN of the destination to deliver matching log events to. Currently,
-- the supported destinations are:
--
-- -   An Amazon Kinesis stream belonging to the same account as the
--     subscription filter, for same-account delivery.
--
-- -   A logical destination (specified using an ARN) belonging to a
--     different account, for cross-account delivery.
--
--     If you are setting up a cross-account subscription, the destination
--     must have an IAM policy associated with it that allows the sender to
--     send logs to the destination. For more information, see
--     <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html PutDestinationPolicy>.
--
-- -   An Amazon Kinesis Firehose delivery stream belonging to the same
--     account as the subscription filter, for same-account delivery.
--
-- -   A Lambda function belonging to the same account as the subscription
--     filter, for same-account delivery.
newPutSubscriptionFilter ::
  -- | 'logGroupName'
  Prelude.Text ->
  -- | 'filterName'
  Prelude.Text ->
  -- | 'filterPattern'
  Prelude.Text ->
  -- | 'destinationArn'
  Prelude.Text ->
  PutSubscriptionFilter
newPutSubscriptionFilter
  pLogGroupName_
  pFilterName_
  pFilterPattern_
  pDestinationArn_ =
    PutSubscriptionFilter'
      { roleArn = Prelude.Nothing,
        distribution = Prelude.Nothing,
        logGroupName = pLogGroupName_,
        filterName = pFilterName_,
        filterPattern = pFilterPattern_,
        destinationArn = pDestinationArn_
      }

-- | The ARN of an IAM role that grants CloudWatch Logs permissions to
-- deliver ingested log events to the destination stream. You don\'t need
-- to provide the ARN when you are working with a logical destination for
-- cross-account delivery.
putSubscriptionFilter_roleArn :: Lens.Lens' PutSubscriptionFilter (Prelude.Maybe Prelude.Text)
putSubscriptionFilter_roleArn = Lens.lens (\PutSubscriptionFilter' {roleArn} -> roleArn) (\s@PutSubscriptionFilter' {} a -> s {roleArn = a} :: PutSubscriptionFilter)

-- | The method used to distribute log data to the destination. By default,
-- log data is grouped by log stream, but the grouping can be set to random
-- for a more even distribution. This property is only applicable when the
-- destination is an Amazon Kinesis stream.
putSubscriptionFilter_distribution :: Lens.Lens' PutSubscriptionFilter (Prelude.Maybe Distribution)
putSubscriptionFilter_distribution = Lens.lens (\PutSubscriptionFilter' {distribution} -> distribution) (\s@PutSubscriptionFilter' {} a -> s {distribution = a} :: PutSubscriptionFilter)

-- | The name of the log group.
putSubscriptionFilter_logGroupName :: Lens.Lens' PutSubscriptionFilter Prelude.Text
putSubscriptionFilter_logGroupName = Lens.lens (\PutSubscriptionFilter' {logGroupName} -> logGroupName) (\s@PutSubscriptionFilter' {} a -> s {logGroupName = a} :: PutSubscriptionFilter)

-- | A name for the subscription filter. If you are updating an existing
-- filter, you must specify the correct name in @filterName@. To find the
-- name of the filter currently associated with a log group, use
-- <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html DescribeSubscriptionFilters>.
putSubscriptionFilter_filterName :: Lens.Lens' PutSubscriptionFilter Prelude.Text
putSubscriptionFilter_filterName = Lens.lens (\PutSubscriptionFilter' {filterName} -> filterName) (\s@PutSubscriptionFilter' {} a -> s {filterName = a} :: PutSubscriptionFilter)

-- | A filter pattern for subscribing to a filtered stream of log events.
putSubscriptionFilter_filterPattern :: Lens.Lens' PutSubscriptionFilter Prelude.Text
putSubscriptionFilter_filterPattern = Lens.lens (\PutSubscriptionFilter' {filterPattern} -> filterPattern) (\s@PutSubscriptionFilter' {} a -> s {filterPattern = a} :: PutSubscriptionFilter)

-- | The ARN of the destination to deliver matching log events to. Currently,
-- the supported destinations are:
--
-- -   An Amazon Kinesis stream belonging to the same account as the
--     subscription filter, for same-account delivery.
--
-- -   A logical destination (specified using an ARN) belonging to a
--     different account, for cross-account delivery.
--
--     If you are setting up a cross-account subscription, the destination
--     must have an IAM policy associated with it that allows the sender to
--     send logs to the destination. For more information, see
--     <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html PutDestinationPolicy>.
--
-- -   An Amazon Kinesis Firehose delivery stream belonging to the same
--     account as the subscription filter, for same-account delivery.
--
-- -   A Lambda function belonging to the same account as the subscription
--     filter, for same-account delivery.
putSubscriptionFilter_destinationArn :: Lens.Lens' PutSubscriptionFilter Prelude.Text
putSubscriptionFilter_destinationArn = Lens.lens (\PutSubscriptionFilter' {destinationArn} -> destinationArn) (\s@PutSubscriptionFilter' {} a -> s {destinationArn = a} :: PutSubscriptionFilter)

instance Core.AWSRequest PutSubscriptionFilter where
  type
    AWSResponse PutSubscriptionFilter =
      PutSubscriptionFilterResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull PutSubscriptionFilterResponse'

instance Prelude.Hashable PutSubscriptionFilter where
  hashWithSalt _salt PutSubscriptionFilter' {..} =
    _salt `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` distribution
      `Prelude.hashWithSalt` logGroupName
      `Prelude.hashWithSalt` filterName
      `Prelude.hashWithSalt` filterPattern
      `Prelude.hashWithSalt` destinationArn

instance Prelude.NFData PutSubscriptionFilter where
  rnf PutSubscriptionFilter' {..} =
    Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf distribution
      `Prelude.seq` Prelude.rnf logGroupName
      `Prelude.seq` Prelude.rnf filterName
      `Prelude.seq` Prelude.rnf filterPattern
      `Prelude.seq` Prelude.rnf destinationArn

instance Core.ToHeaders PutSubscriptionFilter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Logs_20140328.PutSubscriptionFilter" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutSubscriptionFilter where
  toJSON PutSubscriptionFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("roleArn" Core..=) Prelude.<$> roleArn,
            ("distribution" Core..=) Prelude.<$> distribution,
            Prelude.Just ("logGroupName" Core..= logGroupName),
            Prelude.Just ("filterName" Core..= filterName),
            Prelude.Just ("filterPattern" Core..= filterPattern),
            Prelude.Just
              ("destinationArn" Core..= destinationArn)
          ]
      )

instance Core.ToPath PutSubscriptionFilter where
  toPath = Prelude.const "/"

instance Core.ToQuery PutSubscriptionFilter where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutSubscriptionFilterResponse' smart constructor.
data PutSubscriptionFilterResponse = PutSubscriptionFilterResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutSubscriptionFilterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutSubscriptionFilterResponse ::
  PutSubscriptionFilterResponse
newPutSubscriptionFilterResponse =
  PutSubscriptionFilterResponse'

instance Prelude.NFData PutSubscriptionFilterResponse where
  rnf _ = ()
