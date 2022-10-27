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
-- Module      : Amazonka.Config.StopConfigurationRecorder
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops recording configurations of the Amazon Web Services resources you
-- have selected to record in your Amazon Web Services account.
module Amazonka.Config.StopConfigurationRecorder
  ( -- * Creating a Request
    StopConfigurationRecorder (..),
    newStopConfigurationRecorder,

    -- * Request Lenses
    stopConfigurationRecorder_configurationRecorderName,

    -- * Destructuring the Response
    StopConfigurationRecorderResponse (..),
    newStopConfigurationRecorderResponse,
  )
where

import Amazonka.Config.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The input for the StopConfigurationRecorder action.
--
-- /See:/ 'newStopConfigurationRecorder' smart constructor.
data StopConfigurationRecorder = StopConfigurationRecorder'
  { -- | The name of the recorder object that records each configuration change
    -- made to the resources.
    configurationRecorderName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopConfigurationRecorder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationRecorderName', 'stopConfigurationRecorder_configurationRecorderName' - The name of the recorder object that records each configuration change
-- made to the resources.
newStopConfigurationRecorder ::
  -- | 'configurationRecorderName'
  Prelude.Text ->
  StopConfigurationRecorder
newStopConfigurationRecorder
  pConfigurationRecorderName_ =
    StopConfigurationRecorder'
      { configurationRecorderName =
          pConfigurationRecorderName_
      }

-- | The name of the recorder object that records each configuration change
-- made to the resources.
stopConfigurationRecorder_configurationRecorderName :: Lens.Lens' StopConfigurationRecorder Prelude.Text
stopConfigurationRecorder_configurationRecorderName = Lens.lens (\StopConfigurationRecorder' {configurationRecorderName} -> configurationRecorderName) (\s@StopConfigurationRecorder' {} a -> s {configurationRecorderName = a} :: StopConfigurationRecorder)

instance Core.AWSRequest StopConfigurationRecorder where
  type
    AWSResponse StopConfigurationRecorder =
      StopConfigurationRecorderResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull
      StopConfigurationRecorderResponse'

instance Prelude.Hashable StopConfigurationRecorder where
  hashWithSalt _salt StopConfigurationRecorder' {..} =
    _salt
      `Prelude.hashWithSalt` configurationRecorderName

instance Prelude.NFData StopConfigurationRecorder where
  rnf StopConfigurationRecorder' {..} =
    Prelude.rnf configurationRecorderName

instance Core.ToHeaders StopConfigurationRecorder where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.StopConfigurationRecorder" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopConfigurationRecorder where
  toJSON StopConfigurationRecorder' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ConfigurationRecorderName"
                  Core..= configurationRecorderName
              )
          ]
      )

instance Core.ToPath StopConfigurationRecorder where
  toPath = Prelude.const "/"

instance Core.ToQuery StopConfigurationRecorder where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopConfigurationRecorderResponse' smart constructor.
data StopConfigurationRecorderResponse = StopConfigurationRecorderResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopConfigurationRecorderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newStopConfigurationRecorderResponse ::
  StopConfigurationRecorderResponse
newStopConfigurationRecorderResponse =
  StopConfigurationRecorderResponse'

instance
  Prelude.NFData
    StopConfigurationRecorderResponse
  where
  rnf _ = ()
