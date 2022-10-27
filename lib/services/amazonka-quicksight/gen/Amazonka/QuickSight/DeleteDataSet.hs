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
-- Module      : Amazonka.QuickSight.DeleteDataSet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dataset.
module Amazonka.QuickSight.DeleteDataSet
  ( -- * Creating a Request
    DeleteDataSet (..),
    newDeleteDataSet,

    -- * Request Lenses
    deleteDataSet_awsAccountId,
    deleteDataSet_dataSetId,

    -- * Destructuring the Response
    DeleteDataSetResponse (..),
    newDeleteDataSetResponse,

    -- * Response Lenses
    deleteDataSetResponse_requestId,
    deleteDataSetResponse_arn,
    deleteDataSetResponse_dataSetId,
    deleteDataSetResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteDataSet' smart constructor.
data DeleteDataSet = DeleteDataSet'
  { -- | The Amazon Web Services account ID.
    awsAccountId :: Prelude.Text,
    -- | The ID for the dataset that you want to create. This ID is unique per
    -- Amazon Web Services Region for each Amazon Web Services account.
    dataSetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDataSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'deleteDataSet_awsAccountId' - The Amazon Web Services account ID.
--
-- 'dataSetId', 'deleteDataSet_dataSetId' - The ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
newDeleteDataSet ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  DeleteDataSet
newDeleteDataSet pAwsAccountId_ pDataSetId_ =
  DeleteDataSet'
    { awsAccountId = pAwsAccountId_,
      dataSetId = pDataSetId_
    }

-- | The Amazon Web Services account ID.
deleteDataSet_awsAccountId :: Lens.Lens' DeleteDataSet Prelude.Text
deleteDataSet_awsAccountId = Lens.lens (\DeleteDataSet' {awsAccountId} -> awsAccountId) (\s@DeleteDataSet' {} a -> s {awsAccountId = a} :: DeleteDataSet)

-- | The ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
deleteDataSet_dataSetId :: Lens.Lens' DeleteDataSet Prelude.Text
deleteDataSet_dataSetId = Lens.lens (\DeleteDataSet' {dataSetId} -> dataSetId) (\s@DeleteDataSet' {} a -> s {dataSetId = a} :: DeleteDataSet)

instance Core.AWSRequest DeleteDataSet where
  type
    AWSResponse DeleteDataSet =
      DeleteDataSetResponse
  service _ = defaultService
  request srv = Request.delete srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteDataSetResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "DataSetId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDataSet where
  hashWithSalt _salt DeleteDataSet' {..} =
    _salt `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` dataSetId

instance Prelude.NFData DeleteDataSet where
  rnf DeleteDataSet' {..} =
    Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf dataSetId

instance Core.ToHeaders DeleteDataSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDataSet where
  toPath DeleteDataSet' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/data-sets/",
        Core.toBS dataSetId
      ]

instance Core.ToQuery DeleteDataSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDataSetResponse' smart constructor.
data DeleteDataSetResponse = DeleteDataSetResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the dataset.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID for the dataset that you want to create. This ID is unique per
    -- Amazon Web Services Region for each Amazon Web Services account.
    dataSetId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDataSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteDataSetResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'deleteDataSetResponse_arn' - The Amazon Resource Name (ARN) of the dataset.
--
-- 'dataSetId', 'deleteDataSetResponse_dataSetId' - The ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
--
-- 'status', 'deleteDataSetResponse_status' - The HTTP status of the request.
newDeleteDataSetResponse ::
  -- | 'status'
  Prelude.Int ->
  DeleteDataSetResponse
newDeleteDataSetResponse pStatus_ =
  DeleteDataSetResponse'
    { requestId = Prelude.Nothing,
      arn = Prelude.Nothing,
      dataSetId = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
deleteDataSetResponse_requestId :: Lens.Lens' DeleteDataSetResponse (Prelude.Maybe Prelude.Text)
deleteDataSetResponse_requestId = Lens.lens (\DeleteDataSetResponse' {requestId} -> requestId) (\s@DeleteDataSetResponse' {} a -> s {requestId = a} :: DeleteDataSetResponse)

-- | The Amazon Resource Name (ARN) of the dataset.
deleteDataSetResponse_arn :: Lens.Lens' DeleteDataSetResponse (Prelude.Maybe Prelude.Text)
deleteDataSetResponse_arn = Lens.lens (\DeleteDataSetResponse' {arn} -> arn) (\s@DeleteDataSetResponse' {} a -> s {arn = a} :: DeleteDataSetResponse)

-- | The ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
deleteDataSetResponse_dataSetId :: Lens.Lens' DeleteDataSetResponse (Prelude.Maybe Prelude.Text)
deleteDataSetResponse_dataSetId = Lens.lens (\DeleteDataSetResponse' {dataSetId} -> dataSetId) (\s@DeleteDataSetResponse' {} a -> s {dataSetId = a} :: DeleteDataSetResponse)

-- | The HTTP status of the request.
deleteDataSetResponse_status :: Lens.Lens' DeleteDataSetResponse Prelude.Int
deleteDataSetResponse_status = Lens.lens (\DeleteDataSetResponse' {status} -> status) (\s@DeleteDataSetResponse' {} a -> s {status = a} :: DeleteDataSetResponse)

instance Prelude.NFData DeleteDataSetResponse where
  rnf DeleteDataSetResponse' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf dataSetId
      `Prelude.seq` Prelude.rnf status
