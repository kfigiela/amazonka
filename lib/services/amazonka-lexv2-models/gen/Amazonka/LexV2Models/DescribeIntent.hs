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
-- Module      : Amazonka.LexV2Models.DescribeIntent
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about an intent.
module Amazonka.LexV2Models.DescribeIntent
  ( -- * Creating a Request
    DescribeIntent (..),
    newDescribeIntent,

    -- * Request Lenses
    describeIntent_intentId,
    describeIntent_botId,
    describeIntent_botVersion,
    describeIntent_localeId,

    -- * Destructuring the Response
    DescribeIntentResponse (..),
    newDescribeIntentResponse,

    -- * Response Lenses
    describeIntentResponse_intentClosingSetting,
    describeIntentResponse_sampleUtterances,
    describeIntentResponse_kendraConfiguration,
    describeIntentResponse_botVersion,
    describeIntentResponse_creationDateTime,
    describeIntentResponse_dialogCodeHook,
    describeIntentResponse_localeId,
    describeIntentResponse_outputContexts,
    describeIntentResponse_intentConfirmationSetting,
    describeIntentResponse_parentIntentSignature,
    describeIntentResponse_description,
    describeIntentResponse_botId,
    describeIntentResponse_slotPriorities,
    describeIntentResponse_intentId,
    describeIntentResponse_intentName,
    describeIntentResponse_fulfillmentCodeHook,
    describeIntentResponse_initialResponseSetting,
    describeIntentResponse_inputContexts,
    describeIntentResponse_lastUpdatedDateTime,
    describeIntentResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeIntent' smart constructor.
data DescribeIntent = DescribeIntent'
  { -- | The identifier of the intent to describe.
    intentId :: Prelude.Text,
    -- | The identifier of the bot associated with the intent.
    botId :: Prelude.Text,
    -- | The version of the bot associated with the intent.
    botVersion :: Prelude.Text,
    -- | The identifier of the language and locale of the intent to describe. The
    -- string must match one of the supported locales. For more information,
    -- see
    -- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
    localeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeIntent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'intentId', 'describeIntent_intentId' - The identifier of the intent to describe.
--
-- 'botId', 'describeIntent_botId' - The identifier of the bot associated with the intent.
--
-- 'botVersion', 'describeIntent_botVersion' - The version of the bot associated with the intent.
--
-- 'localeId', 'describeIntent_localeId' - The identifier of the language and locale of the intent to describe. The
-- string must match one of the supported locales. For more information,
-- see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
newDescribeIntent ::
  -- | 'intentId'
  Prelude.Text ->
  -- | 'botId'
  Prelude.Text ->
  -- | 'botVersion'
  Prelude.Text ->
  -- | 'localeId'
  Prelude.Text ->
  DescribeIntent
newDescribeIntent
  pIntentId_
  pBotId_
  pBotVersion_
  pLocaleId_ =
    DescribeIntent'
      { intentId = pIntentId_,
        botId = pBotId_,
        botVersion = pBotVersion_,
        localeId = pLocaleId_
      }

-- | The identifier of the intent to describe.
describeIntent_intentId :: Lens.Lens' DescribeIntent Prelude.Text
describeIntent_intentId = Lens.lens (\DescribeIntent' {intentId} -> intentId) (\s@DescribeIntent' {} a -> s {intentId = a} :: DescribeIntent)

-- | The identifier of the bot associated with the intent.
describeIntent_botId :: Lens.Lens' DescribeIntent Prelude.Text
describeIntent_botId = Lens.lens (\DescribeIntent' {botId} -> botId) (\s@DescribeIntent' {} a -> s {botId = a} :: DescribeIntent)

-- | The version of the bot associated with the intent.
describeIntent_botVersion :: Lens.Lens' DescribeIntent Prelude.Text
describeIntent_botVersion = Lens.lens (\DescribeIntent' {botVersion} -> botVersion) (\s@DescribeIntent' {} a -> s {botVersion = a} :: DescribeIntent)

-- | The identifier of the language and locale of the intent to describe. The
-- string must match one of the supported locales. For more information,
-- see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
describeIntent_localeId :: Lens.Lens' DescribeIntent Prelude.Text
describeIntent_localeId = Lens.lens (\DescribeIntent' {localeId} -> localeId) (\s@DescribeIntent' {} a -> s {localeId = a} :: DescribeIntent)

instance Core.AWSRequest DescribeIntent where
  type
    AWSResponse DescribeIntent =
      DescribeIntentResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeIntentResponse'
            Prelude.<$> (x Core..?> "intentClosingSetting")
            Prelude.<*> ( x Core..?> "sampleUtterances"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "kendraConfiguration")
            Prelude.<*> (x Core..?> "botVersion")
            Prelude.<*> (x Core..?> "creationDateTime")
            Prelude.<*> (x Core..?> "dialogCodeHook")
            Prelude.<*> (x Core..?> "localeId")
            Prelude.<*> (x Core..?> "outputContexts" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "intentConfirmationSetting")
            Prelude.<*> (x Core..?> "parentIntentSignature")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "botId")
            Prelude.<*> (x Core..?> "slotPriorities" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "intentId")
            Prelude.<*> (x Core..?> "intentName")
            Prelude.<*> (x Core..?> "fulfillmentCodeHook")
            Prelude.<*> (x Core..?> "initialResponseSetting")
            Prelude.<*> (x Core..?> "inputContexts" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "lastUpdatedDateTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeIntent where
  hashWithSalt _salt DescribeIntent' {..} =
    _salt `Prelude.hashWithSalt` intentId
      `Prelude.hashWithSalt` botId
      `Prelude.hashWithSalt` botVersion
      `Prelude.hashWithSalt` localeId

instance Prelude.NFData DescribeIntent where
  rnf DescribeIntent' {..} =
    Prelude.rnf intentId
      `Prelude.seq` Prelude.rnf botId
      `Prelude.seq` Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf localeId

instance Core.ToHeaders DescribeIntent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeIntent where
  toPath DescribeIntent' {..} =
    Prelude.mconcat
      [ "/bots/",
        Core.toBS botId,
        "/botversions/",
        Core.toBS botVersion,
        "/botlocales/",
        Core.toBS localeId,
        "/intents/",
        Core.toBS intentId,
        "/"
      ]

instance Core.ToQuery DescribeIntent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeIntentResponse' smart constructor.
data DescribeIntentResponse = DescribeIntentResponse'
  { -- | The response that Amazon Lex sends to when the intent is closed.
    intentClosingSetting :: Prelude.Maybe IntentClosingSetting,
    -- | User utterances that trigger this intent.
    sampleUtterances :: Prelude.Maybe [SampleUtterance],
    -- | Configuration information required to use the
    -- @AMAZON.KendraSearchIntent@ intent.
    kendraConfiguration :: Prelude.Maybe KendraConfiguration,
    -- | The version of the bot associated with the intent.
    botVersion :: Prelude.Maybe Prelude.Text,
    -- | A timestamp of the date and time that the intent was created.
    creationDateTime :: Prelude.Maybe Core.POSIX,
    -- | The Lambda function called during each turn of a conversation with the
    -- intent.
    dialogCodeHook :: Prelude.Maybe DialogCodeHookSettings,
    -- | The language and locale specified for the intent.
    localeId :: Prelude.Maybe Prelude.Text,
    -- | A list of contexts that are activated when the intent is fulfilled.
    outputContexts :: Prelude.Maybe [OutputContext],
    -- | Prompts that Amazon Lex sends to the user to confirm completion of an
    -- intent.
    intentConfirmationSetting :: Prelude.Maybe IntentConfirmationSetting,
    -- | The identifier of the built-in intent that this intent is derived from,
    -- if any.
    parentIntentSignature :: Prelude.Maybe Prelude.Text,
    -- | The description of the intent.
    description :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the bot associated with the intent.
    botId :: Prelude.Maybe Prelude.Text,
    -- | The list that determines the priority that slots should be elicited from
    -- the user.
    slotPriorities :: Prelude.Maybe [SlotPriority],
    -- | The unique identifier assigned to the intent when it was created.
    intentId :: Prelude.Maybe Prelude.Text,
    -- | The name specified for the intent.
    intentName :: Prelude.Maybe Prelude.Text,
    -- | The Lambda function called when the intent is complete and ready for
    -- fulfillment.
    fulfillmentCodeHook :: Prelude.Maybe FulfillmentCodeHookSettings,
    initialResponseSetting :: Prelude.Maybe InitialResponseSetting,
    -- | A list of contexts that must be active for the intent to be considered
    -- for sending to the user.
    inputContexts :: Prelude.Maybe [InputContext],
    -- | A timestamp of the date and time that the intent was last updated.
    lastUpdatedDateTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeIntentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'intentClosingSetting', 'describeIntentResponse_intentClosingSetting' - The response that Amazon Lex sends to when the intent is closed.
--
-- 'sampleUtterances', 'describeIntentResponse_sampleUtterances' - User utterances that trigger this intent.
--
-- 'kendraConfiguration', 'describeIntentResponse_kendraConfiguration' - Configuration information required to use the
-- @AMAZON.KendraSearchIntent@ intent.
--
-- 'botVersion', 'describeIntentResponse_botVersion' - The version of the bot associated with the intent.
--
-- 'creationDateTime', 'describeIntentResponse_creationDateTime' - A timestamp of the date and time that the intent was created.
--
-- 'dialogCodeHook', 'describeIntentResponse_dialogCodeHook' - The Lambda function called during each turn of a conversation with the
-- intent.
--
-- 'localeId', 'describeIntentResponse_localeId' - The language and locale specified for the intent.
--
-- 'outputContexts', 'describeIntentResponse_outputContexts' - A list of contexts that are activated when the intent is fulfilled.
--
-- 'intentConfirmationSetting', 'describeIntentResponse_intentConfirmationSetting' - Prompts that Amazon Lex sends to the user to confirm completion of an
-- intent.
--
-- 'parentIntentSignature', 'describeIntentResponse_parentIntentSignature' - The identifier of the built-in intent that this intent is derived from,
-- if any.
--
-- 'description', 'describeIntentResponse_description' - The description of the intent.
--
-- 'botId', 'describeIntentResponse_botId' - The identifier of the bot associated with the intent.
--
-- 'slotPriorities', 'describeIntentResponse_slotPriorities' - The list that determines the priority that slots should be elicited from
-- the user.
--
-- 'intentId', 'describeIntentResponse_intentId' - The unique identifier assigned to the intent when it was created.
--
-- 'intentName', 'describeIntentResponse_intentName' - The name specified for the intent.
--
-- 'fulfillmentCodeHook', 'describeIntentResponse_fulfillmentCodeHook' - The Lambda function called when the intent is complete and ready for
-- fulfillment.
--
-- 'initialResponseSetting', 'describeIntentResponse_initialResponseSetting' -
--
-- 'inputContexts', 'describeIntentResponse_inputContexts' - A list of contexts that must be active for the intent to be considered
-- for sending to the user.
--
-- 'lastUpdatedDateTime', 'describeIntentResponse_lastUpdatedDateTime' - A timestamp of the date and time that the intent was last updated.
--
-- 'httpStatus', 'describeIntentResponse_httpStatus' - The response's http status code.
newDescribeIntentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeIntentResponse
newDescribeIntentResponse pHttpStatus_ =
  DescribeIntentResponse'
    { intentClosingSetting =
        Prelude.Nothing,
      sampleUtterances = Prelude.Nothing,
      kendraConfiguration = Prelude.Nothing,
      botVersion = Prelude.Nothing,
      creationDateTime = Prelude.Nothing,
      dialogCodeHook = Prelude.Nothing,
      localeId = Prelude.Nothing,
      outputContexts = Prelude.Nothing,
      intentConfirmationSetting = Prelude.Nothing,
      parentIntentSignature = Prelude.Nothing,
      description = Prelude.Nothing,
      botId = Prelude.Nothing,
      slotPriorities = Prelude.Nothing,
      intentId = Prelude.Nothing,
      intentName = Prelude.Nothing,
      fulfillmentCodeHook = Prelude.Nothing,
      initialResponseSetting = Prelude.Nothing,
      inputContexts = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The response that Amazon Lex sends to when the intent is closed.
describeIntentResponse_intentClosingSetting :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe IntentClosingSetting)
describeIntentResponse_intentClosingSetting = Lens.lens (\DescribeIntentResponse' {intentClosingSetting} -> intentClosingSetting) (\s@DescribeIntentResponse' {} a -> s {intentClosingSetting = a} :: DescribeIntentResponse)

-- | User utterances that trigger this intent.
describeIntentResponse_sampleUtterances :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe [SampleUtterance])
describeIntentResponse_sampleUtterances = Lens.lens (\DescribeIntentResponse' {sampleUtterances} -> sampleUtterances) (\s@DescribeIntentResponse' {} a -> s {sampleUtterances = a} :: DescribeIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | Configuration information required to use the
-- @AMAZON.KendraSearchIntent@ intent.
describeIntentResponse_kendraConfiguration :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe KendraConfiguration)
describeIntentResponse_kendraConfiguration = Lens.lens (\DescribeIntentResponse' {kendraConfiguration} -> kendraConfiguration) (\s@DescribeIntentResponse' {} a -> s {kendraConfiguration = a} :: DescribeIntentResponse)

-- | The version of the bot associated with the intent.
describeIntentResponse_botVersion :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.Text)
describeIntentResponse_botVersion = Lens.lens (\DescribeIntentResponse' {botVersion} -> botVersion) (\s@DescribeIntentResponse' {} a -> s {botVersion = a} :: DescribeIntentResponse)

-- | A timestamp of the date and time that the intent was created.
describeIntentResponse_creationDateTime :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.UTCTime)
describeIntentResponse_creationDateTime = Lens.lens (\DescribeIntentResponse' {creationDateTime} -> creationDateTime) (\s@DescribeIntentResponse' {} a -> s {creationDateTime = a} :: DescribeIntentResponse) Prelude.. Lens.mapping Core._Time

-- | The Lambda function called during each turn of a conversation with the
-- intent.
describeIntentResponse_dialogCodeHook :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe DialogCodeHookSettings)
describeIntentResponse_dialogCodeHook = Lens.lens (\DescribeIntentResponse' {dialogCodeHook} -> dialogCodeHook) (\s@DescribeIntentResponse' {} a -> s {dialogCodeHook = a} :: DescribeIntentResponse)

-- | The language and locale specified for the intent.
describeIntentResponse_localeId :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.Text)
describeIntentResponse_localeId = Lens.lens (\DescribeIntentResponse' {localeId} -> localeId) (\s@DescribeIntentResponse' {} a -> s {localeId = a} :: DescribeIntentResponse)

-- | A list of contexts that are activated when the intent is fulfilled.
describeIntentResponse_outputContexts :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe [OutputContext])
describeIntentResponse_outputContexts = Lens.lens (\DescribeIntentResponse' {outputContexts} -> outputContexts) (\s@DescribeIntentResponse' {} a -> s {outputContexts = a} :: DescribeIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | Prompts that Amazon Lex sends to the user to confirm completion of an
-- intent.
describeIntentResponse_intentConfirmationSetting :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe IntentConfirmationSetting)
describeIntentResponse_intentConfirmationSetting = Lens.lens (\DescribeIntentResponse' {intentConfirmationSetting} -> intentConfirmationSetting) (\s@DescribeIntentResponse' {} a -> s {intentConfirmationSetting = a} :: DescribeIntentResponse)

-- | The identifier of the built-in intent that this intent is derived from,
-- if any.
describeIntentResponse_parentIntentSignature :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.Text)
describeIntentResponse_parentIntentSignature = Lens.lens (\DescribeIntentResponse' {parentIntentSignature} -> parentIntentSignature) (\s@DescribeIntentResponse' {} a -> s {parentIntentSignature = a} :: DescribeIntentResponse)

-- | The description of the intent.
describeIntentResponse_description :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.Text)
describeIntentResponse_description = Lens.lens (\DescribeIntentResponse' {description} -> description) (\s@DescribeIntentResponse' {} a -> s {description = a} :: DescribeIntentResponse)

-- | The identifier of the bot associated with the intent.
describeIntentResponse_botId :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.Text)
describeIntentResponse_botId = Lens.lens (\DescribeIntentResponse' {botId} -> botId) (\s@DescribeIntentResponse' {} a -> s {botId = a} :: DescribeIntentResponse)

-- | The list that determines the priority that slots should be elicited from
-- the user.
describeIntentResponse_slotPriorities :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe [SlotPriority])
describeIntentResponse_slotPriorities = Lens.lens (\DescribeIntentResponse' {slotPriorities} -> slotPriorities) (\s@DescribeIntentResponse' {} a -> s {slotPriorities = a} :: DescribeIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier assigned to the intent when it was created.
describeIntentResponse_intentId :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.Text)
describeIntentResponse_intentId = Lens.lens (\DescribeIntentResponse' {intentId} -> intentId) (\s@DescribeIntentResponse' {} a -> s {intentId = a} :: DescribeIntentResponse)

-- | The name specified for the intent.
describeIntentResponse_intentName :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.Text)
describeIntentResponse_intentName = Lens.lens (\DescribeIntentResponse' {intentName} -> intentName) (\s@DescribeIntentResponse' {} a -> s {intentName = a} :: DescribeIntentResponse)

-- | The Lambda function called when the intent is complete and ready for
-- fulfillment.
describeIntentResponse_fulfillmentCodeHook :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe FulfillmentCodeHookSettings)
describeIntentResponse_fulfillmentCodeHook = Lens.lens (\DescribeIntentResponse' {fulfillmentCodeHook} -> fulfillmentCodeHook) (\s@DescribeIntentResponse' {} a -> s {fulfillmentCodeHook = a} :: DescribeIntentResponse)

-- |
describeIntentResponse_initialResponseSetting :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe InitialResponseSetting)
describeIntentResponse_initialResponseSetting = Lens.lens (\DescribeIntentResponse' {initialResponseSetting} -> initialResponseSetting) (\s@DescribeIntentResponse' {} a -> s {initialResponseSetting = a} :: DescribeIntentResponse)

-- | A list of contexts that must be active for the intent to be considered
-- for sending to the user.
describeIntentResponse_inputContexts :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe [InputContext])
describeIntentResponse_inputContexts = Lens.lens (\DescribeIntentResponse' {inputContexts} -> inputContexts) (\s@DescribeIntentResponse' {} a -> s {inputContexts = a} :: DescribeIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | A timestamp of the date and time that the intent was last updated.
describeIntentResponse_lastUpdatedDateTime :: Lens.Lens' DescribeIntentResponse (Prelude.Maybe Prelude.UTCTime)
describeIntentResponse_lastUpdatedDateTime = Lens.lens (\DescribeIntentResponse' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@DescribeIntentResponse' {} a -> s {lastUpdatedDateTime = a} :: DescribeIntentResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeIntentResponse_httpStatus :: Lens.Lens' DescribeIntentResponse Prelude.Int
describeIntentResponse_httpStatus = Lens.lens (\DescribeIntentResponse' {httpStatus} -> httpStatus) (\s@DescribeIntentResponse' {} a -> s {httpStatus = a} :: DescribeIntentResponse)

instance Prelude.NFData DescribeIntentResponse where
  rnf DescribeIntentResponse' {..} =
    Prelude.rnf intentClosingSetting
      `Prelude.seq` Prelude.rnf sampleUtterances
      `Prelude.seq` Prelude.rnf kendraConfiguration
      `Prelude.seq` Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf dialogCodeHook
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf outputContexts
      `Prelude.seq` Prelude.rnf intentConfirmationSetting
      `Prelude.seq` Prelude.rnf parentIntentSignature
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf botId
      `Prelude.seq` Prelude.rnf slotPriorities
      `Prelude.seq` Prelude.rnf intentId
      `Prelude.seq` Prelude.rnf intentName
      `Prelude.seq` Prelude.rnf fulfillmentCodeHook
      `Prelude.seq` Prelude.rnf initialResponseSetting
      `Prelude.seq` Prelude.rnf inputContexts
      `Prelude.seq` Prelude.rnf lastUpdatedDateTime
      `Prelude.seq` Prelude.rnf httpStatus
