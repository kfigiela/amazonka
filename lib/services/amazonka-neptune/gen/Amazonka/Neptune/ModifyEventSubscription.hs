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
-- Module      : Amazonka.Neptune.ModifyEventSubscription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing event notification subscription. Note that you
-- can\'t modify the source identifiers using this call; to change source
-- identifiers for a subscription, use the
-- AddSourceIdentifierToSubscription and
-- RemoveSourceIdentifierFromSubscription calls.
--
-- You can see a list of the event categories for a given SourceType by
-- using the __DescribeEventCategories__ action.
module Amazonka.Neptune.ModifyEventSubscription
  ( -- * Creating a Request
    ModifyEventSubscription (..),
    newModifyEventSubscription,

    -- * Request Lenses
    modifyEventSubscription_sourceType,
    modifyEventSubscription_enabled,
    modifyEventSubscription_snsTopicArn,
    modifyEventSubscription_eventCategories,
    modifyEventSubscription_subscriptionName,

    -- * Destructuring the Response
    ModifyEventSubscriptionResponse (..),
    newModifyEventSubscriptionResponse,

    -- * Response Lenses
    modifyEventSubscriptionResponse_eventSubscription,
    modifyEventSubscriptionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Neptune.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newModifyEventSubscription' smart constructor.
data ModifyEventSubscription = ModifyEventSubscription'
  { -- | The type of source that is generating the events. For example, if you
    -- want to be notified of events generated by a DB instance, you would set
    -- this parameter to db-instance. if this value is not specified, all
    -- events are returned.
    --
    -- Valid values: db-instance | db-parameter-group | db-security-group |
    -- db-snapshot
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value; set to __true__ to activate the subscription.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the SNS topic created for event
    -- notification. The ARN is created by Amazon SNS when you create a topic
    -- and subscribe to it.
    snsTopicArn :: Prelude.Maybe Prelude.Text,
    -- | A list of event categories for a SourceType that you want to subscribe
    -- to. You can see a list of the categories for a given SourceType by using
    -- the __DescribeEventCategories__ action.
    eventCategories :: Prelude.Maybe [Prelude.Text],
    -- | The name of the event notification subscription.
    subscriptionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyEventSubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceType', 'modifyEventSubscription_sourceType' - The type of source that is generating the events. For example, if you
-- want to be notified of events generated by a DB instance, you would set
-- this parameter to db-instance. if this value is not specified, all
-- events are returned.
--
-- Valid values: db-instance | db-parameter-group | db-security-group |
-- db-snapshot
--
-- 'enabled', 'modifyEventSubscription_enabled' - A Boolean value; set to __true__ to activate the subscription.
--
-- 'snsTopicArn', 'modifyEventSubscription_snsTopicArn' - The Amazon Resource Name (ARN) of the SNS topic created for event
-- notification. The ARN is created by Amazon SNS when you create a topic
-- and subscribe to it.
--
-- 'eventCategories', 'modifyEventSubscription_eventCategories' - A list of event categories for a SourceType that you want to subscribe
-- to. You can see a list of the categories for a given SourceType by using
-- the __DescribeEventCategories__ action.
--
-- 'subscriptionName', 'modifyEventSubscription_subscriptionName' - The name of the event notification subscription.
newModifyEventSubscription ::
  -- | 'subscriptionName'
  Prelude.Text ->
  ModifyEventSubscription
newModifyEventSubscription pSubscriptionName_ =
  ModifyEventSubscription'
    { sourceType =
        Prelude.Nothing,
      enabled = Prelude.Nothing,
      snsTopicArn = Prelude.Nothing,
      eventCategories = Prelude.Nothing,
      subscriptionName = pSubscriptionName_
    }

-- | The type of source that is generating the events. For example, if you
-- want to be notified of events generated by a DB instance, you would set
-- this parameter to db-instance. if this value is not specified, all
-- events are returned.
--
-- Valid values: db-instance | db-parameter-group | db-security-group |
-- db-snapshot
modifyEventSubscription_sourceType :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe Prelude.Text)
modifyEventSubscription_sourceType = Lens.lens (\ModifyEventSubscription' {sourceType} -> sourceType) (\s@ModifyEventSubscription' {} a -> s {sourceType = a} :: ModifyEventSubscription)

-- | A Boolean value; set to __true__ to activate the subscription.
modifyEventSubscription_enabled :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe Prelude.Bool)
modifyEventSubscription_enabled = Lens.lens (\ModifyEventSubscription' {enabled} -> enabled) (\s@ModifyEventSubscription' {} a -> s {enabled = a} :: ModifyEventSubscription)

-- | The Amazon Resource Name (ARN) of the SNS topic created for event
-- notification. The ARN is created by Amazon SNS when you create a topic
-- and subscribe to it.
modifyEventSubscription_snsTopicArn :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe Prelude.Text)
modifyEventSubscription_snsTopicArn = Lens.lens (\ModifyEventSubscription' {snsTopicArn} -> snsTopicArn) (\s@ModifyEventSubscription' {} a -> s {snsTopicArn = a} :: ModifyEventSubscription)

-- | A list of event categories for a SourceType that you want to subscribe
-- to. You can see a list of the categories for a given SourceType by using
-- the __DescribeEventCategories__ action.
modifyEventSubscription_eventCategories :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe [Prelude.Text])
modifyEventSubscription_eventCategories = Lens.lens (\ModifyEventSubscription' {eventCategories} -> eventCategories) (\s@ModifyEventSubscription' {} a -> s {eventCategories = a} :: ModifyEventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The name of the event notification subscription.
modifyEventSubscription_subscriptionName :: Lens.Lens' ModifyEventSubscription Prelude.Text
modifyEventSubscription_subscriptionName = Lens.lens (\ModifyEventSubscription' {subscriptionName} -> subscriptionName) (\s@ModifyEventSubscription' {} a -> s {subscriptionName = a} :: ModifyEventSubscription)

instance Core.AWSRequest ModifyEventSubscription where
  type
    AWSResponse ModifyEventSubscription =
      ModifyEventSubscriptionResponse
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "ModifyEventSubscriptionResult"
      ( \s h x ->
          ModifyEventSubscriptionResponse'
            Prelude.<$> (x Core..@? "EventSubscription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService ModifyEventSubscription where
  service _proxy = defaultService

instance Prelude.Hashable ModifyEventSubscription where
  hashWithSalt _salt ModifyEventSubscription' {..} =
    _salt `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` snsTopicArn
      `Prelude.hashWithSalt` eventCategories
      `Prelude.hashWithSalt` subscriptionName

instance Prelude.NFData ModifyEventSubscription where
  rnf ModifyEventSubscription' {..} =
    Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf snsTopicArn
      `Prelude.seq` Prelude.rnf eventCategories
      `Prelude.seq` Prelude.rnf subscriptionName

instance Core.ToHeaders ModifyEventSubscription where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyEventSubscription where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyEventSubscription where
  toQuery ModifyEventSubscription' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ModifyEventSubscription" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "SourceType" Core.=: sourceType,
        "Enabled" Core.=: enabled,
        "SnsTopicArn" Core.=: snsTopicArn,
        "EventCategories"
          Core.=: Core.toQuery
            ( Core.toQueryList "EventCategory"
                Prelude.<$> eventCategories
            ),
        "SubscriptionName" Core.=: subscriptionName
      ]

-- | /See:/ 'newModifyEventSubscriptionResponse' smart constructor.
data ModifyEventSubscriptionResponse = ModifyEventSubscriptionResponse'
  { eventSubscription :: Prelude.Maybe EventSubscription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyEventSubscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventSubscription', 'modifyEventSubscriptionResponse_eventSubscription' - Undocumented member.
--
-- 'httpStatus', 'modifyEventSubscriptionResponse_httpStatus' - The response's http status code.
newModifyEventSubscriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyEventSubscriptionResponse
newModifyEventSubscriptionResponse pHttpStatus_ =
  ModifyEventSubscriptionResponse'
    { eventSubscription =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
modifyEventSubscriptionResponse_eventSubscription :: Lens.Lens' ModifyEventSubscriptionResponse (Prelude.Maybe EventSubscription)
modifyEventSubscriptionResponse_eventSubscription = Lens.lens (\ModifyEventSubscriptionResponse' {eventSubscription} -> eventSubscription) (\s@ModifyEventSubscriptionResponse' {} a -> s {eventSubscription = a} :: ModifyEventSubscriptionResponse)

-- | The response's http status code.
modifyEventSubscriptionResponse_httpStatus :: Lens.Lens' ModifyEventSubscriptionResponse Prelude.Int
modifyEventSubscriptionResponse_httpStatus = Lens.lens (\ModifyEventSubscriptionResponse' {httpStatus} -> httpStatus) (\s@ModifyEventSubscriptionResponse' {} a -> s {httpStatus = a} :: ModifyEventSubscriptionResponse)

instance
  Prelude.NFData
    ModifyEventSubscriptionResponse
  where
  rnf ModifyEventSubscriptionResponse' {..} =
    Prelude.rnf eventSubscription
      `Prelude.seq` Prelude.rnf httpStatus
