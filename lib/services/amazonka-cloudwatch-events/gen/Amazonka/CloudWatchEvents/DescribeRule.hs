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
-- Module      : Amazonka.CloudWatchEvents.DescribeRule
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified rule.
--
-- DescribeRule does not list the targets of a rule. To see the targets
-- associated with a rule, use
-- <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html ListTargetsByRule>.
module Amazonka.CloudWatchEvents.DescribeRule
  ( -- * Creating a Request
    DescribeRule (..),
    newDescribeRule,

    -- * Request Lenses
    describeRule_eventBusName,
    describeRule_name,

    -- * Destructuring the Response
    DescribeRuleResponse (..),
    newDescribeRuleResponse,

    -- * Response Lenses
    describeRuleResponse_name,
    describeRuleResponse_roleArn,
    describeRuleResponse_eventPattern,
    describeRuleResponse_eventBusName,
    describeRuleResponse_arn,
    describeRuleResponse_state,
    describeRuleResponse_description,
    describeRuleResponse_scheduleExpression,
    describeRuleResponse_createdBy,
    describeRuleResponse_managedBy,
    describeRuleResponse_httpStatus,
  )
where

import Amazonka.CloudWatchEvents.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeRule' smart constructor.
data DescribeRule = DescribeRule'
  { -- | The name or ARN of the event bus associated with the rule. If you omit
    -- this, the default event bus is used.
    eventBusName :: Prelude.Maybe Prelude.Text,
    -- | The name of the rule.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventBusName', 'describeRule_eventBusName' - The name or ARN of the event bus associated with the rule. If you omit
-- this, the default event bus is used.
--
-- 'name', 'describeRule_name' - The name of the rule.
newDescribeRule ::
  -- | 'name'
  Prelude.Text ->
  DescribeRule
newDescribeRule pName_ =
  DescribeRule'
    { eventBusName = Prelude.Nothing,
      name = pName_
    }

-- | The name or ARN of the event bus associated with the rule. If you omit
-- this, the default event bus is used.
describeRule_eventBusName :: Lens.Lens' DescribeRule (Prelude.Maybe Prelude.Text)
describeRule_eventBusName = Lens.lens (\DescribeRule' {eventBusName} -> eventBusName) (\s@DescribeRule' {} a -> s {eventBusName = a} :: DescribeRule)

-- | The name of the rule.
describeRule_name :: Lens.Lens' DescribeRule Prelude.Text
describeRule_name = Lens.lens (\DescribeRule' {name} -> name) (\s@DescribeRule' {} a -> s {name = a} :: DescribeRule)

instance Core.AWSRequest DescribeRule where
  type AWSResponse DescribeRule = DescribeRuleResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRuleResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "RoleArn")
            Prelude.<*> (x Core..?> "EventPattern")
            Prelude.<*> (x Core..?> "EventBusName")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "State")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "ScheduleExpression")
            Prelude.<*> (x Core..?> "CreatedBy")
            Prelude.<*> (x Core..?> "ManagedBy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeRule where
  hashWithSalt _salt DescribeRule' {..} =
    _salt `Prelude.hashWithSalt` eventBusName
      `Prelude.hashWithSalt` name

instance Prelude.NFData DescribeRule where
  rnf DescribeRule' {..} =
    Prelude.rnf eventBusName
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders DescribeRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSEvents.DescribeRule" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeRule where
  toJSON DescribeRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EventBusName" Core..=) Prelude.<$> eventBusName,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath DescribeRule where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeRuleResponse' smart constructor.
data DescribeRuleResponse = DescribeRuleResponse'
  { -- | The name of the rule.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role associated with the rule.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The event pattern. For more information, see
    -- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns>
    -- in the /Amazon EventBridge User Guide/.
    eventPattern :: Prelude.Maybe Prelude.Text,
    -- | The name of the event bus associated with the rule.
    eventBusName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the rule.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the rule is enabled or disabled.
    state :: Prelude.Maybe RuleState,
    -- | The description of the rule.
    description :: Prelude.Maybe Prelude.Text,
    -- | The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5
    -- minutes)\".
    scheduleExpression :: Prelude.Maybe Prelude.Text,
    -- | The account ID of the user that created the rule. If you use @PutRule@
    -- to put a rule on an event bus in another account, the other account is
    -- the owner of the rule, and the rule ARN includes the account ID for that
    -- account. However, the value for @CreatedBy@ is the account ID as the
    -- account that created the rule in the other account.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | If this is a managed rule, created by an Amazon Web Services service on
    -- your behalf, this field displays the principal name of the Amazon Web
    -- Services service that created the rule.
    managedBy :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'describeRuleResponse_name' - The name of the rule.
--
-- 'roleArn', 'describeRuleResponse_roleArn' - The Amazon Resource Name (ARN) of the IAM role associated with the rule.
--
-- 'eventPattern', 'describeRuleResponse_eventPattern' - The event pattern. For more information, see
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns>
-- in the /Amazon EventBridge User Guide/.
--
-- 'eventBusName', 'describeRuleResponse_eventBusName' - The name of the event bus associated with the rule.
--
-- 'arn', 'describeRuleResponse_arn' - The Amazon Resource Name (ARN) of the rule.
--
-- 'state', 'describeRuleResponse_state' - Specifies whether the rule is enabled or disabled.
--
-- 'description', 'describeRuleResponse_description' - The description of the rule.
--
-- 'scheduleExpression', 'describeRuleResponse_scheduleExpression' - The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5
-- minutes)\".
--
-- 'createdBy', 'describeRuleResponse_createdBy' - The account ID of the user that created the rule. If you use @PutRule@
-- to put a rule on an event bus in another account, the other account is
-- the owner of the rule, and the rule ARN includes the account ID for that
-- account. However, the value for @CreatedBy@ is the account ID as the
-- account that created the rule in the other account.
--
-- 'managedBy', 'describeRuleResponse_managedBy' - If this is a managed rule, created by an Amazon Web Services service on
-- your behalf, this field displays the principal name of the Amazon Web
-- Services service that created the rule.
--
-- 'httpStatus', 'describeRuleResponse_httpStatus' - The response's http status code.
newDescribeRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeRuleResponse
newDescribeRuleResponse pHttpStatus_ =
  DescribeRuleResponse'
    { name = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      eventPattern = Prelude.Nothing,
      eventBusName = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      description = Prelude.Nothing,
      scheduleExpression = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      managedBy = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the rule.
describeRuleResponse_name :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_name = Lens.lens (\DescribeRuleResponse' {name} -> name) (\s@DescribeRuleResponse' {} a -> s {name = a} :: DescribeRuleResponse)

-- | The Amazon Resource Name (ARN) of the IAM role associated with the rule.
describeRuleResponse_roleArn :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_roleArn = Lens.lens (\DescribeRuleResponse' {roleArn} -> roleArn) (\s@DescribeRuleResponse' {} a -> s {roleArn = a} :: DescribeRuleResponse)

-- | The event pattern. For more information, see
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns>
-- in the /Amazon EventBridge User Guide/.
describeRuleResponse_eventPattern :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_eventPattern = Lens.lens (\DescribeRuleResponse' {eventPattern} -> eventPattern) (\s@DescribeRuleResponse' {} a -> s {eventPattern = a} :: DescribeRuleResponse)

-- | The name of the event bus associated with the rule.
describeRuleResponse_eventBusName :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_eventBusName = Lens.lens (\DescribeRuleResponse' {eventBusName} -> eventBusName) (\s@DescribeRuleResponse' {} a -> s {eventBusName = a} :: DescribeRuleResponse)

-- | The Amazon Resource Name (ARN) of the rule.
describeRuleResponse_arn :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_arn = Lens.lens (\DescribeRuleResponse' {arn} -> arn) (\s@DescribeRuleResponse' {} a -> s {arn = a} :: DescribeRuleResponse)

-- | Specifies whether the rule is enabled or disabled.
describeRuleResponse_state :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe RuleState)
describeRuleResponse_state = Lens.lens (\DescribeRuleResponse' {state} -> state) (\s@DescribeRuleResponse' {} a -> s {state = a} :: DescribeRuleResponse)

-- | The description of the rule.
describeRuleResponse_description :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_description = Lens.lens (\DescribeRuleResponse' {description} -> description) (\s@DescribeRuleResponse' {} a -> s {description = a} :: DescribeRuleResponse)

-- | The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5
-- minutes)\".
describeRuleResponse_scheduleExpression :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_scheduleExpression = Lens.lens (\DescribeRuleResponse' {scheduleExpression} -> scheduleExpression) (\s@DescribeRuleResponse' {} a -> s {scheduleExpression = a} :: DescribeRuleResponse)

-- | The account ID of the user that created the rule. If you use @PutRule@
-- to put a rule on an event bus in another account, the other account is
-- the owner of the rule, and the rule ARN includes the account ID for that
-- account. However, the value for @CreatedBy@ is the account ID as the
-- account that created the rule in the other account.
describeRuleResponse_createdBy :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_createdBy = Lens.lens (\DescribeRuleResponse' {createdBy} -> createdBy) (\s@DescribeRuleResponse' {} a -> s {createdBy = a} :: DescribeRuleResponse)

-- | If this is a managed rule, created by an Amazon Web Services service on
-- your behalf, this field displays the principal name of the Amazon Web
-- Services service that created the rule.
describeRuleResponse_managedBy :: Lens.Lens' DescribeRuleResponse (Prelude.Maybe Prelude.Text)
describeRuleResponse_managedBy = Lens.lens (\DescribeRuleResponse' {managedBy} -> managedBy) (\s@DescribeRuleResponse' {} a -> s {managedBy = a} :: DescribeRuleResponse)

-- | The response's http status code.
describeRuleResponse_httpStatus :: Lens.Lens' DescribeRuleResponse Prelude.Int
describeRuleResponse_httpStatus = Lens.lens (\DescribeRuleResponse' {httpStatus} -> httpStatus) (\s@DescribeRuleResponse' {} a -> s {httpStatus = a} :: DescribeRuleResponse)

instance Prelude.NFData DescribeRuleResponse where
  rnf DescribeRuleResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf eventPattern
      `Prelude.seq` Prelude.rnf eventBusName
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf scheduleExpression
      `Prelude.seq` Prelude.rnf createdBy
      `Prelude.seq` Prelude.rnf managedBy
      `Prelude.seq` Prelude.rnf httpStatus
