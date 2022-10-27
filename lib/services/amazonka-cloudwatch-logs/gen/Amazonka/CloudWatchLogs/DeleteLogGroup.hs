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
-- Module      : Amazonka.CloudWatchLogs.DeleteLogGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified log group and permanently deletes all the archived
-- log events associated with the log group.
module Amazonka.CloudWatchLogs.DeleteLogGroup
  ( -- * Creating a Request
    DeleteLogGroup (..),
    newDeleteLogGroup,

    -- * Request Lenses
    deleteLogGroup_logGroupName,

    -- * Destructuring the Response
    DeleteLogGroupResponse (..),
    newDeleteLogGroupResponse,
  )
where

import Amazonka.CloudWatchLogs.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteLogGroup' smart constructor.
data DeleteLogGroup = DeleteLogGroup'
  { -- | The name of the log group.
    logGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLogGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logGroupName', 'deleteLogGroup_logGroupName' - The name of the log group.
newDeleteLogGroup ::
  -- | 'logGroupName'
  Prelude.Text ->
  DeleteLogGroup
newDeleteLogGroup pLogGroupName_ =
  DeleteLogGroup' {logGroupName = pLogGroupName_}

-- | The name of the log group.
deleteLogGroup_logGroupName :: Lens.Lens' DeleteLogGroup Prelude.Text
deleteLogGroup_logGroupName = Lens.lens (\DeleteLogGroup' {logGroupName} -> logGroupName) (\s@DeleteLogGroup' {} a -> s {logGroupName = a} :: DeleteLogGroup)

instance Core.AWSRequest DeleteLogGroup where
  type
    AWSResponse DeleteLogGroup =
      DeleteLogGroupResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull DeleteLogGroupResponse'

instance Prelude.Hashable DeleteLogGroup where
  hashWithSalt _salt DeleteLogGroup' {..} =
    _salt `Prelude.hashWithSalt` logGroupName

instance Prelude.NFData DeleteLogGroup where
  rnf DeleteLogGroup' {..} = Prelude.rnf logGroupName

instance Core.ToHeaders DeleteLogGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Logs_20140328.DeleteLogGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteLogGroup where
  toJSON DeleteLogGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("logGroupName" Core..= logGroupName)]
      )

instance Core.ToPath DeleteLogGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteLogGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLogGroupResponse' smart constructor.
data DeleteLogGroupResponse = DeleteLogGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLogGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteLogGroupResponse ::
  DeleteLogGroupResponse
newDeleteLogGroupResponse = DeleteLogGroupResponse'

instance Prelude.NFData DeleteLogGroupResponse where
  rnf _ = ()
