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
-- Module      : Amazonka.IoT1ClickDevices.InvokeDeviceMethod
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given a device ID, issues a request to invoke a named device method
-- (with possible parameters). See the \"Example POST\" code snippet below.
module Amazonka.IoT1ClickDevices.InvokeDeviceMethod
  ( -- * Creating a Request
    InvokeDeviceMethod (..),
    newInvokeDeviceMethod,

    -- * Request Lenses
    invokeDeviceMethod_deviceMethodParameters,
    invokeDeviceMethod_deviceMethod,
    invokeDeviceMethod_deviceId,

    -- * Destructuring the Response
    InvokeDeviceMethodResponse (..),
    newInvokeDeviceMethodResponse,

    -- * Response Lenses
    invokeDeviceMethodResponse_deviceMethodResponse,
    invokeDeviceMethodResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT1ClickDevices.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newInvokeDeviceMethod' smart constructor.
data InvokeDeviceMethod = InvokeDeviceMethod'
  { -- | A JSON encoded string containing the device method request parameters.
    deviceMethodParameters :: Prelude.Maybe Prelude.Text,
    -- | The device method to invoke.
    deviceMethod :: Prelude.Maybe DeviceMethod,
    -- | The unique identifier of the device.
    deviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeDeviceMethod' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceMethodParameters', 'invokeDeviceMethod_deviceMethodParameters' - A JSON encoded string containing the device method request parameters.
--
-- 'deviceMethod', 'invokeDeviceMethod_deviceMethod' - The device method to invoke.
--
-- 'deviceId', 'invokeDeviceMethod_deviceId' - The unique identifier of the device.
newInvokeDeviceMethod ::
  -- | 'deviceId'
  Prelude.Text ->
  InvokeDeviceMethod
newInvokeDeviceMethod pDeviceId_ =
  InvokeDeviceMethod'
    { deviceMethodParameters =
        Prelude.Nothing,
      deviceMethod = Prelude.Nothing,
      deviceId = pDeviceId_
    }

-- | A JSON encoded string containing the device method request parameters.
invokeDeviceMethod_deviceMethodParameters :: Lens.Lens' InvokeDeviceMethod (Prelude.Maybe Prelude.Text)
invokeDeviceMethod_deviceMethodParameters = Lens.lens (\InvokeDeviceMethod' {deviceMethodParameters} -> deviceMethodParameters) (\s@InvokeDeviceMethod' {} a -> s {deviceMethodParameters = a} :: InvokeDeviceMethod)

-- | The device method to invoke.
invokeDeviceMethod_deviceMethod :: Lens.Lens' InvokeDeviceMethod (Prelude.Maybe DeviceMethod)
invokeDeviceMethod_deviceMethod = Lens.lens (\InvokeDeviceMethod' {deviceMethod} -> deviceMethod) (\s@InvokeDeviceMethod' {} a -> s {deviceMethod = a} :: InvokeDeviceMethod)

-- | The unique identifier of the device.
invokeDeviceMethod_deviceId :: Lens.Lens' InvokeDeviceMethod Prelude.Text
invokeDeviceMethod_deviceId = Lens.lens (\InvokeDeviceMethod' {deviceId} -> deviceId) (\s@InvokeDeviceMethod' {} a -> s {deviceId = a} :: InvokeDeviceMethod)

instance Core.AWSRequest InvokeDeviceMethod where
  type
    AWSResponse InvokeDeviceMethod =
      InvokeDeviceMethodResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          InvokeDeviceMethodResponse'
            Prelude.<$> (x Core..?> "deviceMethodResponse")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable InvokeDeviceMethod where
  hashWithSalt _salt InvokeDeviceMethod' {..} =
    _salt `Prelude.hashWithSalt` deviceMethodParameters
      `Prelude.hashWithSalt` deviceMethod
      `Prelude.hashWithSalt` deviceId

instance Prelude.NFData InvokeDeviceMethod where
  rnf InvokeDeviceMethod' {..} =
    Prelude.rnf deviceMethodParameters
      `Prelude.seq` Prelude.rnf deviceMethod
      `Prelude.seq` Prelude.rnf deviceId

instance Core.ToHeaders InvokeDeviceMethod where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON InvokeDeviceMethod where
  toJSON InvokeDeviceMethod' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("deviceMethodParameters" Core..=)
              Prelude.<$> deviceMethodParameters,
            ("deviceMethod" Core..=) Prelude.<$> deviceMethod
          ]
      )

instance Core.ToPath InvokeDeviceMethod where
  toPath InvokeDeviceMethod' {..} =
    Prelude.mconcat
      ["/devices/", Core.toBS deviceId, "/methods"]

instance Core.ToQuery InvokeDeviceMethod where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newInvokeDeviceMethodResponse' smart constructor.
data InvokeDeviceMethodResponse = InvokeDeviceMethodResponse'
  { -- | A JSON encoded string containing the device method response.
    deviceMethodResponse :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeDeviceMethodResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceMethodResponse', 'invokeDeviceMethodResponse_deviceMethodResponse' - A JSON encoded string containing the device method response.
--
-- 'httpStatus', 'invokeDeviceMethodResponse_httpStatus' - The response's http status code.
newInvokeDeviceMethodResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  InvokeDeviceMethodResponse
newInvokeDeviceMethodResponse pHttpStatus_ =
  InvokeDeviceMethodResponse'
    { deviceMethodResponse =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A JSON encoded string containing the device method response.
invokeDeviceMethodResponse_deviceMethodResponse :: Lens.Lens' InvokeDeviceMethodResponse (Prelude.Maybe Prelude.Text)
invokeDeviceMethodResponse_deviceMethodResponse = Lens.lens (\InvokeDeviceMethodResponse' {deviceMethodResponse} -> deviceMethodResponse) (\s@InvokeDeviceMethodResponse' {} a -> s {deviceMethodResponse = a} :: InvokeDeviceMethodResponse)

-- | The response's http status code.
invokeDeviceMethodResponse_httpStatus :: Lens.Lens' InvokeDeviceMethodResponse Prelude.Int
invokeDeviceMethodResponse_httpStatus = Lens.lens (\InvokeDeviceMethodResponse' {httpStatus} -> httpStatus) (\s@InvokeDeviceMethodResponse' {} a -> s {httpStatus = a} :: InvokeDeviceMethodResponse)

instance Prelude.NFData InvokeDeviceMethodResponse where
  rnf InvokeDeviceMethodResponse' {..} =
    Prelude.rnf deviceMethodResponse
      `Prelude.seq` Prelude.rnf httpStatus
