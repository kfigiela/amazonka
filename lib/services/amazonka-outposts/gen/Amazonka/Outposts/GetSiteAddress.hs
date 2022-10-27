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
-- Module      : Amazonka.Outposts.GetSiteAddress
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the site address of the specified site.
module Amazonka.Outposts.GetSiteAddress
  ( -- * Creating a Request
    GetSiteAddress (..),
    newGetSiteAddress,

    -- * Request Lenses
    getSiteAddress_siteId,
    getSiteAddress_addressType,

    -- * Destructuring the Response
    GetSiteAddressResponse (..),
    newGetSiteAddressResponse,

    -- * Response Lenses
    getSiteAddressResponse_addressType,
    getSiteAddressResponse_siteId,
    getSiteAddressResponse_address,
    getSiteAddressResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Outposts.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetSiteAddress' smart constructor.
data GetSiteAddress = GetSiteAddress'
  { -- | The ID or the Amazon Resource Name (ARN) of the site.
    siteId :: Prelude.Text,
    -- | The type of the address you request.
    addressType :: AddressType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSiteAddress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'siteId', 'getSiteAddress_siteId' - The ID or the Amazon Resource Name (ARN) of the site.
--
-- 'addressType', 'getSiteAddress_addressType' - The type of the address you request.
newGetSiteAddress ::
  -- | 'siteId'
  Prelude.Text ->
  -- | 'addressType'
  AddressType ->
  GetSiteAddress
newGetSiteAddress pSiteId_ pAddressType_ =
  GetSiteAddress'
    { siteId = pSiteId_,
      addressType = pAddressType_
    }

-- | The ID or the Amazon Resource Name (ARN) of the site.
getSiteAddress_siteId :: Lens.Lens' GetSiteAddress Prelude.Text
getSiteAddress_siteId = Lens.lens (\GetSiteAddress' {siteId} -> siteId) (\s@GetSiteAddress' {} a -> s {siteId = a} :: GetSiteAddress)

-- | The type of the address you request.
getSiteAddress_addressType :: Lens.Lens' GetSiteAddress AddressType
getSiteAddress_addressType = Lens.lens (\GetSiteAddress' {addressType} -> addressType) (\s@GetSiteAddress' {} a -> s {addressType = a} :: GetSiteAddress)

instance Core.AWSRequest GetSiteAddress where
  type
    AWSResponse GetSiteAddress =
      GetSiteAddressResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSiteAddressResponse'
            Prelude.<$> (x Core..?> "AddressType")
            Prelude.<*> (x Core..?> "SiteId")
            Prelude.<*> (x Core..?> "Address")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSiteAddress where
  hashWithSalt _salt GetSiteAddress' {..} =
    _salt `Prelude.hashWithSalt` siteId
      `Prelude.hashWithSalt` addressType

instance Prelude.NFData GetSiteAddress where
  rnf GetSiteAddress' {..} =
    Prelude.rnf siteId
      `Prelude.seq` Prelude.rnf addressType

instance Core.ToHeaders GetSiteAddress where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetSiteAddress where
  toPath GetSiteAddress' {..} =
    Prelude.mconcat
      ["/sites/", Core.toBS siteId, "/address"]

instance Core.ToQuery GetSiteAddress where
  toQuery GetSiteAddress' {..} =
    Prelude.mconcat ["AddressType" Core.=: addressType]

-- | /See:/ 'newGetSiteAddressResponse' smart constructor.
data GetSiteAddressResponse = GetSiteAddressResponse'
  { -- | The type of the address you receive.
    addressType :: Prelude.Maybe AddressType,
    siteId :: Prelude.Maybe Prelude.Text,
    -- | Information about the address.
    address :: Prelude.Maybe Address,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSiteAddressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'addressType', 'getSiteAddressResponse_addressType' - The type of the address you receive.
--
-- 'siteId', 'getSiteAddressResponse_siteId' - Undocumented member.
--
-- 'address', 'getSiteAddressResponse_address' - Information about the address.
--
-- 'httpStatus', 'getSiteAddressResponse_httpStatus' - The response's http status code.
newGetSiteAddressResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSiteAddressResponse
newGetSiteAddressResponse pHttpStatus_ =
  GetSiteAddressResponse'
    { addressType =
        Prelude.Nothing,
      siteId = Prelude.Nothing,
      address = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The type of the address you receive.
getSiteAddressResponse_addressType :: Lens.Lens' GetSiteAddressResponse (Prelude.Maybe AddressType)
getSiteAddressResponse_addressType = Lens.lens (\GetSiteAddressResponse' {addressType} -> addressType) (\s@GetSiteAddressResponse' {} a -> s {addressType = a} :: GetSiteAddressResponse)

-- | Undocumented member.
getSiteAddressResponse_siteId :: Lens.Lens' GetSiteAddressResponse (Prelude.Maybe Prelude.Text)
getSiteAddressResponse_siteId = Lens.lens (\GetSiteAddressResponse' {siteId} -> siteId) (\s@GetSiteAddressResponse' {} a -> s {siteId = a} :: GetSiteAddressResponse)

-- | Information about the address.
getSiteAddressResponse_address :: Lens.Lens' GetSiteAddressResponse (Prelude.Maybe Address)
getSiteAddressResponse_address = Lens.lens (\GetSiteAddressResponse' {address} -> address) (\s@GetSiteAddressResponse' {} a -> s {address = a} :: GetSiteAddressResponse)

-- | The response's http status code.
getSiteAddressResponse_httpStatus :: Lens.Lens' GetSiteAddressResponse Prelude.Int
getSiteAddressResponse_httpStatus = Lens.lens (\GetSiteAddressResponse' {httpStatus} -> httpStatus) (\s@GetSiteAddressResponse' {} a -> s {httpStatus = a} :: GetSiteAddressResponse)

instance Prelude.NFData GetSiteAddressResponse where
  rnf GetSiteAddressResponse' {..} =
    Prelude.rnf addressType
      `Prelude.seq` Prelude.rnf siteId
      `Prelude.seq` Prelude.rnf address
      `Prelude.seq` Prelude.rnf httpStatus
