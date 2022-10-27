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
-- Module      : Amazonka.LexV2Models.ListAggregatedUtterances
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of utterances that users have sent to the bot.
--
-- Utterances are aggregated by the text of the utterance. For example, all
-- instances where customers used the phrase \"I want to order pizza\" are
-- aggregated into the same line in the response.
--
-- You can see both detected utterances and missed utterances. A detected
-- utterance is where the bot properly recognized the utterance and
-- activated the associated intent. A missed utterance was not recognized
-- by the bot and didn\'t activate an intent.
--
-- Utterances can be aggregated for a bot alias or for a bot version, but
-- not both at the same time.
--
-- Utterances statistics are not generated under the following conditions:
--
-- -   The @childDirected@ field was set to true when the bot was created.
--
-- -   You are using slot obfuscation with one or more slots.
--
-- -   You opted out of participating in improving Amazon Lex.
module Amazonka.LexV2Models.ListAggregatedUtterances
  ( -- * Creating a Request
    ListAggregatedUtterances (..),
    newListAggregatedUtterances,

    -- * Request Lenses
    listAggregatedUtterances_nextToken,
    listAggregatedUtterances_botVersion,
    listAggregatedUtterances_filters,
    listAggregatedUtterances_sortBy,
    listAggregatedUtterances_botAliasId,
    listAggregatedUtterances_maxResults,
    listAggregatedUtterances_botId,
    listAggregatedUtterances_localeId,
    listAggregatedUtterances_aggregationDuration,

    -- * Destructuring the Response
    ListAggregatedUtterancesResponse (..),
    newListAggregatedUtterancesResponse,

    -- * Response Lenses
    listAggregatedUtterancesResponse_nextToken,
    listAggregatedUtterancesResponse_botVersion,
    listAggregatedUtterancesResponse_aggregationWindowStartTime,
    listAggregatedUtterancesResponse_localeId,
    listAggregatedUtterancesResponse_botId,
    listAggregatedUtterancesResponse_botAliasId,
    listAggregatedUtterancesResponse_aggregationDuration,
    listAggregatedUtterancesResponse_aggregationWindowEndTime,
    listAggregatedUtterancesResponse_aggregationLastRefreshedDateTime,
    listAggregatedUtterancesResponse_aggregatedUtterancesSummaries,
    listAggregatedUtterancesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAggregatedUtterances' smart constructor.
data ListAggregatedUtterances = ListAggregatedUtterances'
  { -- | If the response from the @ListAggregatedUtterances@ operation contains
    -- more results that specified in the @maxResults@ parameter, a token is
    -- returned in the response. Use that token in the @nextToken@ parameter to
    -- return the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the bot version associated with this request. If you
    -- specify the bot version, you can\'t specify the bot alias.
    botVersion :: Prelude.Maybe Prelude.Text,
    -- | Provides the specification of a filter used to limit the utterances in
    -- the response to only those that match the filter specification. You can
    -- only specify one filter and one string to filter on.
    filters :: Prelude.Maybe (Prelude.NonEmpty AggregatedUtterancesFilter),
    -- | Specifies sorting parameters for the list of utterances. You can sort by
    -- the hit count, the missed count, or the number of distinct sessions the
    -- utterance appeared in.
    sortBy :: Prelude.Maybe AggregatedUtterancesSortBy,
    -- | The identifier of the bot alias associated with this request. If you
    -- specify the bot alias, you can\'t specify the bot version.
    botAliasId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of utterances to return in each page of results. If
    -- there are fewer results than the maximum page size, only the actual
    -- number of results are returned. If you don\'t specify the @maxResults@
    -- parameter, 1,000 results are returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier of the bot associated with this request.
    botId :: Prelude.Text,
    -- | The identifier of the language and locale where the utterances were
    -- collected. For more information, see
    -- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
    localeId :: Prelude.Text,
    -- | The time window for aggregating the utterance information. You can
    -- specify a time between one hour and two weeks.
    aggregationDuration :: UtteranceAggregationDuration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAggregatedUtterances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAggregatedUtterances_nextToken' - If the response from the @ListAggregatedUtterances@ operation contains
-- more results that specified in the @maxResults@ parameter, a token is
-- returned in the response. Use that token in the @nextToken@ parameter to
-- return the next page of results.
--
-- 'botVersion', 'listAggregatedUtterances_botVersion' - The identifier of the bot version associated with this request. If you
-- specify the bot version, you can\'t specify the bot alias.
--
-- 'filters', 'listAggregatedUtterances_filters' - Provides the specification of a filter used to limit the utterances in
-- the response to only those that match the filter specification. You can
-- only specify one filter and one string to filter on.
--
-- 'sortBy', 'listAggregatedUtterances_sortBy' - Specifies sorting parameters for the list of utterances. You can sort by
-- the hit count, the missed count, or the number of distinct sessions the
-- utterance appeared in.
--
-- 'botAliasId', 'listAggregatedUtterances_botAliasId' - The identifier of the bot alias associated with this request. If you
-- specify the bot alias, you can\'t specify the bot version.
--
-- 'maxResults', 'listAggregatedUtterances_maxResults' - The maximum number of utterances to return in each page of results. If
-- there are fewer results than the maximum page size, only the actual
-- number of results are returned. If you don\'t specify the @maxResults@
-- parameter, 1,000 results are returned.
--
-- 'botId', 'listAggregatedUtterances_botId' - The unique identifier of the bot associated with this request.
--
-- 'localeId', 'listAggregatedUtterances_localeId' - The identifier of the language and locale where the utterances were
-- collected. For more information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
--
-- 'aggregationDuration', 'listAggregatedUtterances_aggregationDuration' - The time window for aggregating the utterance information. You can
-- specify a time between one hour and two weeks.
newListAggregatedUtterances ::
  -- | 'botId'
  Prelude.Text ->
  -- | 'localeId'
  Prelude.Text ->
  -- | 'aggregationDuration'
  UtteranceAggregationDuration ->
  ListAggregatedUtterances
newListAggregatedUtterances
  pBotId_
  pLocaleId_
  pAggregationDuration_ =
    ListAggregatedUtterances'
      { nextToken =
          Prelude.Nothing,
        botVersion = Prelude.Nothing,
        filters = Prelude.Nothing,
        sortBy = Prelude.Nothing,
        botAliasId = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        botId = pBotId_,
        localeId = pLocaleId_,
        aggregationDuration = pAggregationDuration_
      }

-- | If the response from the @ListAggregatedUtterances@ operation contains
-- more results that specified in the @maxResults@ parameter, a token is
-- returned in the response. Use that token in the @nextToken@ parameter to
-- return the next page of results.
listAggregatedUtterances_nextToken :: Lens.Lens' ListAggregatedUtterances (Prelude.Maybe Prelude.Text)
listAggregatedUtterances_nextToken = Lens.lens (\ListAggregatedUtterances' {nextToken} -> nextToken) (\s@ListAggregatedUtterances' {} a -> s {nextToken = a} :: ListAggregatedUtterances)

-- | The identifier of the bot version associated with this request. If you
-- specify the bot version, you can\'t specify the bot alias.
listAggregatedUtterances_botVersion :: Lens.Lens' ListAggregatedUtterances (Prelude.Maybe Prelude.Text)
listAggregatedUtterances_botVersion = Lens.lens (\ListAggregatedUtterances' {botVersion} -> botVersion) (\s@ListAggregatedUtterances' {} a -> s {botVersion = a} :: ListAggregatedUtterances)

-- | Provides the specification of a filter used to limit the utterances in
-- the response to only those that match the filter specification. You can
-- only specify one filter and one string to filter on.
listAggregatedUtterances_filters :: Lens.Lens' ListAggregatedUtterances (Prelude.Maybe (Prelude.NonEmpty AggregatedUtterancesFilter))
listAggregatedUtterances_filters = Lens.lens (\ListAggregatedUtterances' {filters} -> filters) (\s@ListAggregatedUtterances' {} a -> s {filters = a} :: ListAggregatedUtterances) Prelude.. Lens.mapping Lens.coerced

-- | Specifies sorting parameters for the list of utterances. You can sort by
-- the hit count, the missed count, or the number of distinct sessions the
-- utterance appeared in.
listAggregatedUtterances_sortBy :: Lens.Lens' ListAggregatedUtterances (Prelude.Maybe AggregatedUtterancesSortBy)
listAggregatedUtterances_sortBy = Lens.lens (\ListAggregatedUtterances' {sortBy} -> sortBy) (\s@ListAggregatedUtterances' {} a -> s {sortBy = a} :: ListAggregatedUtterances)

-- | The identifier of the bot alias associated with this request. If you
-- specify the bot alias, you can\'t specify the bot version.
listAggregatedUtterances_botAliasId :: Lens.Lens' ListAggregatedUtterances (Prelude.Maybe Prelude.Text)
listAggregatedUtterances_botAliasId = Lens.lens (\ListAggregatedUtterances' {botAliasId} -> botAliasId) (\s@ListAggregatedUtterances' {} a -> s {botAliasId = a} :: ListAggregatedUtterances)

-- | The maximum number of utterances to return in each page of results. If
-- there are fewer results than the maximum page size, only the actual
-- number of results are returned. If you don\'t specify the @maxResults@
-- parameter, 1,000 results are returned.
listAggregatedUtterances_maxResults :: Lens.Lens' ListAggregatedUtterances (Prelude.Maybe Prelude.Natural)
listAggregatedUtterances_maxResults = Lens.lens (\ListAggregatedUtterances' {maxResults} -> maxResults) (\s@ListAggregatedUtterances' {} a -> s {maxResults = a} :: ListAggregatedUtterances)

-- | The unique identifier of the bot associated with this request.
listAggregatedUtterances_botId :: Lens.Lens' ListAggregatedUtterances Prelude.Text
listAggregatedUtterances_botId = Lens.lens (\ListAggregatedUtterances' {botId} -> botId) (\s@ListAggregatedUtterances' {} a -> s {botId = a} :: ListAggregatedUtterances)

-- | The identifier of the language and locale where the utterances were
-- collected. For more information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
listAggregatedUtterances_localeId :: Lens.Lens' ListAggregatedUtterances Prelude.Text
listAggregatedUtterances_localeId = Lens.lens (\ListAggregatedUtterances' {localeId} -> localeId) (\s@ListAggregatedUtterances' {} a -> s {localeId = a} :: ListAggregatedUtterances)

-- | The time window for aggregating the utterance information. You can
-- specify a time between one hour and two weeks.
listAggregatedUtterances_aggregationDuration :: Lens.Lens' ListAggregatedUtterances UtteranceAggregationDuration
listAggregatedUtterances_aggregationDuration = Lens.lens (\ListAggregatedUtterances' {aggregationDuration} -> aggregationDuration) (\s@ListAggregatedUtterances' {} a -> s {aggregationDuration = a} :: ListAggregatedUtterances)

instance Core.AWSRequest ListAggregatedUtterances where
  type
    AWSResponse ListAggregatedUtterances =
      ListAggregatedUtterancesResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAggregatedUtterancesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "botVersion")
            Prelude.<*> (x Core..?> "aggregationWindowStartTime")
            Prelude.<*> (x Core..?> "localeId")
            Prelude.<*> (x Core..?> "botId")
            Prelude.<*> (x Core..?> "botAliasId")
            Prelude.<*> (x Core..?> "aggregationDuration")
            Prelude.<*> (x Core..?> "aggregationWindowEndTime")
            Prelude.<*> (x Core..?> "aggregationLastRefreshedDateTime")
            Prelude.<*> ( x Core..?> "aggregatedUtterancesSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAggregatedUtterances where
  hashWithSalt _salt ListAggregatedUtterances' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` botVersion
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` botAliasId
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` botId
      `Prelude.hashWithSalt` localeId
      `Prelude.hashWithSalt` aggregationDuration

instance Prelude.NFData ListAggregatedUtterances where
  rnf ListAggregatedUtterances' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf botAliasId
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf botId
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf aggregationDuration

instance Core.ToHeaders ListAggregatedUtterances where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAggregatedUtterances where
  toJSON ListAggregatedUtterances' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("botVersion" Core..=) Prelude.<$> botVersion,
            ("filters" Core..=) Prelude.<$> filters,
            ("sortBy" Core..=) Prelude.<$> sortBy,
            ("botAliasId" Core..=) Prelude.<$> botAliasId,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("localeId" Core..= localeId),
            Prelude.Just
              ("aggregationDuration" Core..= aggregationDuration)
          ]
      )

instance Core.ToPath ListAggregatedUtterances where
  toPath ListAggregatedUtterances' {..} =
    Prelude.mconcat
      ["/bots/", Core.toBS botId, "/aggregatedutterances/"]

instance Core.ToQuery ListAggregatedUtterances where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAggregatedUtterancesResponse' smart constructor.
data ListAggregatedUtterancesResponse = ListAggregatedUtterancesResponse'
  { -- | A token that indicates whether there are more results to return in a
    -- response to the @ListAggregatedUtterances@ operation. If the @nextToken@
    -- field is present, you send the contents as the @nextToken@ parameter of
    -- a @ListAggregatedUtterances@ operation request to get the next page of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the bot version that contains the utterances. If you
    -- specified the bot alias, the bot version isn\'t returned.
    botVersion :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the aggregation window begins. Only data
    -- collected after this time is returned in the results.
    aggregationWindowStartTime :: Prelude.Maybe Core.POSIX,
    -- | The identifier of the language and locale that the utterances are in.
    localeId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the bot that contains the utterances.
    botId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the bot alias that contains the utterances. If you
    -- specified the bot version, the bot alias ID isn\'t returned.
    botAliasId :: Prelude.Maybe Prelude.Text,
    -- | The time period used to aggregate the utterance data.
    aggregationDuration :: Prelude.Maybe UtteranceAggregationDuration,
    -- | The date and time that the aggregation window ends. Only data collected
    -- between the start time and the end time are returned in the results.
    aggregationWindowEndTime :: Prelude.Maybe Core.POSIX,
    -- | The last date and time that the aggregated data was collected. The time
    -- period depends on the length of the aggregation window.
    --
    -- -   __Hours__ - for 1 hour time window, every half hour; otherwise every
    --     hour.
    --
    -- -   __Days__ - every 6 hours
    --
    -- -   __Weeks__ - for a one week time window, every 12 hours; otherwise,
    --     every day
    aggregationLastRefreshedDateTime :: Prelude.Maybe Core.POSIX,
    -- | Summaries of the aggregated utterance data. Each response contains
    -- information about the number of times that the utterance was seen during
    -- the time period, whether it was detected or missed, and when it was seen
    -- during the time period.
    aggregatedUtterancesSummaries :: Prelude.Maybe [AggregatedUtterancesSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAggregatedUtterancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAggregatedUtterancesResponse_nextToken' - A token that indicates whether there are more results to return in a
-- response to the @ListAggregatedUtterances@ operation. If the @nextToken@
-- field is present, you send the contents as the @nextToken@ parameter of
-- a @ListAggregatedUtterances@ operation request to get the next page of
-- results.
--
-- 'botVersion', 'listAggregatedUtterancesResponse_botVersion' - The identifier of the bot version that contains the utterances. If you
-- specified the bot alias, the bot version isn\'t returned.
--
-- 'aggregationWindowStartTime', 'listAggregatedUtterancesResponse_aggregationWindowStartTime' - The date and time that the aggregation window begins. Only data
-- collected after this time is returned in the results.
--
-- 'localeId', 'listAggregatedUtterancesResponse_localeId' - The identifier of the language and locale that the utterances are in.
--
-- 'botId', 'listAggregatedUtterancesResponse_botId' - The identifier of the bot that contains the utterances.
--
-- 'botAliasId', 'listAggregatedUtterancesResponse_botAliasId' - The identifier of the bot alias that contains the utterances. If you
-- specified the bot version, the bot alias ID isn\'t returned.
--
-- 'aggregationDuration', 'listAggregatedUtterancesResponse_aggregationDuration' - The time period used to aggregate the utterance data.
--
-- 'aggregationWindowEndTime', 'listAggregatedUtterancesResponse_aggregationWindowEndTime' - The date and time that the aggregation window ends. Only data collected
-- between the start time and the end time are returned in the results.
--
-- 'aggregationLastRefreshedDateTime', 'listAggregatedUtterancesResponse_aggregationLastRefreshedDateTime' - The last date and time that the aggregated data was collected. The time
-- period depends on the length of the aggregation window.
--
-- -   __Hours__ - for 1 hour time window, every half hour; otherwise every
--     hour.
--
-- -   __Days__ - every 6 hours
--
-- -   __Weeks__ - for a one week time window, every 12 hours; otherwise,
--     every day
--
-- 'aggregatedUtterancesSummaries', 'listAggregatedUtterancesResponse_aggregatedUtterancesSummaries' - Summaries of the aggregated utterance data. Each response contains
-- information about the number of times that the utterance was seen during
-- the time period, whether it was detected or missed, and when it was seen
-- during the time period.
--
-- 'httpStatus', 'listAggregatedUtterancesResponse_httpStatus' - The response's http status code.
newListAggregatedUtterancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAggregatedUtterancesResponse
newListAggregatedUtterancesResponse pHttpStatus_ =
  ListAggregatedUtterancesResponse'
    { nextToken =
        Prelude.Nothing,
      botVersion = Prelude.Nothing,
      aggregationWindowStartTime =
        Prelude.Nothing,
      localeId = Prelude.Nothing,
      botId = Prelude.Nothing,
      botAliasId = Prelude.Nothing,
      aggregationDuration = Prelude.Nothing,
      aggregationWindowEndTime =
        Prelude.Nothing,
      aggregationLastRefreshedDateTime =
        Prelude.Nothing,
      aggregatedUtterancesSummaries =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token that indicates whether there are more results to return in a
-- response to the @ListAggregatedUtterances@ operation. If the @nextToken@
-- field is present, you send the contents as the @nextToken@ parameter of
-- a @ListAggregatedUtterances@ operation request to get the next page of
-- results.
listAggregatedUtterancesResponse_nextToken :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.Text)
listAggregatedUtterancesResponse_nextToken = Lens.lens (\ListAggregatedUtterancesResponse' {nextToken} -> nextToken) (\s@ListAggregatedUtterancesResponse' {} a -> s {nextToken = a} :: ListAggregatedUtterancesResponse)

-- | The identifier of the bot version that contains the utterances. If you
-- specified the bot alias, the bot version isn\'t returned.
listAggregatedUtterancesResponse_botVersion :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.Text)
listAggregatedUtterancesResponse_botVersion = Lens.lens (\ListAggregatedUtterancesResponse' {botVersion} -> botVersion) (\s@ListAggregatedUtterancesResponse' {} a -> s {botVersion = a} :: ListAggregatedUtterancesResponse)

-- | The date and time that the aggregation window begins. Only data
-- collected after this time is returned in the results.
listAggregatedUtterancesResponse_aggregationWindowStartTime :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.UTCTime)
listAggregatedUtterancesResponse_aggregationWindowStartTime = Lens.lens (\ListAggregatedUtterancesResponse' {aggregationWindowStartTime} -> aggregationWindowStartTime) (\s@ListAggregatedUtterancesResponse' {} a -> s {aggregationWindowStartTime = a} :: ListAggregatedUtterancesResponse) Prelude.. Lens.mapping Core._Time

-- | The identifier of the language and locale that the utterances are in.
listAggregatedUtterancesResponse_localeId :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.Text)
listAggregatedUtterancesResponse_localeId = Lens.lens (\ListAggregatedUtterancesResponse' {localeId} -> localeId) (\s@ListAggregatedUtterancesResponse' {} a -> s {localeId = a} :: ListAggregatedUtterancesResponse)

-- | The identifier of the bot that contains the utterances.
listAggregatedUtterancesResponse_botId :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.Text)
listAggregatedUtterancesResponse_botId = Lens.lens (\ListAggregatedUtterancesResponse' {botId} -> botId) (\s@ListAggregatedUtterancesResponse' {} a -> s {botId = a} :: ListAggregatedUtterancesResponse)

-- | The identifier of the bot alias that contains the utterances. If you
-- specified the bot version, the bot alias ID isn\'t returned.
listAggregatedUtterancesResponse_botAliasId :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.Text)
listAggregatedUtterancesResponse_botAliasId = Lens.lens (\ListAggregatedUtterancesResponse' {botAliasId} -> botAliasId) (\s@ListAggregatedUtterancesResponse' {} a -> s {botAliasId = a} :: ListAggregatedUtterancesResponse)

-- | The time period used to aggregate the utterance data.
listAggregatedUtterancesResponse_aggregationDuration :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe UtteranceAggregationDuration)
listAggregatedUtterancesResponse_aggregationDuration = Lens.lens (\ListAggregatedUtterancesResponse' {aggregationDuration} -> aggregationDuration) (\s@ListAggregatedUtterancesResponse' {} a -> s {aggregationDuration = a} :: ListAggregatedUtterancesResponse)

-- | The date and time that the aggregation window ends. Only data collected
-- between the start time and the end time are returned in the results.
listAggregatedUtterancesResponse_aggregationWindowEndTime :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.UTCTime)
listAggregatedUtterancesResponse_aggregationWindowEndTime = Lens.lens (\ListAggregatedUtterancesResponse' {aggregationWindowEndTime} -> aggregationWindowEndTime) (\s@ListAggregatedUtterancesResponse' {} a -> s {aggregationWindowEndTime = a} :: ListAggregatedUtterancesResponse) Prelude.. Lens.mapping Core._Time

-- | The last date and time that the aggregated data was collected. The time
-- period depends on the length of the aggregation window.
--
-- -   __Hours__ - for 1 hour time window, every half hour; otherwise every
--     hour.
--
-- -   __Days__ - every 6 hours
--
-- -   __Weeks__ - for a one week time window, every 12 hours; otherwise,
--     every day
listAggregatedUtterancesResponse_aggregationLastRefreshedDateTime :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe Prelude.UTCTime)
listAggregatedUtterancesResponse_aggregationLastRefreshedDateTime = Lens.lens (\ListAggregatedUtterancesResponse' {aggregationLastRefreshedDateTime} -> aggregationLastRefreshedDateTime) (\s@ListAggregatedUtterancesResponse' {} a -> s {aggregationLastRefreshedDateTime = a} :: ListAggregatedUtterancesResponse) Prelude.. Lens.mapping Core._Time

-- | Summaries of the aggregated utterance data. Each response contains
-- information about the number of times that the utterance was seen during
-- the time period, whether it was detected or missed, and when it was seen
-- during the time period.
listAggregatedUtterancesResponse_aggregatedUtterancesSummaries :: Lens.Lens' ListAggregatedUtterancesResponse (Prelude.Maybe [AggregatedUtterancesSummary])
listAggregatedUtterancesResponse_aggregatedUtterancesSummaries = Lens.lens (\ListAggregatedUtterancesResponse' {aggregatedUtterancesSummaries} -> aggregatedUtterancesSummaries) (\s@ListAggregatedUtterancesResponse' {} a -> s {aggregatedUtterancesSummaries = a} :: ListAggregatedUtterancesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAggregatedUtterancesResponse_httpStatus :: Lens.Lens' ListAggregatedUtterancesResponse Prelude.Int
listAggregatedUtterancesResponse_httpStatus = Lens.lens (\ListAggregatedUtterancesResponse' {httpStatus} -> httpStatus) (\s@ListAggregatedUtterancesResponse' {} a -> s {httpStatus = a} :: ListAggregatedUtterancesResponse)

instance
  Prelude.NFData
    ListAggregatedUtterancesResponse
  where
  rnf ListAggregatedUtterancesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf aggregationWindowStartTime
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf botId
      `Prelude.seq` Prelude.rnf botAliasId
      `Prelude.seq` Prelude.rnf aggregationDuration
      `Prelude.seq` Prelude.rnf aggregationWindowEndTime
      `Prelude.seq` Prelude.rnf aggregationLastRefreshedDateTime
      `Prelude.seq` Prelude.rnf aggregatedUtterancesSummaries
      `Prelude.seq` Prelude.rnf httpStatus
