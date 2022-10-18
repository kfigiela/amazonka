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
-- Module      : Amazonka.AuditManager.GetEvidenceByEvidenceFolder
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all evidence from a specified evidence folder in Audit Manager.
module Amazonka.AuditManager.GetEvidenceByEvidenceFolder
  ( -- * Creating a Request
    GetEvidenceByEvidenceFolder (..),
    newGetEvidenceByEvidenceFolder,

    -- * Request Lenses
    getEvidenceByEvidenceFolder_nextToken,
    getEvidenceByEvidenceFolder_maxResults,
    getEvidenceByEvidenceFolder_assessmentId,
    getEvidenceByEvidenceFolder_controlSetId,
    getEvidenceByEvidenceFolder_evidenceFolderId,

    -- * Destructuring the Response
    GetEvidenceByEvidenceFolderResponse (..),
    newGetEvidenceByEvidenceFolderResponse,

    -- * Response Lenses
    getEvidenceByEvidenceFolderResponse_nextToken,
    getEvidenceByEvidenceFolderResponse_evidence,
    getEvidenceByEvidenceFolderResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetEvidenceByEvidenceFolder' smart constructor.
data GetEvidenceByEvidenceFolder = GetEvidenceByEvidenceFolder'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents the maximum number of results on a page or for an API request
    -- call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier for the assessment.
    assessmentId :: Prelude.Text,
    -- | The identifier for the control set.
    controlSetId :: Prelude.Text,
    -- | The unique identifier for the folder that the evidence is stored in.
    evidenceFolderId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEvidenceByEvidenceFolder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEvidenceByEvidenceFolder_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'maxResults', 'getEvidenceByEvidenceFolder_maxResults' - Represents the maximum number of results on a page or for an API request
-- call.
--
-- 'assessmentId', 'getEvidenceByEvidenceFolder_assessmentId' - The identifier for the assessment.
--
-- 'controlSetId', 'getEvidenceByEvidenceFolder_controlSetId' - The identifier for the control set.
--
-- 'evidenceFolderId', 'getEvidenceByEvidenceFolder_evidenceFolderId' - The unique identifier for the folder that the evidence is stored in.
newGetEvidenceByEvidenceFolder ::
  -- | 'assessmentId'
  Prelude.Text ->
  -- | 'controlSetId'
  Prelude.Text ->
  -- | 'evidenceFolderId'
  Prelude.Text ->
  GetEvidenceByEvidenceFolder
newGetEvidenceByEvidenceFolder
  pAssessmentId_
  pControlSetId_
  pEvidenceFolderId_ =
    GetEvidenceByEvidenceFolder'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        assessmentId = pAssessmentId_,
        controlSetId = pControlSetId_,
        evidenceFolderId = pEvidenceFolderId_
      }

-- | The pagination token that\'s used to fetch the next set of results.
getEvidenceByEvidenceFolder_nextToken :: Lens.Lens' GetEvidenceByEvidenceFolder (Prelude.Maybe Prelude.Text)
getEvidenceByEvidenceFolder_nextToken = Lens.lens (\GetEvidenceByEvidenceFolder' {nextToken} -> nextToken) (\s@GetEvidenceByEvidenceFolder' {} a -> s {nextToken = a} :: GetEvidenceByEvidenceFolder)

-- | Represents the maximum number of results on a page or for an API request
-- call.
getEvidenceByEvidenceFolder_maxResults :: Lens.Lens' GetEvidenceByEvidenceFolder (Prelude.Maybe Prelude.Natural)
getEvidenceByEvidenceFolder_maxResults = Lens.lens (\GetEvidenceByEvidenceFolder' {maxResults} -> maxResults) (\s@GetEvidenceByEvidenceFolder' {} a -> s {maxResults = a} :: GetEvidenceByEvidenceFolder)

-- | The identifier for the assessment.
getEvidenceByEvidenceFolder_assessmentId :: Lens.Lens' GetEvidenceByEvidenceFolder Prelude.Text
getEvidenceByEvidenceFolder_assessmentId = Lens.lens (\GetEvidenceByEvidenceFolder' {assessmentId} -> assessmentId) (\s@GetEvidenceByEvidenceFolder' {} a -> s {assessmentId = a} :: GetEvidenceByEvidenceFolder)

-- | The identifier for the control set.
getEvidenceByEvidenceFolder_controlSetId :: Lens.Lens' GetEvidenceByEvidenceFolder Prelude.Text
getEvidenceByEvidenceFolder_controlSetId = Lens.lens (\GetEvidenceByEvidenceFolder' {controlSetId} -> controlSetId) (\s@GetEvidenceByEvidenceFolder' {} a -> s {controlSetId = a} :: GetEvidenceByEvidenceFolder)

-- | The unique identifier for the folder that the evidence is stored in.
getEvidenceByEvidenceFolder_evidenceFolderId :: Lens.Lens' GetEvidenceByEvidenceFolder Prelude.Text
getEvidenceByEvidenceFolder_evidenceFolderId = Lens.lens (\GetEvidenceByEvidenceFolder' {evidenceFolderId} -> evidenceFolderId) (\s@GetEvidenceByEvidenceFolder' {} a -> s {evidenceFolderId = a} :: GetEvidenceByEvidenceFolder)

instance Core.AWSRequest GetEvidenceByEvidenceFolder where
  type
    AWSResponse GetEvidenceByEvidenceFolder =
      GetEvidenceByEvidenceFolderResponse
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEvidenceByEvidenceFolderResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "evidence" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService GetEvidenceByEvidenceFolder where
  service _proxy = defaultService

instance Prelude.Hashable GetEvidenceByEvidenceFolder where
  hashWithSalt _salt GetEvidenceByEvidenceFolder' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` assessmentId
      `Prelude.hashWithSalt` controlSetId
      `Prelude.hashWithSalt` evidenceFolderId

instance Prelude.NFData GetEvidenceByEvidenceFolder where
  rnf GetEvidenceByEvidenceFolder' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf assessmentId
      `Prelude.seq` Prelude.rnf controlSetId
      `Prelude.seq` Prelude.rnf evidenceFolderId

instance Core.ToHeaders GetEvidenceByEvidenceFolder where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetEvidenceByEvidenceFolder where
  toPath GetEvidenceByEvidenceFolder' {..} =
    Prelude.mconcat
      [ "/assessments/",
        Core.toBS assessmentId,
        "/controlSets/",
        Core.toBS controlSetId,
        "/evidenceFolders/",
        Core.toBS evidenceFolderId,
        "/evidence"
      ]

instance Core.ToQuery GetEvidenceByEvidenceFolder where
  toQuery GetEvidenceByEvidenceFolder' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetEvidenceByEvidenceFolderResponse' smart constructor.
data GetEvidenceByEvidenceFolderResponse = GetEvidenceByEvidenceFolderResponse'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of evidence that the @GetEvidenceByEvidenceFolder@ API
    -- returned.
    evidence :: Prelude.Maybe [Evidence],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEvidenceByEvidenceFolderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEvidenceByEvidenceFolderResponse_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'evidence', 'getEvidenceByEvidenceFolderResponse_evidence' - The list of evidence that the @GetEvidenceByEvidenceFolder@ API
-- returned.
--
-- 'httpStatus', 'getEvidenceByEvidenceFolderResponse_httpStatus' - The response's http status code.
newGetEvidenceByEvidenceFolderResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEvidenceByEvidenceFolderResponse
newGetEvidenceByEvidenceFolderResponse pHttpStatus_ =
  GetEvidenceByEvidenceFolderResponse'
    { nextToken =
        Prelude.Nothing,
      evidence = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token that\'s used to fetch the next set of results.
getEvidenceByEvidenceFolderResponse_nextToken :: Lens.Lens' GetEvidenceByEvidenceFolderResponse (Prelude.Maybe Prelude.Text)
getEvidenceByEvidenceFolderResponse_nextToken = Lens.lens (\GetEvidenceByEvidenceFolderResponse' {nextToken} -> nextToken) (\s@GetEvidenceByEvidenceFolderResponse' {} a -> s {nextToken = a} :: GetEvidenceByEvidenceFolderResponse)

-- | The list of evidence that the @GetEvidenceByEvidenceFolder@ API
-- returned.
getEvidenceByEvidenceFolderResponse_evidence :: Lens.Lens' GetEvidenceByEvidenceFolderResponse (Prelude.Maybe [Evidence])
getEvidenceByEvidenceFolderResponse_evidence = Lens.lens (\GetEvidenceByEvidenceFolderResponse' {evidence} -> evidence) (\s@GetEvidenceByEvidenceFolderResponse' {} a -> s {evidence = a} :: GetEvidenceByEvidenceFolderResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getEvidenceByEvidenceFolderResponse_httpStatus :: Lens.Lens' GetEvidenceByEvidenceFolderResponse Prelude.Int
getEvidenceByEvidenceFolderResponse_httpStatus = Lens.lens (\GetEvidenceByEvidenceFolderResponse' {httpStatus} -> httpStatus) (\s@GetEvidenceByEvidenceFolderResponse' {} a -> s {httpStatus = a} :: GetEvidenceByEvidenceFolderResponse)

instance
  Prelude.NFData
    GetEvidenceByEvidenceFolderResponse
  where
  rnf GetEvidenceByEvidenceFolderResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf evidence
      `Prelude.seq` Prelude.rnf httpStatus
