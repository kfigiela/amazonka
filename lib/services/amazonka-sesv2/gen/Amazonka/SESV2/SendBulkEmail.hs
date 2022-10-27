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
-- Module      : Amazonka.SESV2.SendBulkEmail
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Composes an email message to multiple destinations.
module Amazonka.SESV2.SendBulkEmail
  ( -- * Creating a Request
    SendBulkEmail (..),
    newSendBulkEmail,

    -- * Request Lenses
    sendBulkEmail_feedbackForwardingEmailAddressIdentityArn,
    sendBulkEmail_replyToAddresses,
    sendBulkEmail_defaultEmailTags,
    sendBulkEmail_fromEmailAddress,
    sendBulkEmail_configurationSetName,
    sendBulkEmail_fromEmailAddressIdentityArn,
    sendBulkEmail_feedbackForwardingEmailAddress,
    sendBulkEmail_defaultContent,
    sendBulkEmail_bulkEmailEntries,

    -- * Destructuring the Response
    SendBulkEmailResponse (..),
    newSendBulkEmailResponse,

    -- * Response Lenses
    sendBulkEmailResponse_httpStatus,
    sendBulkEmailResponse_bulkEmailEntryResults,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SESV2.Types

-- | Represents a request to send email messages to multiple destinations
-- using Amazon SES. For more information, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html Amazon SES Developer Guide>.
--
-- /See:/ 'newSendBulkEmail' smart constructor.
data SendBulkEmail = SendBulkEmail'
  { -- | This parameter is used only for sending authorization. It is the ARN of
    -- the identity that is associated with the sending authorization policy
    -- that permits you to use the email address specified in the
    -- @FeedbackForwardingEmailAddress@ parameter.
    --
    -- For example, if the owner of example.com (which has ARN
    -- arn:aws:ses:us-east-1:123456789012:identity\/example.com) attaches a
    -- policy to it that authorizes you to use feedback\@example.com, then you
    -- would specify the @FeedbackForwardingEmailAddressIdentityArn@ to be
    -- arn:aws:ses:us-east-1:123456789012:identity\/example.com, and the
    -- @FeedbackForwardingEmailAddress@ to be feedback\@example.com.
    --
    -- For more information about sending authorization, see the
    -- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide>.
    feedbackForwardingEmailAddressIdentityArn :: Prelude.Maybe Prelude.Text,
    -- | The \"Reply-to\" email addresses for the message. When the recipient
    -- replies to the message, each Reply-to address receives the reply.
    replyToAddresses :: Prelude.Maybe [Prelude.Text],
    -- | A list of tags, in the form of name\/value pairs, to apply to an email
    -- that you send using the @SendEmail@ operation. Tags correspond to
    -- characteristics of the email that you define, so that you can publish
    -- email sending events.
    defaultEmailTags :: Prelude.Maybe [MessageTag],
    -- | The email address to use as the \"From\" address for the email. The
    -- address that you specify has to be verified.
    fromEmailAddress :: Prelude.Maybe Prelude.Text,
    -- | The name of the configuration set to use when sending the email.
    configurationSetName :: Prelude.Maybe Prelude.Text,
    -- | This parameter is used only for sending authorization. It is the ARN of
    -- the identity that is associated with the sending authorization policy
    -- that permits you to use the email address specified in the
    -- @FromEmailAddress@ parameter.
    --
    -- For example, if the owner of example.com (which has ARN
    -- arn:aws:ses:us-east-1:123456789012:identity\/example.com) attaches a
    -- policy to it that authorizes you to use sender\@example.com, then you
    -- would specify the @FromEmailAddressIdentityArn@ to be
    -- arn:aws:ses:us-east-1:123456789012:identity\/example.com, and the
    -- @FromEmailAddress@ to be sender\@example.com.
    --
    -- For more information about sending authorization, see the
    -- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide>.
    fromEmailAddressIdentityArn :: Prelude.Maybe Prelude.Text,
    -- | The address that you want bounce and complaint notifications to be sent
    -- to.
    feedbackForwardingEmailAddress :: Prelude.Maybe Prelude.Text,
    -- | An object that contains the body of the message. You can specify a
    -- template message.
    defaultContent :: BulkEmailContent,
    -- | The list of bulk email entry objects.
    bulkEmailEntries :: [BulkEmailEntry]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendBulkEmail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'feedbackForwardingEmailAddressIdentityArn', 'sendBulkEmail_feedbackForwardingEmailAddressIdentityArn' - This parameter is used only for sending authorization. It is the ARN of
-- the identity that is associated with the sending authorization policy
-- that permits you to use the email address specified in the
-- @FeedbackForwardingEmailAddress@ parameter.
--
-- For example, if the owner of example.com (which has ARN
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com) attaches a
-- policy to it that authorizes you to use feedback\@example.com, then you
-- would specify the @FeedbackForwardingEmailAddressIdentityArn@ to be
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com, and the
-- @FeedbackForwardingEmailAddress@ to be feedback\@example.com.
--
-- For more information about sending authorization, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide>.
--
-- 'replyToAddresses', 'sendBulkEmail_replyToAddresses' - The \"Reply-to\" email addresses for the message. When the recipient
-- replies to the message, each Reply-to address receives the reply.
--
-- 'defaultEmailTags', 'sendBulkEmail_defaultEmailTags' - A list of tags, in the form of name\/value pairs, to apply to an email
-- that you send using the @SendEmail@ operation. Tags correspond to
-- characteristics of the email that you define, so that you can publish
-- email sending events.
--
-- 'fromEmailAddress', 'sendBulkEmail_fromEmailAddress' - The email address to use as the \"From\" address for the email. The
-- address that you specify has to be verified.
--
-- 'configurationSetName', 'sendBulkEmail_configurationSetName' - The name of the configuration set to use when sending the email.
--
-- 'fromEmailAddressIdentityArn', 'sendBulkEmail_fromEmailAddressIdentityArn' - This parameter is used only for sending authorization. It is the ARN of
-- the identity that is associated with the sending authorization policy
-- that permits you to use the email address specified in the
-- @FromEmailAddress@ parameter.
--
-- For example, if the owner of example.com (which has ARN
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com) attaches a
-- policy to it that authorizes you to use sender\@example.com, then you
-- would specify the @FromEmailAddressIdentityArn@ to be
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com, and the
-- @FromEmailAddress@ to be sender\@example.com.
--
-- For more information about sending authorization, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide>.
--
-- 'feedbackForwardingEmailAddress', 'sendBulkEmail_feedbackForwardingEmailAddress' - The address that you want bounce and complaint notifications to be sent
-- to.
--
-- 'defaultContent', 'sendBulkEmail_defaultContent' - An object that contains the body of the message. You can specify a
-- template message.
--
-- 'bulkEmailEntries', 'sendBulkEmail_bulkEmailEntries' - The list of bulk email entry objects.
newSendBulkEmail ::
  -- | 'defaultContent'
  BulkEmailContent ->
  SendBulkEmail
newSendBulkEmail pDefaultContent_ =
  SendBulkEmail'
    { feedbackForwardingEmailAddressIdentityArn =
        Prelude.Nothing,
      replyToAddresses = Prelude.Nothing,
      defaultEmailTags = Prelude.Nothing,
      fromEmailAddress = Prelude.Nothing,
      configurationSetName = Prelude.Nothing,
      fromEmailAddressIdentityArn = Prelude.Nothing,
      feedbackForwardingEmailAddress = Prelude.Nothing,
      defaultContent = pDefaultContent_,
      bulkEmailEntries = Prelude.mempty
    }

-- | This parameter is used only for sending authorization. It is the ARN of
-- the identity that is associated with the sending authorization policy
-- that permits you to use the email address specified in the
-- @FeedbackForwardingEmailAddress@ parameter.
--
-- For example, if the owner of example.com (which has ARN
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com) attaches a
-- policy to it that authorizes you to use feedback\@example.com, then you
-- would specify the @FeedbackForwardingEmailAddressIdentityArn@ to be
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com, and the
-- @FeedbackForwardingEmailAddress@ to be feedback\@example.com.
--
-- For more information about sending authorization, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide>.
sendBulkEmail_feedbackForwardingEmailAddressIdentityArn :: Lens.Lens' SendBulkEmail (Prelude.Maybe Prelude.Text)
sendBulkEmail_feedbackForwardingEmailAddressIdentityArn = Lens.lens (\SendBulkEmail' {feedbackForwardingEmailAddressIdentityArn} -> feedbackForwardingEmailAddressIdentityArn) (\s@SendBulkEmail' {} a -> s {feedbackForwardingEmailAddressIdentityArn = a} :: SendBulkEmail)

-- | The \"Reply-to\" email addresses for the message. When the recipient
-- replies to the message, each Reply-to address receives the reply.
sendBulkEmail_replyToAddresses :: Lens.Lens' SendBulkEmail (Prelude.Maybe [Prelude.Text])
sendBulkEmail_replyToAddresses = Lens.lens (\SendBulkEmail' {replyToAddresses} -> replyToAddresses) (\s@SendBulkEmail' {} a -> s {replyToAddresses = a} :: SendBulkEmail) Prelude.. Lens.mapping Lens.coerced

-- | A list of tags, in the form of name\/value pairs, to apply to an email
-- that you send using the @SendEmail@ operation. Tags correspond to
-- characteristics of the email that you define, so that you can publish
-- email sending events.
sendBulkEmail_defaultEmailTags :: Lens.Lens' SendBulkEmail (Prelude.Maybe [MessageTag])
sendBulkEmail_defaultEmailTags = Lens.lens (\SendBulkEmail' {defaultEmailTags} -> defaultEmailTags) (\s@SendBulkEmail' {} a -> s {defaultEmailTags = a} :: SendBulkEmail) Prelude.. Lens.mapping Lens.coerced

-- | The email address to use as the \"From\" address for the email. The
-- address that you specify has to be verified.
sendBulkEmail_fromEmailAddress :: Lens.Lens' SendBulkEmail (Prelude.Maybe Prelude.Text)
sendBulkEmail_fromEmailAddress = Lens.lens (\SendBulkEmail' {fromEmailAddress} -> fromEmailAddress) (\s@SendBulkEmail' {} a -> s {fromEmailAddress = a} :: SendBulkEmail)

-- | The name of the configuration set to use when sending the email.
sendBulkEmail_configurationSetName :: Lens.Lens' SendBulkEmail (Prelude.Maybe Prelude.Text)
sendBulkEmail_configurationSetName = Lens.lens (\SendBulkEmail' {configurationSetName} -> configurationSetName) (\s@SendBulkEmail' {} a -> s {configurationSetName = a} :: SendBulkEmail)

-- | This parameter is used only for sending authorization. It is the ARN of
-- the identity that is associated with the sending authorization policy
-- that permits you to use the email address specified in the
-- @FromEmailAddress@ parameter.
--
-- For example, if the owner of example.com (which has ARN
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com) attaches a
-- policy to it that authorizes you to use sender\@example.com, then you
-- would specify the @FromEmailAddressIdentityArn@ to be
-- arn:aws:ses:us-east-1:123456789012:identity\/example.com, and the
-- @FromEmailAddress@ to be sender\@example.com.
--
-- For more information about sending authorization, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide>.
sendBulkEmail_fromEmailAddressIdentityArn :: Lens.Lens' SendBulkEmail (Prelude.Maybe Prelude.Text)
sendBulkEmail_fromEmailAddressIdentityArn = Lens.lens (\SendBulkEmail' {fromEmailAddressIdentityArn} -> fromEmailAddressIdentityArn) (\s@SendBulkEmail' {} a -> s {fromEmailAddressIdentityArn = a} :: SendBulkEmail)

-- | The address that you want bounce and complaint notifications to be sent
-- to.
sendBulkEmail_feedbackForwardingEmailAddress :: Lens.Lens' SendBulkEmail (Prelude.Maybe Prelude.Text)
sendBulkEmail_feedbackForwardingEmailAddress = Lens.lens (\SendBulkEmail' {feedbackForwardingEmailAddress} -> feedbackForwardingEmailAddress) (\s@SendBulkEmail' {} a -> s {feedbackForwardingEmailAddress = a} :: SendBulkEmail)

-- | An object that contains the body of the message. You can specify a
-- template message.
sendBulkEmail_defaultContent :: Lens.Lens' SendBulkEmail BulkEmailContent
sendBulkEmail_defaultContent = Lens.lens (\SendBulkEmail' {defaultContent} -> defaultContent) (\s@SendBulkEmail' {} a -> s {defaultContent = a} :: SendBulkEmail)

-- | The list of bulk email entry objects.
sendBulkEmail_bulkEmailEntries :: Lens.Lens' SendBulkEmail [BulkEmailEntry]
sendBulkEmail_bulkEmailEntries = Lens.lens (\SendBulkEmail' {bulkEmailEntries} -> bulkEmailEntries) (\s@SendBulkEmail' {} a -> s {bulkEmailEntries = a} :: SendBulkEmail) Prelude.. Lens.coerced

instance Core.AWSRequest SendBulkEmail where
  type
    AWSResponse SendBulkEmail =
      SendBulkEmailResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          SendBulkEmailResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "BulkEmailEntryResults"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable SendBulkEmail where
  hashWithSalt _salt SendBulkEmail' {..} =
    _salt
      `Prelude.hashWithSalt` feedbackForwardingEmailAddressIdentityArn
      `Prelude.hashWithSalt` replyToAddresses
      `Prelude.hashWithSalt` defaultEmailTags
      `Prelude.hashWithSalt` fromEmailAddress
      `Prelude.hashWithSalt` configurationSetName
      `Prelude.hashWithSalt` fromEmailAddressIdentityArn
      `Prelude.hashWithSalt` feedbackForwardingEmailAddress
      `Prelude.hashWithSalt` defaultContent
      `Prelude.hashWithSalt` bulkEmailEntries

instance Prelude.NFData SendBulkEmail where
  rnf SendBulkEmail' {..} =
    Prelude.rnf
      feedbackForwardingEmailAddressIdentityArn
      `Prelude.seq` Prelude.rnf replyToAddresses
      `Prelude.seq` Prelude.rnf defaultEmailTags
      `Prelude.seq` Prelude.rnf fromEmailAddress
      `Prelude.seq` Prelude.rnf configurationSetName
      `Prelude.seq` Prelude.rnf fromEmailAddressIdentityArn
      `Prelude.seq` Prelude.rnf feedbackForwardingEmailAddress
      `Prelude.seq` Prelude.rnf defaultContent
      `Prelude.seq` Prelude.rnf bulkEmailEntries

instance Core.ToHeaders SendBulkEmail where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SendBulkEmail where
  toJSON SendBulkEmail' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ( "FeedbackForwardingEmailAddressIdentityArn"
                Core..=
            )
              Prelude.<$> feedbackForwardingEmailAddressIdentityArn,
            ("ReplyToAddresses" Core..=)
              Prelude.<$> replyToAddresses,
            ("DefaultEmailTags" Core..=)
              Prelude.<$> defaultEmailTags,
            ("FromEmailAddress" Core..=)
              Prelude.<$> fromEmailAddress,
            ("ConfigurationSetName" Core..=)
              Prelude.<$> configurationSetName,
            ("FromEmailAddressIdentityArn" Core..=)
              Prelude.<$> fromEmailAddressIdentityArn,
            ("FeedbackForwardingEmailAddress" Core..=)
              Prelude.<$> feedbackForwardingEmailAddress,
            Prelude.Just
              ("DefaultContent" Core..= defaultContent),
            Prelude.Just
              ("BulkEmailEntries" Core..= bulkEmailEntries)
          ]
      )

instance Core.ToPath SendBulkEmail where
  toPath =
    Prelude.const "/v2/email/outbound-bulk-emails"

instance Core.ToQuery SendBulkEmail where
  toQuery = Prelude.const Prelude.mempty

-- | The following data is returned in JSON format by the service.
--
-- /See:/ 'newSendBulkEmailResponse' smart constructor.
data SendBulkEmailResponse = SendBulkEmailResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | One object per intended recipient. Check each response object and retry
    -- any messages with a failure status.
    bulkEmailEntryResults :: [BulkEmailEntryResult]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendBulkEmailResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'sendBulkEmailResponse_httpStatus' - The response's http status code.
--
-- 'bulkEmailEntryResults', 'sendBulkEmailResponse_bulkEmailEntryResults' - One object per intended recipient. Check each response object and retry
-- any messages with a failure status.
newSendBulkEmailResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SendBulkEmailResponse
newSendBulkEmailResponse pHttpStatus_ =
  SendBulkEmailResponse'
    { httpStatus = pHttpStatus_,
      bulkEmailEntryResults = Prelude.mempty
    }

-- | The response's http status code.
sendBulkEmailResponse_httpStatus :: Lens.Lens' SendBulkEmailResponse Prelude.Int
sendBulkEmailResponse_httpStatus = Lens.lens (\SendBulkEmailResponse' {httpStatus} -> httpStatus) (\s@SendBulkEmailResponse' {} a -> s {httpStatus = a} :: SendBulkEmailResponse)

-- | One object per intended recipient. Check each response object and retry
-- any messages with a failure status.
sendBulkEmailResponse_bulkEmailEntryResults :: Lens.Lens' SendBulkEmailResponse [BulkEmailEntryResult]
sendBulkEmailResponse_bulkEmailEntryResults = Lens.lens (\SendBulkEmailResponse' {bulkEmailEntryResults} -> bulkEmailEntryResults) (\s@SendBulkEmailResponse' {} a -> s {bulkEmailEntryResults = a} :: SendBulkEmailResponse) Prelude.. Lens.coerced

instance Prelude.NFData SendBulkEmailResponse where
  rnf SendBulkEmailResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf bulkEmailEntryResults
