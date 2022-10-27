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
-- Module      : Amazonka.EC2.ProvisionByoipCidr
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provisions an IPv4 or IPv6 address range for use with your Amazon Web
-- Services resources through bring your own IP addresses (BYOIP) and
-- creates a corresponding address pool. After the address range is
-- provisioned, it is ready to be advertised using AdvertiseByoipCidr.
--
-- Amazon Web Services verifies that you own the address range and are
-- authorized to advertise it. You must ensure that the address range is
-- registered to you and that you created an RPKI ROA to authorize Amazon
-- ASNs 16509 and 14618 to advertise the address range. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html Bring your own IP addresses (BYOIP)>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- Provisioning an address range is an asynchronous operation, so the call
-- returns immediately, but the address range is not ready to use until its
-- status changes from @pending-provision@ to @provisioned@. To monitor the
-- status of an address range, use DescribeByoipCidrs. To allocate an
-- Elastic IP address from your IPv4 address pool, use AllocateAddress with
-- either the specific address from the address pool or the ID of the
-- address pool.
module Amazonka.EC2.ProvisionByoipCidr
  ( -- * Creating a Request
    ProvisionByoipCidr (..),
    newProvisionByoipCidr,

    -- * Request Lenses
    provisionByoipCidr_publiclyAdvertisable,
    provisionByoipCidr_poolTagSpecifications,
    provisionByoipCidr_description,
    provisionByoipCidr_dryRun,
    provisionByoipCidr_multiRegion,
    provisionByoipCidr_cidrAuthorizationContext,
    provisionByoipCidr_cidr,

    -- * Destructuring the Response
    ProvisionByoipCidrResponse (..),
    newProvisionByoipCidrResponse,

    -- * Response Lenses
    provisionByoipCidrResponse_byoipCidr,
    provisionByoipCidrResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newProvisionByoipCidr' smart constructor.
data ProvisionByoipCidr = ProvisionByoipCidr'
  { -- | (IPv6 only) Indicate whether the address range will be publicly
    -- advertised to the internet.
    --
    -- Default: true
    publiclyAdvertisable :: Prelude.Maybe Prelude.Bool,
    -- | The tags to apply to the address pool.
    poolTagSpecifications :: Prelude.Maybe [TagSpecification],
    -- | A description for the address range and the address pool.
    description :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | Reserved.
    multiRegion :: Prelude.Maybe Prelude.Bool,
    -- | A signed document that proves that you are authorized to bring the
    -- specified IP address range to Amazon using BYOIP.
    cidrAuthorizationContext :: Prelude.Maybe CidrAuthorizationContext,
    -- | The public IPv4 or IPv6 address range, in CIDR notation. The most
    -- specific IPv4 prefix that you can specify is \/24. The most specific
    -- IPv6 prefix you can specify is \/56. The address range cannot overlap
    -- with another address range that you\'ve brought to this or another
    -- Region.
    cidr :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionByoipCidr' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publiclyAdvertisable', 'provisionByoipCidr_publiclyAdvertisable' - (IPv6 only) Indicate whether the address range will be publicly
-- advertised to the internet.
--
-- Default: true
--
-- 'poolTagSpecifications', 'provisionByoipCidr_poolTagSpecifications' - The tags to apply to the address pool.
--
-- 'description', 'provisionByoipCidr_description' - A description for the address range and the address pool.
--
-- 'dryRun', 'provisionByoipCidr_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'multiRegion', 'provisionByoipCidr_multiRegion' - Reserved.
--
-- 'cidrAuthorizationContext', 'provisionByoipCidr_cidrAuthorizationContext' - A signed document that proves that you are authorized to bring the
-- specified IP address range to Amazon using BYOIP.
--
-- 'cidr', 'provisionByoipCidr_cidr' - The public IPv4 or IPv6 address range, in CIDR notation. The most
-- specific IPv4 prefix that you can specify is \/24. The most specific
-- IPv6 prefix you can specify is \/56. The address range cannot overlap
-- with another address range that you\'ve brought to this or another
-- Region.
newProvisionByoipCidr ::
  -- | 'cidr'
  Prelude.Text ->
  ProvisionByoipCidr
newProvisionByoipCidr pCidr_ =
  ProvisionByoipCidr'
    { publiclyAdvertisable =
        Prelude.Nothing,
      poolTagSpecifications = Prelude.Nothing,
      description = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      multiRegion = Prelude.Nothing,
      cidrAuthorizationContext = Prelude.Nothing,
      cidr = pCidr_
    }

-- | (IPv6 only) Indicate whether the address range will be publicly
-- advertised to the internet.
--
-- Default: true
provisionByoipCidr_publiclyAdvertisable :: Lens.Lens' ProvisionByoipCidr (Prelude.Maybe Prelude.Bool)
provisionByoipCidr_publiclyAdvertisable = Lens.lens (\ProvisionByoipCidr' {publiclyAdvertisable} -> publiclyAdvertisable) (\s@ProvisionByoipCidr' {} a -> s {publiclyAdvertisable = a} :: ProvisionByoipCidr)

-- | The tags to apply to the address pool.
provisionByoipCidr_poolTagSpecifications :: Lens.Lens' ProvisionByoipCidr (Prelude.Maybe [TagSpecification])
provisionByoipCidr_poolTagSpecifications = Lens.lens (\ProvisionByoipCidr' {poolTagSpecifications} -> poolTagSpecifications) (\s@ProvisionByoipCidr' {} a -> s {poolTagSpecifications = a} :: ProvisionByoipCidr) Prelude.. Lens.mapping Lens.coerced

-- | A description for the address range and the address pool.
provisionByoipCidr_description :: Lens.Lens' ProvisionByoipCidr (Prelude.Maybe Prelude.Text)
provisionByoipCidr_description = Lens.lens (\ProvisionByoipCidr' {description} -> description) (\s@ProvisionByoipCidr' {} a -> s {description = a} :: ProvisionByoipCidr)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
provisionByoipCidr_dryRun :: Lens.Lens' ProvisionByoipCidr (Prelude.Maybe Prelude.Bool)
provisionByoipCidr_dryRun = Lens.lens (\ProvisionByoipCidr' {dryRun} -> dryRun) (\s@ProvisionByoipCidr' {} a -> s {dryRun = a} :: ProvisionByoipCidr)

-- | Reserved.
provisionByoipCidr_multiRegion :: Lens.Lens' ProvisionByoipCidr (Prelude.Maybe Prelude.Bool)
provisionByoipCidr_multiRegion = Lens.lens (\ProvisionByoipCidr' {multiRegion} -> multiRegion) (\s@ProvisionByoipCidr' {} a -> s {multiRegion = a} :: ProvisionByoipCidr)

-- | A signed document that proves that you are authorized to bring the
-- specified IP address range to Amazon using BYOIP.
provisionByoipCidr_cidrAuthorizationContext :: Lens.Lens' ProvisionByoipCidr (Prelude.Maybe CidrAuthorizationContext)
provisionByoipCidr_cidrAuthorizationContext = Lens.lens (\ProvisionByoipCidr' {cidrAuthorizationContext} -> cidrAuthorizationContext) (\s@ProvisionByoipCidr' {} a -> s {cidrAuthorizationContext = a} :: ProvisionByoipCidr)

-- | The public IPv4 or IPv6 address range, in CIDR notation. The most
-- specific IPv4 prefix that you can specify is \/24. The most specific
-- IPv6 prefix you can specify is \/56. The address range cannot overlap
-- with another address range that you\'ve brought to this or another
-- Region.
provisionByoipCidr_cidr :: Lens.Lens' ProvisionByoipCidr Prelude.Text
provisionByoipCidr_cidr = Lens.lens (\ProvisionByoipCidr' {cidr} -> cidr) (\s@ProvisionByoipCidr' {} a -> s {cidr = a} :: ProvisionByoipCidr)

instance Core.AWSRequest ProvisionByoipCidr where
  type
    AWSResponse ProvisionByoipCidr =
      ProvisionByoipCidrResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXML
      ( \s h x ->
          ProvisionByoipCidrResponse'
            Prelude.<$> (x Core..@? "byoipCidr")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ProvisionByoipCidr where
  hashWithSalt _salt ProvisionByoipCidr' {..} =
    _salt `Prelude.hashWithSalt` publiclyAdvertisable
      `Prelude.hashWithSalt` poolTagSpecifications
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` multiRegion
      `Prelude.hashWithSalt` cidrAuthorizationContext
      `Prelude.hashWithSalt` cidr

instance Prelude.NFData ProvisionByoipCidr where
  rnf ProvisionByoipCidr' {..} =
    Prelude.rnf publiclyAdvertisable
      `Prelude.seq` Prelude.rnf poolTagSpecifications
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf multiRegion
      `Prelude.seq` Prelude.rnf cidrAuthorizationContext
      `Prelude.seq` Prelude.rnf cidr

instance Core.ToHeaders ProvisionByoipCidr where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ProvisionByoipCidr where
  toPath = Prelude.const "/"

instance Core.ToQuery ProvisionByoipCidr where
  toQuery ProvisionByoipCidr' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ProvisionByoipCidr" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "PubliclyAdvertisable" Core.=: publiclyAdvertisable,
        Core.toQuery
          ( Core.toQueryList "PoolTagSpecification"
              Prelude.<$> poolTagSpecifications
          ),
        "Description" Core.=: description,
        "DryRun" Core.=: dryRun,
        "MultiRegion" Core.=: multiRegion,
        "CidrAuthorizationContext"
          Core.=: cidrAuthorizationContext,
        "Cidr" Core.=: cidr
      ]

-- | /See:/ 'newProvisionByoipCidrResponse' smart constructor.
data ProvisionByoipCidrResponse = ProvisionByoipCidrResponse'
  { -- | Information about the address range.
    byoipCidr :: Prelude.Maybe ByoipCidr,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionByoipCidrResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'byoipCidr', 'provisionByoipCidrResponse_byoipCidr' - Information about the address range.
--
-- 'httpStatus', 'provisionByoipCidrResponse_httpStatus' - The response's http status code.
newProvisionByoipCidrResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ProvisionByoipCidrResponse
newProvisionByoipCidrResponse pHttpStatus_ =
  ProvisionByoipCidrResponse'
    { byoipCidr =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the address range.
provisionByoipCidrResponse_byoipCidr :: Lens.Lens' ProvisionByoipCidrResponse (Prelude.Maybe ByoipCidr)
provisionByoipCidrResponse_byoipCidr = Lens.lens (\ProvisionByoipCidrResponse' {byoipCidr} -> byoipCidr) (\s@ProvisionByoipCidrResponse' {} a -> s {byoipCidr = a} :: ProvisionByoipCidrResponse)

-- | The response's http status code.
provisionByoipCidrResponse_httpStatus :: Lens.Lens' ProvisionByoipCidrResponse Prelude.Int
provisionByoipCidrResponse_httpStatus = Lens.lens (\ProvisionByoipCidrResponse' {httpStatus} -> httpStatus) (\s@ProvisionByoipCidrResponse' {} a -> s {httpStatus = a} :: ProvisionByoipCidrResponse)

instance Prelude.NFData ProvisionByoipCidrResponse where
  rnf ProvisionByoipCidrResponse' {..} =
    Prelude.rnf byoipCidr
      `Prelude.seq` Prelude.rnf httpStatus
