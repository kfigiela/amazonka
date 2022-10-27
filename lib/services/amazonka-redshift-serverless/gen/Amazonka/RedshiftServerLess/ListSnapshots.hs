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
-- Module      : Amazonka.RedshiftServerLess.ListSnapshots
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of snapshots.
--
-- This operation returns paginated results.
module Amazonka.RedshiftServerLess.ListSnapshots
  ( -- * Creating a Request
    ListSnapshots (..),
    newListSnapshots,

    -- * Request Lenses
    listSnapshots_nextToken,
    listSnapshots_namespaceName,
    listSnapshots_namespaceArn,
    listSnapshots_endTime,
    listSnapshots_maxResults,
    listSnapshots_ownerAccount,
    listSnapshots_startTime,

    -- * Destructuring the Response
    ListSnapshotsResponse (..),
    newListSnapshotsResponse,

    -- * Response Lenses
    listSnapshotsResponse_nextToken,
    listSnapshotsResponse_snapshots,
    listSnapshotsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RedshiftServerLess.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSnapshots' smart constructor.
data ListSnapshots = ListSnapshots'
  { -- | If @nextToken@ is returned, there are more results available. The value
    -- of @nextToken@ is a unique pagination token for each page. Make the call
    -- again using the returned token to retrieve the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The namespace from which to list all snapshots.
    namespaceName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the namespace from which to list all
    -- snapshots.
    namespaceArn :: Prelude.Maybe Prelude.Text,
    -- | The timestamp showing when the snapshot creation finished.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | An optional parameter that specifies the maximum number of results to
    -- return. You can use @nextToken@ to get the next page of results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The owner Amazon Web Services account of the snapshot.
    ownerAccount :: Prelude.Maybe Prelude.Text,
    -- | The time when the creation of the snapshot was initiated.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSnapshots' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSnapshots_nextToken' - If @nextToken@ is returned, there are more results available. The value
-- of @nextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page.
--
-- 'namespaceName', 'listSnapshots_namespaceName' - The namespace from which to list all snapshots.
--
-- 'namespaceArn', 'listSnapshots_namespaceArn' - The Amazon Resource Name (ARN) of the namespace from which to list all
-- snapshots.
--
-- 'endTime', 'listSnapshots_endTime' - The timestamp showing when the snapshot creation finished.
--
-- 'maxResults', 'listSnapshots_maxResults' - An optional parameter that specifies the maximum number of results to
-- return. You can use @nextToken@ to get the next page of results.
--
-- 'ownerAccount', 'listSnapshots_ownerAccount' - The owner Amazon Web Services account of the snapshot.
--
-- 'startTime', 'listSnapshots_startTime' - The time when the creation of the snapshot was initiated.
newListSnapshots ::
  ListSnapshots
newListSnapshots =
  ListSnapshots'
    { nextToken = Prelude.Nothing,
      namespaceName = Prelude.Nothing,
      namespaceArn = Prelude.Nothing,
      endTime = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      ownerAccount = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | If @nextToken@ is returned, there are more results available. The value
-- of @nextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page.
listSnapshots_nextToken :: Lens.Lens' ListSnapshots (Prelude.Maybe Prelude.Text)
listSnapshots_nextToken = Lens.lens (\ListSnapshots' {nextToken} -> nextToken) (\s@ListSnapshots' {} a -> s {nextToken = a} :: ListSnapshots)

-- | The namespace from which to list all snapshots.
listSnapshots_namespaceName :: Lens.Lens' ListSnapshots (Prelude.Maybe Prelude.Text)
listSnapshots_namespaceName = Lens.lens (\ListSnapshots' {namespaceName} -> namespaceName) (\s@ListSnapshots' {} a -> s {namespaceName = a} :: ListSnapshots)

-- | The Amazon Resource Name (ARN) of the namespace from which to list all
-- snapshots.
listSnapshots_namespaceArn :: Lens.Lens' ListSnapshots (Prelude.Maybe Prelude.Text)
listSnapshots_namespaceArn = Lens.lens (\ListSnapshots' {namespaceArn} -> namespaceArn) (\s@ListSnapshots' {} a -> s {namespaceArn = a} :: ListSnapshots)

-- | The timestamp showing when the snapshot creation finished.
listSnapshots_endTime :: Lens.Lens' ListSnapshots (Prelude.Maybe Prelude.UTCTime)
listSnapshots_endTime = Lens.lens (\ListSnapshots' {endTime} -> endTime) (\s@ListSnapshots' {} a -> s {endTime = a} :: ListSnapshots) Prelude.. Lens.mapping Core._Time

-- | An optional parameter that specifies the maximum number of results to
-- return. You can use @nextToken@ to get the next page of results.
listSnapshots_maxResults :: Lens.Lens' ListSnapshots (Prelude.Maybe Prelude.Natural)
listSnapshots_maxResults = Lens.lens (\ListSnapshots' {maxResults} -> maxResults) (\s@ListSnapshots' {} a -> s {maxResults = a} :: ListSnapshots)

-- | The owner Amazon Web Services account of the snapshot.
listSnapshots_ownerAccount :: Lens.Lens' ListSnapshots (Prelude.Maybe Prelude.Text)
listSnapshots_ownerAccount = Lens.lens (\ListSnapshots' {ownerAccount} -> ownerAccount) (\s@ListSnapshots' {} a -> s {ownerAccount = a} :: ListSnapshots)

-- | The time when the creation of the snapshot was initiated.
listSnapshots_startTime :: Lens.Lens' ListSnapshots (Prelude.Maybe Prelude.UTCTime)
listSnapshots_startTime = Lens.lens (\ListSnapshots' {startTime} -> startTime) (\s@ListSnapshots' {} a -> s {startTime = a} :: ListSnapshots) Prelude.. Lens.mapping Core._Time

instance Core.AWSPager ListSnapshots where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSnapshotsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSnapshotsResponse_snapshots Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSnapshots_nextToken
          Lens..~ rs
          Lens.^? listSnapshotsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListSnapshots where
  type
    AWSResponse ListSnapshots =
      ListSnapshotsResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSnapshotsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "snapshots" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSnapshots where
  hashWithSalt _salt ListSnapshots' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` namespaceName
      `Prelude.hashWithSalt` namespaceArn
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` ownerAccount
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData ListSnapshots where
  rnf ListSnapshots' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf namespaceName
      `Prelude.seq` Prelude.rnf namespaceArn
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf ownerAccount
      `Prelude.seq` Prelude.rnf startTime

instance Core.ToHeaders ListSnapshots where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RedshiftServerless.ListSnapshots" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSnapshots where
  toJSON ListSnapshots' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("namespaceName" Core..=) Prelude.<$> namespaceName,
            ("namespaceArn" Core..=) Prelude.<$> namespaceArn,
            ("endTime" Core..=) Prelude.<$> endTime,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("ownerAccount" Core..=) Prelude.<$> ownerAccount,
            ("startTime" Core..=) Prelude.<$> startTime
          ]
      )

instance Core.ToPath ListSnapshots where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSnapshots where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSnapshotsResponse' smart constructor.
data ListSnapshotsResponse = ListSnapshotsResponse'
  { -- | If @nextToken@ is returned, there are more results available. The value
    -- of @nextToken@ is a unique pagination token for each page. Make the call
    -- again using the returned token to retrieve the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | All of the returned snapshot objects.
    snapshots :: Prelude.Maybe [Snapshot],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSnapshotsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSnapshotsResponse_nextToken' - If @nextToken@ is returned, there are more results available. The value
-- of @nextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page.
--
-- 'snapshots', 'listSnapshotsResponse_snapshots' - All of the returned snapshot objects.
--
-- 'httpStatus', 'listSnapshotsResponse_httpStatus' - The response's http status code.
newListSnapshotsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSnapshotsResponse
newListSnapshotsResponse pHttpStatus_ =
  ListSnapshotsResponse'
    { nextToken = Prelude.Nothing,
      snapshots = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If @nextToken@ is returned, there are more results available. The value
-- of @nextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page.
listSnapshotsResponse_nextToken :: Lens.Lens' ListSnapshotsResponse (Prelude.Maybe Prelude.Text)
listSnapshotsResponse_nextToken = Lens.lens (\ListSnapshotsResponse' {nextToken} -> nextToken) (\s@ListSnapshotsResponse' {} a -> s {nextToken = a} :: ListSnapshotsResponse)

-- | All of the returned snapshot objects.
listSnapshotsResponse_snapshots :: Lens.Lens' ListSnapshotsResponse (Prelude.Maybe [Snapshot])
listSnapshotsResponse_snapshots = Lens.lens (\ListSnapshotsResponse' {snapshots} -> snapshots) (\s@ListSnapshotsResponse' {} a -> s {snapshots = a} :: ListSnapshotsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listSnapshotsResponse_httpStatus :: Lens.Lens' ListSnapshotsResponse Prelude.Int
listSnapshotsResponse_httpStatus = Lens.lens (\ListSnapshotsResponse' {httpStatus} -> httpStatus) (\s@ListSnapshotsResponse' {} a -> s {httpStatus = a} :: ListSnapshotsResponse)

instance Prelude.NFData ListSnapshotsResponse where
  rnf ListSnapshotsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf snapshots
      `Prelude.seq` Prelude.rnf httpStatus
