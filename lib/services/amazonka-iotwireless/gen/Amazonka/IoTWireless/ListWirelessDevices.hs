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
-- Module      : Amazonka.IoTWireless.ListWirelessDevices
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the wireless devices registered to your AWS account.
module Amazonka.IoTWireless.ListWirelessDevices
  ( -- * Creating a Request
    ListWirelessDevices (..),
    newListWirelessDevices,

    -- * Request Lenses
    listWirelessDevices_nextToken,
    listWirelessDevices_wirelessDeviceType,
    listWirelessDevices_fuotaTaskId,
    listWirelessDevices_destinationName,
    listWirelessDevices_deviceProfileId,
    listWirelessDevices_maxResults,
    listWirelessDevices_multicastGroupId,
    listWirelessDevices_serviceProfileId,

    -- * Destructuring the Response
    ListWirelessDevicesResponse (..),
    newListWirelessDevicesResponse,

    -- * Response Lenses
    listWirelessDevicesResponse_nextToken,
    listWirelessDevicesResponse_wirelessDeviceList,
    listWirelessDevicesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListWirelessDevices' smart constructor.
data ListWirelessDevices = ListWirelessDevices'
  { -- | To retrieve the next set of results, the @nextToken@ value from a
    -- previous response; otherwise __null__ to receive the first set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A filter to list only the wireless devices that use this wireless device
    -- type.
    wirelessDeviceType :: Prelude.Maybe WirelessDeviceType,
    fuotaTaskId :: Prelude.Maybe Prelude.Text,
    -- | A filter to list only the wireless devices that use this destination.
    destinationName :: Prelude.Maybe Prelude.Text,
    -- | A filter to list only the wireless devices that use this device profile.
    deviceProfileId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in this operation.
    maxResults :: Prelude.Maybe Prelude.Natural,
    multicastGroupId :: Prelude.Maybe Prelude.Text,
    -- | A filter to list only the wireless devices that use this service
    -- profile.
    serviceProfileId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWirelessDevices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWirelessDevices_nextToken' - To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
--
-- 'wirelessDeviceType', 'listWirelessDevices_wirelessDeviceType' - A filter to list only the wireless devices that use this wireless device
-- type.
--
-- 'fuotaTaskId', 'listWirelessDevices_fuotaTaskId' - Undocumented member.
--
-- 'destinationName', 'listWirelessDevices_destinationName' - A filter to list only the wireless devices that use this destination.
--
-- 'deviceProfileId', 'listWirelessDevices_deviceProfileId' - A filter to list only the wireless devices that use this device profile.
--
-- 'maxResults', 'listWirelessDevices_maxResults' - The maximum number of results to return in this operation.
--
-- 'multicastGroupId', 'listWirelessDevices_multicastGroupId' - Undocumented member.
--
-- 'serviceProfileId', 'listWirelessDevices_serviceProfileId' - A filter to list only the wireless devices that use this service
-- profile.
newListWirelessDevices ::
  ListWirelessDevices
newListWirelessDevices =
  ListWirelessDevices'
    { nextToken = Prelude.Nothing,
      wirelessDeviceType = Prelude.Nothing,
      fuotaTaskId = Prelude.Nothing,
      destinationName = Prelude.Nothing,
      deviceProfileId = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      multicastGroupId = Prelude.Nothing,
      serviceProfileId = Prelude.Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
listWirelessDevices_nextToken :: Lens.Lens' ListWirelessDevices (Prelude.Maybe Prelude.Text)
listWirelessDevices_nextToken = Lens.lens (\ListWirelessDevices' {nextToken} -> nextToken) (\s@ListWirelessDevices' {} a -> s {nextToken = a} :: ListWirelessDevices)

-- | A filter to list only the wireless devices that use this wireless device
-- type.
listWirelessDevices_wirelessDeviceType :: Lens.Lens' ListWirelessDevices (Prelude.Maybe WirelessDeviceType)
listWirelessDevices_wirelessDeviceType = Lens.lens (\ListWirelessDevices' {wirelessDeviceType} -> wirelessDeviceType) (\s@ListWirelessDevices' {} a -> s {wirelessDeviceType = a} :: ListWirelessDevices)

-- | Undocumented member.
listWirelessDevices_fuotaTaskId :: Lens.Lens' ListWirelessDevices (Prelude.Maybe Prelude.Text)
listWirelessDevices_fuotaTaskId = Lens.lens (\ListWirelessDevices' {fuotaTaskId} -> fuotaTaskId) (\s@ListWirelessDevices' {} a -> s {fuotaTaskId = a} :: ListWirelessDevices)

-- | A filter to list only the wireless devices that use this destination.
listWirelessDevices_destinationName :: Lens.Lens' ListWirelessDevices (Prelude.Maybe Prelude.Text)
listWirelessDevices_destinationName = Lens.lens (\ListWirelessDevices' {destinationName} -> destinationName) (\s@ListWirelessDevices' {} a -> s {destinationName = a} :: ListWirelessDevices)

-- | A filter to list only the wireless devices that use this device profile.
listWirelessDevices_deviceProfileId :: Lens.Lens' ListWirelessDevices (Prelude.Maybe Prelude.Text)
listWirelessDevices_deviceProfileId = Lens.lens (\ListWirelessDevices' {deviceProfileId} -> deviceProfileId) (\s@ListWirelessDevices' {} a -> s {deviceProfileId = a} :: ListWirelessDevices)

-- | The maximum number of results to return in this operation.
listWirelessDevices_maxResults :: Lens.Lens' ListWirelessDevices (Prelude.Maybe Prelude.Natural)
listWirelessDevices_maxResults = Lens.lens (\ListWirelessDevices' {maxResults} -> maxResults) (\s@ListWirelessDevices' {} a -> s {maxResults = a} :: ListWirelessDevices)

-- | Undocumented member.
listWirelessDevices_multicastGroupId :: Lens.Lens' ListWirelessDevices (Prelude.Maybe Prelude.Text)
listWirelessDevices_multicastGroupId = Lens.lens (\ListWirelessDevices' {multicastGroupId} -> multicastGroupId) (\s@ListWirelessDevices' {} a -> s {multicastGroupId = a} :: ListWirelessDevices)

-- | A filter to list only the wireless devices that use this service
-- profile.
listWirelessDevices_serviceProfileId :: Lens.Lens' ListWirelessDevices (Prelude.Maybe Prelude.Text)
listWirelessDevices_serviceProfileId = Lens.lens (\ListWirelessDevices' {serviceProfileId} -> serviceProfileId) (\s@ListWirelessDevices' {} a -> s {serviceProfileId = a} :: ListWirelessDevices)

instance Core.AWSRequest ListWirelessDevices where
  type
    AWSResponse ListWirelessDevices =
      ListWirelessDevicesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWirelessDevicesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "WirelessDeviceList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListWirelessDevices where
  hashWithSalt _salt ListWirelessDevices' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` wirelessDeviceType
      `Prelude.hashWithSalt` fuotaTaskId
      `Prelude.hashWithSalt` destinationName
      `Prelude.hashWithSalt` deviceProfileId
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` multicastGroupId
      `Prelude.hashWithSalt` serviceProfileId

instance Prelude.NFData ListWirelessDevices where
  rnf ListWirelessDevices' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf wirelessDeviceType
      `Prelude.seq` Prelude.rnf fuotaTaskId
      `Prelude.seq` Prelude.rnf destinationName
      `Prelude.seq` Prelude.rnf deviceProfileId
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf multicastGroupId
      `Prelude.seq` Prelude.rnf serviceProfileId

instance Core.ToHeaders ListWirelessDevices where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListWirelessDevices where
  toPath = Prelude.const "/wireless-devices"

instance Core.ToQuery ListWirelessDevices where
  toQuery ListWirelessDevices' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "wirelessDeviceType" Core.=: wirelessDeviceType,
        "fuotaTaskId" Core.=: fuotaTaskId,
        "destinationName" Core.=: destinationName,
        "deviceProfileId" Core.=: deviceProfileId,
        "maxResults" Core.=: maxResults,
        "multicastGroupId" Core.=: multicastGroupId,
        "serviceProfileId" Core.=: serviceProfileId
      ]

-- | /See:/ 'newListWirelessDevicesResponse' smart constructor.
data ListWirelessDevicesResponse = ListWirelessDevicesResponse'
  { -- | The token to use to get the next set of results, or __null__ if there
    -- are no additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the wireless device.
    wirelessDeviceList :: Prelude.Maybe [WirelessDeviceStatistics],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWirelessDevicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWirelessDevicesResponse_nextToken' - The token to use to get the next set of results, or __null__ if there
-- are no additional results.
--
-- 'wirelessDeviceList', 'listWirelessDevicesResponse_wirelessDeviceList' - The ID of the wireless device.
--
-- 'httpStatus', 'listWirelessDevicesResponse_httpStatus' - The response's http status code.
newListWirelessDevicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWirelessDevicesResponse
newListWirelessDevicesResponse pHttpStatus_ =
  ListWirelessDevicesResponse'
    { nextToken =
        Prelude.Nothing,
      wirelessDeviceList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there
-- are no additional results.
listWirelessDevicesResponse_nextToken :: Lens.Lens' ListWirelessDevicesResponse (Prelude.Maybe Prelude.Text)
listWirelessDevicesResponse_nextToken = Lens.lens (\ListWirelessDevicesResponse' {nextToken} -> nextToken) (\s@ListWirelessDevicesResponse' {} a -> s {nextToken = a} :: ListWirelessDevicesResponse)

-- | The ID of the wireless device.
listWirelessDevicesResponse_wirelessDeviceList :: Lens.Lens' ListWirelessDevicesResponse (Prelude.Maybe [WirelessDeviceStatistics])
listWirelessDevicesResponse_wirelessDeviceList = Lens.lens (\ListWirelessDevicesResponse' {wirelessDeviceList} -> wirelessDeviceList) (\s@ListWirelessDevicesResponse' {} a -> s {wirelessDeviceList = a} :: ListWirelessDevicesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listWirelessDevicesResponse_httpStatus :: Lens.Lens' ListWirelessDevicesResponse Prelude.Int
listWirelessDevicesResponse_httpStatus = Lens.lens (\ListWirelessDevicesResponse' {httpStatus} -> httpStatus) (\s@ListWirelessDevicesResponse' {} a -> s {httpStatus = a} :: ListWirelessDevicesResponse)

instance Prelude.NFData ListWirelessDevicesResponse where
  rnf ListWirelessDevicesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf wirelessDeviceList
      `Prelude.seq` Prelude.rnf httpStatus
