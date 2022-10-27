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
-- Module      : Amazonka.Transfer.StartServer
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the state of a file transfer protocol-enabled server from
-- @OFFLINE@ to @ONLINE@. It has no impact on a server that is already
-- @ONLINE@. An @ONLINE@ server can accept and process file transfer jobs.
--
-- The state of @STARTING@ indicates that the server is in an intermediate
-- state, either not fully able to respond, or not fully online. The values
-- of @START_FAILED@ can indicate an error condition.
--
-- No response is returned from this call.
module Amazonka.Transfer.StartServer
  ( -- * Creating a Request
    StartServer (..),
    newStartServer,

    -- * Request Lenses
    startServer_serverId,

    -- * Destructuring the Response
    StartServerResponse (..),
    newStartServerResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transfer.Types

-- | /See:/ 'newStartServer' smart constructor.
data StartServer = StartServer'
  { -- | A system-assigned unique identifier for a server that you start.
    serverId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartServer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverId', 'startServer_serverId' - A system-assigned unique identifier for a server that you start.
newStartServer ::
  -- | 'serverId'
  Prelude.Text ->
  StartServer
newStartServer pServerId_ =
  StartServer' {serverId = pServerId_}

-- | A system-assigned unique identifier for a server that you start.
startServer_serverId :: Lens.Lens' StartServer Prelude.Text
startServer_serverId = Lens.lens (\StartServer' {serverId} -> serverId) (\s@StartServer' {} a -> s {serverId = a} :: StartServer)

instance Core.AWSRequest StartServer where
  type AWSResponse StartServer = StartServerResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response = Response.receiveNull StartServerResponse'

instance Prelude.Hashable StartServer where
  hashWithSalt _salt StartServer' {..} =
    _salt `Prelude.hashWithSalt` serverId

instance Prelude.NFData StartServer where
  rnf StartServer' {..} = Prelude.rnf serverId

instance Core.ToHeaders StartServer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.StartServer" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartServer where
  toJSON StartServer' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ServerId" Core..= serverId)]
      )

instance Core.ToPath StartServer where
  toPath = Prelude.const "/"

instance Core.ToQuery StartServer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartServerResponse' smart constructor.
data StartServerResponse = StartServerResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartServerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newStartServerResponse ::
  StartServerResponse
newStartServerResponse = StartServerResponse'

instance Prelude.NFData StartServerResponse where
  rnf _ = ()
