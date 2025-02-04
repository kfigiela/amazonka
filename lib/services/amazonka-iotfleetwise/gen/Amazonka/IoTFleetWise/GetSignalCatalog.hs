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
-- Module      : Amazonka.IoTFleetWise.GetSignalCatalog
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a signal catalog.
module Amazonka.IoTFleetWise.GetSignalCatalog
  ( -- * Creating a Request
    GetSignalCatalog (..),
    newGetSignalCatalog,

    -- * Request Lenses
    getSignalCatalog_name,

    -- * Destructuring the Response
    GetSignalCatalogResponse (..),
    newGetSignalCatalogResponse,

    -- * Response Lenses
    getSignalCatalogResponse_nodeCounts,
    getSignalCatalogResponse_description,
    getSignalCatalogResponse_httpStatus,
    getSignalCatalogResponse_name,
    getSignalCatalogResponse_arn,
    getSignalCatalogResponse_creationTime,
    getSignalCatalogResponse_lastModificationTime,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTFleetWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetSignalCatalog' smart constructor.
data GetSignalCatalog = GetSignalCatalog'
  { -- | The name of the signal catalog to retrieve information about.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSignalCatalog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getSignalCatalog_name' - The name of the signal catalog to retrieve information about.
newGetSignalCatalog ::
  -- | 'name'
  Prelude.Text ->
  GetSignalCatalog
newGetSignalCatalog pName_ =
  GetSignalCatalog' {name = pName_}

-- | The name of the signal catalog to retrieve information about.
getSignalCatalog_name :: Lens.Lens' GetSignalCatalog Prelude.Text
getSignalCatalog_name = Lens.lens (\GetSignalCatalog' {name} -> name) (\s@GetSignalCatalog' {} a -> s {name = a} :: GetSignalCatalog)

instance Core.AWSRequest GetSignalCatalog where
  type
    AWSResponse GetSignalCatalog =
      GetSignalCatalogResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSignalCatalogResponse'
            Prelude.<$> (x Core..?> "nodeCounts")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "name")
            Prelude.<*> (x Core..:> "arn")
            Prelude.<*> (x Core..:> "creationTime")
            Prelude.<*> (x Core..:> "lastModificationTime")
      )

instance Prelude.Hashable GetSignalCatalog where
  hashWithSalt _salt GetSignalCatalog' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData GetSignalCatalog where
  rnf GetSignalCatalog' {..} = Prelude.rnf name

instance Core.ToHeaders GetSignalCatalog where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "IoTAutobahnControlPlane.GetSignalCatalog" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetSignalCatalog where
  toJSON GetSignalCatalog' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath GetSignalCatalog where
  toPath = Prelude.const "/"

instance Core.ToQuery GetSignalCatalog where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSignalCatalogResponse' smart constructor.
data GetSignalCatalogResponse = GetSignalCatalogResponse'
  { -- | The total number of network nodes specified in a signal catalog.
    nodeCounts :: Prelude.Maybe NodeCounts,
    -- | A brief description of the signal catalog.
    description :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the signal catalog.
    name :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the signal catalog.
    arn :: Prelude.Text,
    -- | The time the signal catalog was created in seconds since epoch (January
    -- 1, 1970 at midnight UTC time).
    creationTime :: Core.POSIX,
    -- | The last time the signal catalog was modified.
    lastModificationTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSignalCatalogResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nodeCounts', 'getSignalCatalogResponse_nodeCounts' - The total number of network nodes specified in a signal catalog.
--
-- 'description', 'getSignalCatalogResponse_description' - A brief description of the signal catalog.
--
-- 'httpStatus', 'getSignalCatalogResponse_httpStatus' - The response's http status code.
--
-- 'name', 'getSignalCatalogResponse_name' - The name of the signal catalog.
--
-- 'arn', 'getSignalCatalogResponse_arn' - The Amazon Resource Name (ARN) of the signal catalog.
--
-- 'creationTime', 'getSignalCatalogResponse_creationTime' - The time the signal catalog was created in seconds since epoch (January
-- 1, 1970 at midnight UTC time).
--
-- 'lastModificationTime', 'getSignalCatalogResponse_lastModificationTime' - The last time the signal catalog was modified.
newGetSignalCatalogResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'creationTime'
  Prelude.UTCTime ->
  -- | 'lastModificationTime'
  Prelude.UTCTime ->
  GetSignalCatalogResponse
newGetSignalCatalogResponse
  pHttpStatus_
  pName_
  pArn_
  pCreationTime_
  pLastModificationTime_ =
    GetSignalCatalogResponse'
      { nodeCounts =
          Prelude.Nothing,
        description = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        name = pName_,
        arn = pArn_,
        creationTime = Core._Time Lens.# pCreationTime_,
        lastModificationTime =
          Core._Time Lens.# pLastModificationTime_
      }

-- | The total number of network nodes specified in a signal catalog.
getSignalCatalogResponse_nodeCounts :: Lens.Lens' GetSignalCatalogResponse (Prelude.Maybe NodeCounts)
getSignalCatalogResponse_nodeCounts = Lens.lens (\GetSignalCatalogResponse' {nodeCounts} -> nodeCounts) (\s@GetSignalCatalogResponse' {} a -> s {nodeCounts = a} :: GetSignalCatalogResponse)

-- | A brief description of the signal catalog.
getSignalCatalogResponse_description :: Lens.Lens' GetSignalCatalogResponse (Prelude.Maybe Prelude.Text)
getSignalCatalogResponse_description = Lens.lens (\GetSignalCatalogResponse' {description} -> description) (\s@GetSignalCatalogResponse' {} a -> s {description = a} :: GetSignalCatalogResponse)

-- | The response's http status code.
getSignalCatalogResponse_httpStatus :: Lens.Lens' GetSignalCatalogResponse Prelude.Int
getSignalCatalogResponse_httpStatus = Lens.lens (\GetSignalCatalogResponse' {httpStatus} -> httpStatus) (\s@GetSignalCatalogResponse' {} a -> s {httpStatus = a} :: GetSignalCatalogResponse)

-- | The name of the signal catalog.
getSignalCatalogResponse_name :: Lens.Lens' GetSignalCatalogResponse Prelude.Text
getSignalCatalogResponse_name = Lens.lens (\GetSignalCatalogResponse' {name} -> name) (\s@GetSignalCatalogResponse' {} a -> s {name = a} :: GetSignalCatalogResponse)

-- | The Amazon Resource Name (ARN) of the signal catalog.
getSignalCatalogResponse_arn :: Lens.Lens' GetSignalCatalogResponse Prelude.Text
getSignalCatalogResponse_arn = Lens.lens (\GetSignalCatalogResponse' {arn} -> arn) (\s@GetSignalCatalogResponse' {} a -> s {arn = a} :: GetSignalCatalogResponse)

-- | The time the signal catalog was created in seconds since epoch (January
-- 1, 1970 at midnight UTC time).
getSignalCatalogResponse_creationTime :: Lens.Lens' GetSignalCatalogResponse Prelude.UTCTime
getSignalCatalogResponse_creationTime = Lens.lens (\GetSignalCatalogResponse' {creationTime} -> creationTime) (\s@GetSignalCatalogResponse' {} a -> s {creationTime = a} :: GetSignalCatalogResponse) Prelude.. Core._Time

-- | The last time the signal catalog was modified.
getSignalCatalogResponse_lastModificationTime :: Lens.Lens' GetSignalCatalogResponse Prelude.UTCTime
getSignalCatalogResponse_lastModificationTime = Lens.lens (\GetSignalCatalogResponse' {lastModificationTime} -> lastModificationTime) (\s@GetSignalCatalogResponse' {} a -> s {lastModificationTime = a} :: GetSignalCatalogResponse) Prelude.. Core._Time

instance Prelude.NFData GetSignalCatalogResponse where
  rnf GetSignalCatalogResponse' {..} =
    Prelude.rnf nodeCounts
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf lastModificationTime
