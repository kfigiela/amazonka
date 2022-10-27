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
-- Module      : Amazonka.RDS.SwitchoverReadReplica
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Switches over an Oracle standby database in an Oracle Data Guard
-- environment, making it the new primary database. Issue this command in
-- the Region that hosts the current standby database.
module Amazonka.RDS.SwitchoverReadReplica
  ( -- * Creating a Request
    SwitchoverReadReplica (..),
    newSwitchoverReadReplica,

    -- * Request Lenses
    switchoverReadReplica_dbInstanceIdentifier,

    -- * Destructuring the Response
    SwitchoverReadReplicaResponse (..),
    newSwitchoverReadReplicaResponse,

    -- * Response Lenses
    switchoverReadReplicaResponse_dbInstance,
    switchoverReadReplicaResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newSwitchoverReadReplica' smart constructor.
data SwitchoverReadReplica = SwitchoverReadReplica'
  { -- | The DB instance identifier of the current standby database. This value
    -- is stored as a lowercase string.
    --
    -- Constraints:
    --
    -- -   Must match the identiﬁer of an existing Oracle read replica DB
    --     instance.
    dbInstanceIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SwitchoverReadReplica' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbInstanceIdentifier', 'switchoverReadReplica_dbInstanceIdentifier' - The DB instance identifier of the current standby database. This value
-- is stored as a lowercase string.
--
-- Constraints:
--
-- -   Must match the identiﬁer of an existing Oracle read replica DB
--     instance.
newSwitchoverReadReplica ::
  -- | 'dbInstanceIdentifier'
  Prelude.Text ->
  SwitchoverReadReplica
newSwitchoverReadReplica pDBInstanceIdentifier_ =
  SwitchoverReadReplica'
    { dbInstanceIdentifier =
        pDBInstanceIdentifier_
    }

-- | The DB instance identifier of the current standby database. This value
-- is stored as a lowercase string.
--
-- Constraints:
--
-- -   Must match the identiﬁer of an existing Oracle read replica DB
--     instance.
switchoverReadReplica_dbInstanceIdentifier :: Lens.Lens' SwitchoverReadReplica Prelude.Text
switchoverReadReplica_dbInstanceIdentifier = Lens.lens (\SwitchoverReadReplica' {dbInstanceIdentifier} -> dbInstanceIdentifier) (\s@SwitchoverReadReplica' {} a -> s {dbInstanceIdentifier = a} :: SwitchoverReadReplica)

instance Core.AWSRequest SwitchoverReadReplica where
  type
    AWSResponse SwitchoverReadReplica =
      SwitchoverReadReplicaResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "SwitchoverReadReplicaResult"
      ( \s h x ->
          SwitchoverReadReplicaResponse'
            Prelude.<$> (x Core..@? "DBInstance")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SwitchoverReadReplica where
  hashWithSalt _salt SwitchoverReadReplica' {..} =
    _salt `Prelude.hashWithSalt` dbInstanceIdentifier

instance Prelude.NFData SwitchoverReadReplica where
  rnf SwitchoverReadReplica' {..} =
    Prelude.rnf dbInstanceIdentifier

instance Core.ToHeaders SwitchoverReadReplica where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath SwitchoverReadReplica where
  toPath = Prelude.const "/"

instance Core.ToQuery SwitchoverReadReplica where
  toQuery SwitchoverReadReplica' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("SwitchoverReadReplica" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBInstanceIdentifier" Core.=: dbInstanceIdentifier
      ]

-- | /See:/ 'newSwitchoverReadReplicaResponse' smart constructor.
data SwitchoverReadReplicaResponse = SwitchoverReadReplicaResponse'
  { dbInstance :: Prelude.Maybe DBInstance,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SwitchoverReadReplicaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbInstance', 'switchoverReadReplicaResponse_dbInstance' - Undocumented member.
--
-- 'httpStatus', 'switchoverReadReplicaResponse_httpStatus' - The response's http status code.
newSwitchoverReadReplicaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SwitchoverReadReplicaResponse
newSwitchoverReadReplicaResponse pHttpStatus_ =
  SwitchoverReadReplicaResponse'
    { dbInstance =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
switchoverReadReplicaResponse_dbInstance :: Lens.Lens' SwitchoverReadReplicaResponse (Prelude.Maybe DBInstance)
switchoverReadReplicaResponse_dbInstance = Lens.lens (\SwitchoverReadReplicaResponse' {dbInstance} -> dbInstance) (\s@SwitchoverReadReplicaResponse' {} a -> s {dbInstance = a} :: SwitchoverReadReplicaResponse)

-- | The response's http status code.
switchoverReadReplicaResponse_httpStatus :: Lens.Lens' SwitchoverReadReplicaResponse Prelude.Int
switchoverReadReplicaResponse_httpStatus = Lens.lens (\SwitchoverReadReplicaResponse' {httpStatus} -> httpStatus) (\s@SwitchoverReadReplicaResponse' {} a -> s {httpStatus = a} :: SwitchoverReadReplicaResponse)

instance Prelude.NFData SwitchoverReadReplicaResponse where
  rnf SwitchoverReadReplicaResponse' {..} =
    Prelude.rnf dbInstance
      `Prelude.seq` Prelude.rnf httpStatus
