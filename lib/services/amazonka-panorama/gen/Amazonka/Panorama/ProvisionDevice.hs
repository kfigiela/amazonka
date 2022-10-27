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
-- Module      : Amazonka.Panorama.ProvisionDevice
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device and returns a configuration archive. The configuration
-- archive is a ZIP file that contains a provisioning certificate that is
-- valid for 5 minutes. Name the configuration archive
-- @certificates-omni_device-name.zip@ and transfer it to the device within
-- 5 minutes. Use the included USB storage device and connect it to the USB
-- 3.0 port next to the HDMI output.
module Amazonka.Panorama.ProvisionDevice
  ( -- * Creating a Request
    ProvisionDevice (..),
    newProvisionDevice,

    -- * Request Lenses
    provisionDevice_tags,
    provisionDevice_networkingConfiguration,
    provisionDevice_description,
    provisionDevice_name,

    -- * Destructuring the Response
    ProvisionDeviceResponse (..),
    newProvisionDeviceResponse,

    -- * Response Lenses
    provisionDeviceResponse_deviceId,
    provisionDeviceResponse_iotThingName,
    provisionDeviceResponse_certificates,
    provisionDeviceResponse_httpStatus,
    provisionDeviceResponse_arn,
    provisionDeviceResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Panorama.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newProvisionDevice' smart constructor.
data ProvisionDevice = ProvisionDevice'
  { -- | Tags for the device.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A networking configuration for the device.
    networkingConfiguration :: Prelude.Maybe NetworkPayload,
    -- | A description for the device.
    description :: Prelude.Maybe Prelude.Text,
    -- | A name for the device.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'provisionDevice_tags' - Tags for the device.
--
-- 'networkingConfiguration', 'provisionDevice_networkingConfiguration' - A networking configuration for the device.
--
-- 'description', 'provisionDevice_description' - A description for the device.
--
-- 'name', 'provisionDevice_name' - A name for the device.
newProvisionDevice ::
  -- | 'name'
  Prelude.Text ->
  ProvisionDevice
newProvisionDevice pName_ =
  ProvisionDevice'
    { tags = Prelude.Nothing,
      networkingConfiguration = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_
    }

-- | Tags for the device.
provisionDevice_tags :: Lens.Lens' ProvisionDevice (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
provisionDevice_tags = Lens.lens (\ProvisionDevice' {tags} -> tags) (\s@ProvisionDevice' {} a -> s {tags = a} :: ProvisionDevice) Prelude.. Lens.mapping Lens.coerced

-- | A networking configuration for the device.
provisionDevice_networkingConfiguration :: Lens.Lens' ProvisionDevice (Prelude.Maybe NetworkPayload)
provisionDevice_networkingConfiguration = Lens.lens (\ProvisionDevice' {networkingConfiguration} -> networkingConfiguration) (\s@ProvisionDevice' {} a -> s {networkingConfiguration = a} :: ProvisionDevice)

-- | A description for the device.
provisionDevice_description :: Lens.Lens' ProvisionDevice (Prelude.Maybe Prelude.Text)
provisionDevice_description = Lens.lens (\ProvisionDevice' {description} -> description) (\s@ProvisionDevice' {} a -> s {description = a} :: ProvisionDevice)

-- | A name for the device.
provisionDevice_name :: Lens.Lens' ProvisionDevice Prelude.Text
provisionDevice_name = Lens.lens (\ProvisionDevice' {name} -> name) (\s@ProvisionDevice' {} a -> s {name = a} :: ProvisionDevice)

instance Core.AWSRequest ProvisionDevice where
  type
    AWSResponse ProvisionDevice =
      ProvisionDeviceResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ProvisionDeviceResponse'
            Prelude.<$> (x Core..?> "DeviceId")
            Prelude.<*> (x Core..?> "IotThingName")
            Prelude.<*> (x Core..?> "Certificates")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Arn")
            Prelude.<*> (x Core..:> "Status")
      )

instance Prelude.Hashable ProvisionDevice where
  hashWithSalt _salt ProvisionDevice' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` networkingConfiguration
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name

instance Prelude.NFData ProvisionDevice where
  rnf ProvisionDevice' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf networkingConfiguration
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders ProvisionDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ProvisionDevice where
  toJSON ProvisionDevice' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("NetworkingConfiguration" Core..=)
              Prelude.<$> networkingConfiguration,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath ProvisionDevice where
  toPath = Prelude.const "/devices"

instance Core.ToQuery ProvisionDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newProvisionDeviceResponse' smart constructor.
data ProvisionDeviceResponse = ProvisionDeviceResponse'
  { -- | The device\'s ID.
    deviceId :: Prelude.Maybe Prelude.Text,
    -- | The device\'s IoT thing name.
    iotThingName :: Prelude.Maybe Prelude.Text,
    -- | The device\'s configuration bundle.
    certificates :: Prelude.Maybe Core.Base64,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The device\'s ARN.
    arn :: Prelude.Text,
    -- | The device\'s status.
    status :: DeviceStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceId', 'provisionDeviceResponse_deviceId' - The device\'s ID.
--
-- 'iotThingName', 'provisionDeviceResponse_iotThingName' - The device\'s IoT thing name.
--
-- 'certificates', 'provisionDeviceResponse_certificates' - The device\'s configuration bundle.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'httpStatus', 'provisionDeviceResponse_httpStatus' - The response's http status code.
--
-- 'arn', 'provisionDeviceResponse_arn' - The device\'s ARN.
--
-- 'status', 'provisionDeviceResponse_status' - The device\'s status.
newProvisionDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'status'
  DeviceStatus ->
  ProvisionDeviceResponse
newProvisionDeviceResponse
  pHttpStatus_
  pArn_
  pStatus_ =
    ProvisionDeviceResponse'
      { deviceId =
          Prelude.Nothing,
        iotThingName = Prelude.Nothing,
        certificates = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        arn = pArn_,
        status = pStatus_
      }

-- | The device\'s ID.
provisionDeviceResponse_deviceId :: Lens.Lens' ProvisionDeviceResponse (Prelude.Maybe Prelude.Text)
provisionDeviceResponse_deviceId = Lens.lens (\ProvisionDeviceResponse' {deviceId} -> deviceId) (\s@ProvisionDeviceResponse' {} a -> s {deviceId = a} :: ProvisionDeviceResponse)

-- | The device\'s IoT thing name.
provisionDeviceResponse_iotThingName :: Lens.Lens' ProvisionDeviceResponse (Prelude.Maybe Prelude.Text)
provisionDeviceResponse_iotThingName = Lens.lens (\ProvisionDeviceResponse' {iotThingName} -> iotThingName) (\s@ProvisionDeviceResponse' {} a -> s {iotThingName = a} :: ProvisionDeviceResponse)

-- | The device\'s configuration bundle.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
provisionDeviceResponse_certificates :: Lens.Lens' ProvisionDeviceResponse (Prelude.Maybe Prelude.ByteString)
provisionDeviceResponse_certificates = Lens.lens (\ProvisionDeviceResponse' {certificates} -> certificates) (\s@ProvisionDeviceResponse' {} a -> s {certificates = a} :: ProvisionDeviceResponse) Prelude.. Lens.mapping Core._Base64

-- | The response's http status code.
provisionDeviceResponse_httpStatus :: Lens.Lens' ProvisionDeviceResponse Prelude.Int
provisionDeviceResponse_httpStatus = Lens.lens (\ProvisionDeviceResponse' {httpStatus} -> httpStatus) (\s@ProvisionDeviceResponse' {} a -> s {httpStatus = a} :: ProvisionDeviceResponse)

-- | The device\'s ARN.
provisionDeviceResponse_arn :: Lens.Lens' ProvisionDeviceResponse Prelude.Text
provisionDeviceResponse_arn = Lens.lens (\ProvisionDeviceResponse' {arn} -> arn) (\s@ProvisionDeviceResponse' {} a -> s {arn = a} :: ProvisionDeviceResponse)

-- | The device\'s status.
provisionDeviceResponse_status :: Lens.Lens' ProvisionDeviceResponse DeviceStatus
provisionDeviceResponse_status = Lens.lens (\ProvisionDeviceResponse' {status} -> status) (\s@ProvisionDeviceResponse' {} a -> s {status = a} :: ProvisionDeviceResponse)

instance Prelude.NFData ProvisionDeviceResponse where
  rnf ProvisionDeviceResponse' {..} =
    Prelude.rnf deviceId
      `Prelude.seq` Prelude.rnf iotThingName
      `Prelude.seq` Prelude.rnf certificates
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
