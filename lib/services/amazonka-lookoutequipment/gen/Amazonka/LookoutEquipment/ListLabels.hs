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
-- Module      : Amazonka.LookoutEquipment.ListLabels
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of labels.
module Amazonka.LookoutEquipment.ListLabels
  ( -- * Creating a Request
    ListLabels (..),
    newListLabels,

    -- * Request Lenses
    listLabels_equipment,
    listLabels_nextToken,
    listLabels_faultCode,
    listLabels_intervalStartTime,
    listLabels_maxResults,
    listLabels_intervalEndTime,
    listLabels_labelGroupName,

    -- * Destructuring the Response
    ListLabelsResponse (..),
    newListLabelsResponse,

    -- * Response Lenses
    listLabelsResponse_nextToken,
    listLabelsResponse_labelSummaries,
    listLabelsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListLabels' smart constructor.
data ListLabels = ListLabels'
  { -- | Lists the labels that pertain to a particular piece of equipment.
    equipment :: Prelude.Maybe Prelude.Text,
    -- | An opaque pagination token indicating where to continue the listing of
    -- label groups.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Returns labels with a particular fault code.
    faultCode :: Prelude.Maybe Prelude.Text,
    -- | Returns all the labels with a end time equal to or later than the start
    -- time given.
    intervalStartTime :: Prelude.Maybe Core.POSIX,
    -- | Specifies the maximum number of labels to list.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Returns all labels with a start time earlier than the end time given.
    intervalEndTime :: Prelude.Maybe Core.POSIX,
    -- | Retruns the name of the label group.
    labelGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLabels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'equipment', 'listLabels_equipment' - Lists the labels that pertain to a particular piece of equipment.
--
-- 'nextToken', 'listLabels_nextToken' - An opaque pagination token indicating where to continue the listing of
-- label groups.
--
-- 'faultCode', 'listLabels_faultCode' - Returns labels with a particular fault code.
--
-- 'intervalStartTime', 'listLabels_intervalStartTime' - Returns all the labels with a end time equal to or later than the start
-- time given.
--
-- 'maxResults', 'listLabels_maxResults' - Specifies the maximum number of labels to list.
--
-- 'intervalEndTime', 'listLabels_intervalEndTime' - Returns all labels with a start time earlier than the end time given.
--
-- 'labelGroupName', 'listLabels_labelGroupName' - Retruns the name of the label group.
newListLabels ::
  -- | 'labelGroupName'
  Prelude.Text ->
  ListLabels
newListLabels pLabelGroupName_ =
  ListLabels'
    { equipment = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      faultCode = Prelude.Nothing,
      intervalStartTime = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      intervalEndTime = Prelude.Nothing,
      labelGroupName = pLabelGroupName_
    }

-- | Lists the labels that pertain to a particular piece of equipment.
listLabels_equipment :: Lens.Lens' ListLabels (Prelude.Maybe Prelude.Text)
listLabels_equipment = Lens.lens (\ListLabels' {equipment} -> equipment) (\s@ListLabels' {} a -> s {equipment = a} :: ListLabels)

-- | An opaque pagination token indicating where to continue the listing of
-- label groups.
listLabels_nextToken :: Lens.Lens' ListLabels (Prelude.Maybe Prelude.Text)
listLabels_nextToken = Lens.lens (\ListLabels' {nextToken} -> nextToken) (\s@ListLabels' {} a -> s {nextToken = a} :: ListLabels)

-- | Returns labels with a particular fault code.
listLabels_faultCode :: Lens.Lens' ListLabels (Prelude.Maybe Prelude.Text)
listLabels_faultCode = Lens.lens (\ListLabels' {faultCode} -> faultCode) (\s@ListLabels' {} a -> s {faultCode = a} :: ListLabels)

-- | Returns all the labels with a end time equal to or later than the start
-- time given.
listLabels_intervalStartTime :: Lens.Lens' ListLabels (Prelude.Maybe Prelude.UTCTime)
listLabels_intervalStartTime = Lens.lens (\ListLabels' {intervalStartTime} -> intervalStartTime) (\s@ListLabels' {} a -> s {intervalStartTime = a} :: ListLabels) Prelude.. Lens.mapping Core._Time

-- | Specifies the maximum number of labels to list.
listLabels_maxResults :: Lens.Lens' ListLabels (Prelude.Maybe Prelude.Natural)
listLabels_maxResults = Lens.lens (\ListLabels' {maxResults} -> maxResults) (\s@ListLabels' {} a -> s {maxResults = a} :: ListLabels)

-- | Returns all labels with a start time earlier than the end time given.
listLabels_intervalEndTime :: Lens.Lens' ListLabels (Prelude.Maybe Prelude.UTCTime)
listLabels_intervalEndTime = Lens.lens (\ListLabels' {intervalEndTime} -> intervalEndTime) (\s@ListLabels' {} a -> s {intervalEndTime = a} :: ListLabels) Prelude.. Lens.mapping Core._Time

-- | Retruns the name of the label group.
listLabels_labelGroupName :: Lens.Lens' ListLabels Prelude.Text
listLabels_labelGroupName = Lens.lens (\ListLabels' {labelGroupName} -> labelGroupName) (\s@ListLabels' {} a -> s {labelGroupName = a} :: ListLabels)

instance Core.AWSRequest ListLabels where
  type AWSResponse ListLabels = ListLabelsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLabelsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "LabelSummaries" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLabels where
  hashWithSalt _salt ListLabels' {..} =
    _salt `Prelude.hashWithSalt` equipment
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` faultCode
      `Prelude.hashWithSalt` intervalStartTime
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` intervalEndTime
      `Prelude.hashWithSalt` labelGroupName

instance Prelude.NFData ListLabels where
  rnf ListLabels' {..} =
    Prelude.rnf equipment
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf faultCode
      `Prelude.seq` Prelude.rnf intervalStartTime
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf intervalEndTime
      `Prelude.seq` Prelude.rnf labelGroupName

instance Core.ToHeaders ListLabels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.ListLabels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListLabels where
  toJSON ListLabels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Equipment" Core..=) Prelude.<$> equipment,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("FaultCode" Core..=) Prelude.<$> faultCode,
            ("IntervalStartTime" Core..=)
              Prelude.<$> intervalStartTime,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("IntervalEndTime" Core..=)
              Prelude.<$> intervalEndTime,
            Prelude.Just
              ("LabelGroupName" Core..= labelGroupName)
          ]
      )

instance Core.ToPath ListLabels where
  toPath = Prelude.const "/"

instance Core.ToQuery ListLabels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListLabelsResponse' smart constructor.
data ListLabelsResponse = ListLabelsResponse'
  { -- | An opaque pagination token indicating where to continue the listing of
    -- datasets.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A summary of the items in the label group.
    labelSummaries :: Prelude.Maybe [LabelSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLabelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLabelsResponse_nextToken' - An opaque pagination token indicating where to continue the listing of
-- datasets.
--
-- 'labelSummaries', 'listLabelsResponse_labelSummaries' - A summary of the items in the label group.
--
-- 'httpStatus', 'listLabelsResponse_httpStatus' - The response's http status code.
newListLabelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLabelsResponse
newListLabelsResponse pHttpStatus_ =
  ListLabelsResponse'
    { nextToken = Prelude.Nothing,
      labelSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An opaque pagination token indicating where to continue the listing of
-- datasets.
listLabelsResponse_nextToken :: Lens.Lens' ListLabelsResponse (Prelude.Maybe Prelude.Text)
listLabelsResponse_nextToken = Lens.lens (\ListLabelsResponse' {nextToken} -> nextToken) (\s@ListLabelsResponse' {} a -> s {nextToken = a} :: ListLabelsResponse)

-- | A summary of the items in the label group.
listLabelsResponse_labelSummaries :: Lens.Lens' ListLabelsResponse (Prelude.Maybe [LabelSummary])
listLabelsResponse_labelSummaries = Lens.lens (\ListLabelsResponse' {labelSummaries} -> labelSummaries) (\s@ListLabelsResponse' {} a -> s {labelSummaries = a} :: ListLabelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLabelsResponse_httpStatus :: Lens.Lens' ListLabelsResponse Prelude.Int
listLabelsResponse_httpStatus = Lens.lens (\ListLabelsResponse' {httpStatus} -> httpStatus) (\s@ListLabelsResponse' {} a -> s {httpStatus = a} :: ListLabelsResponse)

instance Prelude.NFData ListLabelsResponse where
  rnf ListLabelsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf labelSummaries
      `Prelude.seq` Prelude.rnf httpStatus
