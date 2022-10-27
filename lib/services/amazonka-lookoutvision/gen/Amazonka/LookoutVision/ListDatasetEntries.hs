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
-- Module      : Amazonka.LookoutVision.ListDatasetEntries
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON
-- Line contains the anomaly information for a single image, including the
-- image location and the assigned label.
--
-- This operation requires permissions to perform the
-- @lookoutvision:ListDatasetEntries@ operation.
--
-- This operation returns paginated results.
module Amazonka.LookoutVision.ListDatasetEntries
  ( -- * Creating a Request
    ListDatasetEntries (..),
    newListDatasetEntries,

    -- * Request Lenses
    listDatasetEntries_nextToken,
    listDatasetEntries_labeled,
    listDatasetEntries_sourceRefContains,
    listDatasetEntries_afterCreationDate,
    listDatasetEntries_beforeCreationDate,
    listDatasetEntries_anomalyClass,
    listDatasetEntries_maxResults,
    listDatasetEntries_projectName,
    listDatasetEntries_datasetType,

    -- * Destructuring the Response
    ListDatasetEntriesResponse (..),
    newListDatasetEntriesResponse,

    -- * Response Lenses
    listDatasetEntriesResponse_nextToken,
    listDatasetEntriesResponse_datasetEntries,
    listDatasetEntriesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutVision.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListDatasetEntries' smart constructor.
data ListDatasetEntries = ListDatasetEntries'
  { -- | If the previous response was incomplete (because there is more data to
    -- retrieve), Amazon Lookout for Vision returns a pagination token in the
    -- response. You can use this pagination token to retrieve the next set of
    -- dataset entries.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specify @true@ to include labeled entries, otherwise specify @false@. If
    -- you don\'t specify a value, Lookout for Vision returns all entries.
    labeled :: Prelude.Maybe Prelude.Bool,
    -- | Perform a \"contains\" search on the values of the @source-ref@ key
    -- within the dataset. For example a value of \"IMG_17\" returns all JSON
    -- Lines where the @source-ref@ key value matches /*IMG_17*/.
    sourceRefContains :: Prelude.Maybe Prelude.Text,
    -- | Only includes entries after the specified date in the response. For
    -- example, @2020-06-23T00:00:00@.
    afterCreationDate :: Prelude.Maybe Core.POSIX,
    -- | Only includes entries before the specified date in the response. For
    -- example, @2020-06-23T00:00:00@.
    beforeCreationDate :: Prelude.Maybe Core.POSIX,
    -- | Specify @normal@ to include only normal images. Specify @anomaly@ to
    -- only include anomalous entries. If you don\'t specify a value, Amazon
    -- Lookout for Vision returns normal and anomalous images.
    anomalyClass :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per paginated call. The largest
    -- value you can specify is 100. If you specify a value greater than 100, a
    -- ValidationException error occurs. The default value is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the project that contains the dataset that you want to list.
    projectName :: Prelude.Text,
    -- | The type of the dataset that you want to list. Specify @train@ to list
    -- the training dataset. Specify @test@ to list the test dataset. If you
    -- have a single dataset project, specify @train@.
    datasetType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasetEntries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatasetEntries_nextToken' - If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Lookout for Vision returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- dataset entries.
--
-- 'labeled', 'listDatasetEntries_labeled' - Specify @true@ to include labeled entries, otherwise specify @false@. If
-- you don\'t specify a value, Lookout for Vision returns all entries.
--
-- 'sourceRefContains', 'listDatasetEntries_sourceRefContains' - Perform a \"contains\" search on the values of the @source-ref@ key
-- within the dataset. For example a value of \"IMG_17\" returns all JSON
-- Lines where the @source-ref@ key value matches /*IMG_17*/.
--
-- 'afterCreationDate', 'listDatasetEntries_afterCreationDate' - Only includes entries after the specified date in the response. For
-- example, @2020-06-23T00:00:00@.
--
-- 'beforeCreationDate', 'listDatasetEntries_beforeCreationDate' - Only includes entries before the specified date in the response. For
-- example, @2020-06-23T00:00:00@.
--
-- 'anomalyClass', 'listDatasetEntries_anomalyClass' - Specify @normal@ to include only normal images. Specify @anomaly@ to
-- only include anomalous entries. If you don\'t specify a value, Amazon
-- Lookout for Vision returns normal and anomalous images.
--
-- 'maxResults', 'listDatasetEntries_maxResults' - The maximum number of results to return per paginated call. The largest
-- value you can specify is 100. If you specify a value greater than 100, a
-- ValidationException error occurs. The default value is 100.
--
-- 'projectName', 'listDatasetEntries_projectName' - The name of the project that contains the dataset that you want to list.
--
-- 'datasetType', 'listDatasetEntries_datasetType' - The type of the dataset that you want to list. Specify @train@ to list
-- the training dataset. Specify @test@ to list the test dataset. If you
-- have a single dataset project, specify @train@.
newListDatasetEntries ::
  -- | 'projectName'
  Prelude.Text ->
  -- | 'datasetType'
  Prelude.Text ->
  ListDatasetEntries
newListDatasetEntries pProjectName_ pDatasetType_ =
  ListDatasetEntries'
    { nextToken = Prelude.Nothing,
      labeled = Prelude.Nothing,
      sourceRefContains = Prelude.Nothing,
      afterCreationDate = Prelude.Nothing,
      beforeCreationDate = Prelude.Nothing,
      anomalyClass = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      projectName = pProjectName_,
      datasetType = pDatasetType_
    }

-- | If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Lookout for Vision returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- dataset entries.
listDatasetEntries_nextToken :: Lens.Lens' ListDatasetEntries (Prelude.Maybe Prelude.Text)
listDatasetEntries_nextToken = Lens.lens (\ListDatasetEntries' {nextToken} -> nextToken) (\s@ListDatasetEntries' {} a -> s {nextToken = a} :: ListDatasetEntries)

-- | Specify @true@ to include labeled entries, otherwise specify @false@. If
-- you don\'t specify a value, Lookout for Vision returns all entries.
listDatasetEntries_labeled :: Lens.Lens' ListDatasetEntries (Prelude.Maybe Prelude.Bool)
listDatasetEntries_labeled = Lens.lens (\ListDatasetEntries' {labeled} -> labeled) (\s@ListDatasetEntries' {} a -> s {labeled = a} :: ListDatasetEntries)

-- | Perform a \"contains\" search on the values of the @source-ref@ key
-- within the dataset. For example a value of \"IMG_17\" returns all JSON
-- Lines where the @source-ref@ key value matches /*IMG_17*/.
listDatasetEntries_sourceRefContains :: Lens.Lens' ListDatasetEntries (Prelude.Maybe Prelude.Text)
listDatasetEntries_sourceRefContains = Lens.lens (\ListDatasetEntries' {sourceRefContains} -> sourceRefContains) (\s@ListDatasetEntries' {} a -> s {sourceRefContains = a} :: ListDatasetEntries)

-- | Only includes entries after the specified date in the response. For
-- example, @2020-06-23T00:00:00@.
listDatasetEntries_afterCreationDate :: Lens.Lens' ListDatasetEntries (Prelude.Maybe Prelude.UTCTime)
listDatasetEntries_afterCreationDate = Lens.lens (\ListDatasetEntries' {afterCreationDate} -> afterCreationDate) (\s@ListDatasetEntries' {} a -> s {afterCreationDate = a} :: ListDatasetEntries) Prelude.. Lens.mapping Core._Time

-- | Only includes entries before the specified date in the response. For
-- example, @2020-06-23T00:00:00@.
listDatasetEntries_beforeCreationDate :: Lens.Lens' ListDatasetEntries (Prelude.Maybe Prelude.UTCTime)
listDatasetEntries_beforeCreationDate = Lens.lens (\ListDatasetEntries' {beforeCreationDate} -> beforeCreationDate) (\s@ListDatasetEntries' {} a -> s {beforeCreationDate = a} :: ListDatasetEntries) Prelude.. Lens.mapping Core._Time

-- | Specify @normal@ to include only normal images. Specify @anomaly@ to
-- only include anomalous entries. If you don\'t specify a value, Amazon
-- Lookout for Vision returns normal and anomalous images.
listDatasetEntries_anomalyClass :: Lens.Lens' ListDatasetEntries (Prelude.Maybe Prelude.Text)
listDatasetEntries_anomalyClass = Lens.lens (\ListDatasetEntries' {anomalyClass} -> anomalyClass) (\s@ListDatasetEntries' {} a -> s {anomalyClass = a} :: ListDatasetEntries)

-- | The maximum number of results to return per paginated call. The largest
-- value you can specify is 100. If you specify a value greater than 100, a
-- ValidationException error occurs. The default value is 100.
listDatasetEntries_maxResults :: Lens.Lens' ListDatasetEntries (Prelude.Maybe Prelude.Natural)
listDatasetEntries_maxResults = Lens.lens (\ListDatasetEntries' {maxResults} -> maxResults) (\s@ListDatasetEntries' {} a -> s {maxResults = a} :: ListDatasetEntries)

-- | The name of the project that contains the dataset that you want to list.
listDatasetEntries_projectName :: Lens.Lens' ListDatasetEntries Prelude.Text
listDatasetEntries_projectName = Lens.lens (\ListDatasetEntries' {projectName} -> projectName) (\s@ListDatasetEntries' {} a -> s {projectName = a} :: ListDatasetEntries)

-- | The type of the dataset that you want to list. Specify @train@ to list
-- the training dataset. Specify @test@ to list the test dataset. If you
-- have a single dataset project, specify @train@.
listDatasetEntries_datasetType :: Lens.Lens' ListDatasetEntries Prelude.Text
listDatasetEntries_datasetType = Lens.lens (\ListDatasetEntries' {datasetType} -> datasetType) (\s@ListDatasetEntries' {} a -> s {datasetType = a} :: ListDatasetEntries)

instance Core.AWSPager ListDatasetEntries where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDatasetEntriesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDatasetEntriesResponse_datasetEntries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDatasetEntries_nextToken
          Lens..~ rs
          Lens.^? listDatasetEntriesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListDatasetEntries where
  type
    AWSResponse ListDatasetEntries =
      ListDatasetEntriesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDatasetEntriesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "DatasetEntries" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDatasetEntries where
  hashWithSalt _salt ListDatasetEntries' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` labeled
      `Prelude.hashWithSalt` sourceRefContains
      `Prelude.hashWithSalt` afterCreationDate
      `Prelude.hashWithSalt` beforeCreationDate
      `Prelude.hashWithSalt` anomalyClass
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` projectName
      `Prelude.hashWithSalt` datasetType

instance Prelude.NFData ListDatasetEntries where
  rnf ListDatasetEntries' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf labeled
      `Prelude.seq` Prelude.rnf sourceRefContains
      `Prelude.seq` Prelude.rnf afterCreationDate
      `Prelude.seq` Prelude.rnf beforeCreationDate
      `Prelude.seq` Prelude.rnf anomalyClass
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf projectName
      `Prelude.seq` Prelude.rnf datasetType

instance Core.ToHeaders ListDatasetEntries where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDatasetEntries where
  toPath ListDatasetEntries' {..} =
    Prelude.mconcat
      [ "/2020-11-20/projects/",
        Core.toBS projectName,
        "/datasets/",
        Core.toBS datasetType,
        "/entries"
      ]

instance Core.ToQuery ListDatasetEntries where
  toQuery ListDatasetEntries' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "labeled" Core.=: labeled,
        "sourceRefContains" Core.=: sourceRefContains,
        "createdAfter" Core.=: afterCreationDate,
        "createdBefore" Core.=: beforeCreationDate,
        "anomalyClass" Core.=: anomalyClass,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListDatasetEntriesResponse' smart constructor.
data ListDatasetEntriesResponse = ListDatasetEntriesResponse'
  { -- | If the response is truncated, Amazon Lookout for Vision returns this
    -- token that you can use in the subsequent request to retrieve the next
    -- set ofdataset entries.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of the entries (JSON Lines) within the dataset.
    datasetEntries :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasetEntriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatasetEntriesResponse_nextToken' - If the response is truncated, Amazon Lookout for Vision returns this
-- token that you can use in the subsequent request to retrieve the next
-- set ofdataset entries.
--
-- 'datasetEntries', 'listDatasetEntriesResponse_datasetEntries' - A list of the entries (JSON Lines) within the dataset.
--
-- 'httpStatus', 'listDatasetEntriesResponse_httpStatus' - The response's http status code.
newListDatasetEntriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDatasetEntriesResponse
newListDatasetEntriesResponse pHttpStatus_ =
  ListDatasetEntriesResponse'
    { nextToken =
        Prelude.Nothing,
      datasetEntries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the response is truncated, Amazon Lookout for Vision returns this
-- token that you can use in the subsequent request to retrieve the next
-- set ofdataset entries.
listDatasetEntriesResponse_nextToken :: Lens.Lens' ListDatasetEntriesResponse (Prelude.Maybe Prelude.Text)
listDatasetEntriesResponse_nextToken = Lens.lens (\ListDatasetEntriesResponse' {nextToken} -> nextToken) (\s@ListDatasetEntriesResponse' {} a -> s {nextToken = a} :: ListDatasetEntriesResponse)

-- | A list of the entries (JSON Lines) within the dataset.
listDatasetEntriesResponse_datasetEntries :: Lens.Lens' ListDatasetEntriesResponse (Prelude.Maybe [Prelude.Text])
listDatasetEntriesResponse_datasetEntries = Lens.lens (\ListDatasetEntriesResponse' {datasetEntries} -> datasetEntries) (\s@ListDatasetEntriesResponse' {} a -> s {datasetEntries = a} :: ListDatasetEntriesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listDatasetEntriesResponse_httpStatus :: Lens.Lens' ListDatasetEntriesResponse Prelude.Int
listDatasetEntriesResponse_httpStatus = Lens.lens (\ListDatasetEntriesResponse' {httpStatus} -> httpStatus) (\s@ListDatasetEntriesResponse' {} a -> s {httpStatus = a} :: ListDatasetEntriesResponse)

instance Prelude.NFData ListDatasetEntriesResponse where
  rnf ListDatasetEntriesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf datasetEntries
      `Prelude.seq` Prelude.rnf httpStatus
