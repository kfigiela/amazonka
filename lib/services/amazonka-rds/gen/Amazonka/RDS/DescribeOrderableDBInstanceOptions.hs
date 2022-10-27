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
-- Module      : Amazonka.RDS.DescribeOrderableDBInstanceOptions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of orderable DB instance options for the specified DB
-- engine, DB engine version, and DB instance class.
--
-- This operation returns paginated results.
module Amazonka.RDS.DescribeOrderableDBInstanceOptions
  ( -- * Creating a Request
    DescribeOrderableDBInstanceOptions (..),
    newDescribeOrderableDBInstanceOptions,

    -- * Request Lenses
    describeOrderableDBInstanceOptions_dbInstanceClass,
    describeOrderableDBInstanceOptions_marker,
    describeOrderableDBInstanceOptions_vpc,
    describeOrderableDBInstanceOptions_filters,
    describeOrderableDBInstanceOptions_availabilityZoneGroup,
    describeOrderableDBInstanceOptions_maxRecords,
    describeOrderableDBInstanceOptions_engineVersion,
    describeOrderableDBInstanceOptions_licenseModel,
    describeOrderableDBInstanceOptions_engine,

    -- * Destructuring the Response
    DescribeOrderableDBInstanceOptionsResponse (..),
    newDescribeOrderableDBInstanceOptionsResponse,

    -- * Response Lenses
    describeOrderableDBInstanceOptionsResponse_marker,
    describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions,
    describeOrderableDBInstanceOptionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeOrderableDBInstanceOptions' smart constructor.
data DescribeOrderableDBInstanceOptions = DescribeOrderableDBInstanceOptions'
  { -- | The DB instance class filter value. Specify this parameter to show only
    -- the available offerings matching the specified DB instance class.
    dbInstanceClass :: Prelude.Maybe Prelude.Text,
    -- | An optional pagination token provided by a previous
    -- DescribeOrderableDBInstanceOptions request. If this parameter is
    -- specified, the response includes only records beyond the marker, up to
    -- the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates whether to show only VPC or non-VPC offerings.
    -- RDS Custom supports only VPC offerings.
    --
    -- RDS Custom supports only VPC offerings. If you describe non-VPC
    -- offerings for RDS Custom, the output shows VPC offerings.
    vpc :: Prelude.Maybe Prelude.Bool,
    -- | This parameter isn\'t currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | The Availability Zone group associated with a Local Zone. Specify this
    -- parameter to retrieve available offerings for the Local Zones in the
    -- group.
    --
    -- Omit this parameter to show the available offerings in the specified
    -- Amazon Web Services Region.
    --
    -- This setting doesn\'t apply to RDS Custom.
    availabilityZoneGroup :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that you can retrieve the
    -- remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 10000.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The engine version filter value. Specify this parameter to show only the
    -- available offerings matching the specified engine version.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | The license model filter value. Specify this parameter to show only the
    -- available offerings matching the specified license model.
    --
    -- RDS Custom supports only the BYOL licensing model.
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | The name of the engine to retrieve DB instance options for.
    --
    -- Valid Values:
    --
    -- -   @aurora@ (for MySQL 5.6-compatible Aurora)
    --
    -- -   @aurora-mysql@ (for MySQL 5.7-compatible and MySQL 8.0-compatible
    --     Aurora)
    --
    -- -   @aurora-postgresql@
    --
    -- -   @mariadb@
    --
    -- -   @mysql@
    --
    -- -   @oracle-ee@
    --
    -- -   @oracle-ee-cdb@
    --
    -- -   @oracle-se2@
    --
    -- -   @oracle-se2-cdb@
    --
    -- -   @postgres@
    --
    -- -   @sqlserver-ee@
    --
    -- -   @sqlserver-se@
    --
    -- -   @sqlserver-ex@
    --
    -- -   @sqlserver-web@
    engine :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrderableDBInstanceOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbInstanceClass', 'describeOrderableDBInstanceOptions_dbInstanceClass' - The DB instance class filter value. Specify this parameter to show only
-- the available offerings matching the specified DB instance class.
--
-- 'marker', 'describeOrderableDBInstanceOptions_marker' - An optional pagination token provided by a previous
-- DescribeOrderableDBInstanceOptions request. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
--
-- 'vpc', 'describeOrderableDBInstanceOptions_vpc' - A value that indicates whether to show only VPC or non-VPC offerings.
-- RDS Custom supports only VPC offerings.
--
-- RDS Custom supports only VPC offerings. If you describe non-VPC
-- offerings for RDS Custom, the output shows VPC offerings.
--
-- 'filters', 'describeOrderableDBInstanceOptions_filters' - This parameter isn\'t currently supported.
--
-- 'availabilityZoneGroup', 'describeOrderableDBInstanceOptions_availabilityZoneGroup' - The Availability Zone group associated with a Local Zone. Specify this
-- parameter to retrieve available offerings for the Local Zones in the
-- group.
--
-- Omit this parameter to show the available offerings in the specified
-- Amazon Web Services Region.
--
-- This setting doesn\'t apply to RDS Custom.
--
-- 'maxRecords', 'describeOrderableDBInstanceOptions_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 10000.
--
-- 'engineVersion', 'describeOrderableDBInstanceOptions_engineVersion' - The engine version filter value. Specify this parameter to show only the
-- available offerings matching the specified engine version.
--
-- 'licenseModel', 'describeOrderableDBInstanceOptions_licenseModel' - The license model filter value. Specify this parameter to show only the
-- available offerings matching the specified license model.
--
-- RDS Custom supports only the BYOL licensing model.
--
-- 'engine', 'describeOrderableDBInstanceOptions_engine' - The name of the engine to retrieve DB instance options for.
--
-- Valid Values:
--
-- -   @aurora@ (for MySQL 5.6-compatible Aurora)
--
-- -   @aurora-mysql@ (for MySQL 5.7-compatible and MySQL 8.0-compatible
--     Aurora)
--
-- -   @aurora-postgresql@
--
-- -   @mariadb@
--
-- -   @mysql@
--
-- -   @oracle-ee@
--
-- -   @oracle-ee-cdb@
--
-- -   @oracle-se2@
--
-- -   @oracle-se2-cdb@
--
-- -   @postgres@
--
-- -   @sqlserver-ee@
--
-- -   @sqlserver-se@
--
-- -   @sqlserver-ex@
--
-- -   @sqlserver-web@
newDescribeOrderableDBInstanceOptions ::
  -- | 'engine'
  Prelude.Text ->
  DescribeOrderableDBInstanceOptions
newDescribeOrderableDBInstanceOptions pEngine_ =
  DescribeOrderableDBInstanceOptions'
    { dbInstanceClass =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      vpc = Prelude.Nothing,
      filters = Prelude.Nothing,
      availabilityZoneGroup = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      licenseModel = Prelude.Nothing,
      engine = pEngine_
    }

-- | The DB instance class filter value. Specify this parameter to show only
-- the available offerings matching the specified DB instance class.
describeOrderableDBInstanceOptions_dbInstanceClass :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_dbInstanceClass = Lens.lens (\DescribeOrderableDBInstanceOptions' {dbInstanceClass} -> dbInstanceClass) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {dbInstanceClass = a} :: DescribeOrderableDBInstanceOptions)

-- | An optional pagination token provided by a previous
-- DescribeOrderableDBInstanceOptions request. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
describeOrderableDBInstanceOptions_marker :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_marker = Lens.lens (\DescribeOrderableDBInstanceOptions' {marker} -> marker) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {marker = a} :: DescribeOrderableDBInstanceOptions)

-- | A value that indicates whether to show only VPC or non-VPC offerings.
-- RDS Custom supports only VPC offerings.
--
-- RDS Custom supports only VPC offerings. If you describe non-VPC
-- offerings for RDS Custom, the output shows VPC offerings.
describeOrderableDBInstanceOptions_vpc :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Bool)
describeOrderableDBInstanceOptions_vpc = Lens.lens (\DescribeOrderableDBInstanceOptions' {vpc} -> vpc) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {vpc = a} :: DescribeOrderableDBInstanceOptions)

-- | This parameter isn\'t currently supported.
describeOrderableDBInstanceOptions_filters :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe [Filter])
describeOrderableDBInstanceOptions_filters = Lens.lens (\DescribeOrderableDBInstanceOptions' {filters} -> filters) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {filters = a} :: DescribeOrderableDBInstanceOptions) Prelude.. Lens.mapping Lens.coerced

-- | The Availability Zone group associated with a Local Zone. Specify this
-- parameter to retrieve available offerings for the Local Zones in the
-- group.
--
-- Omit this parameter to show the available offerings in the specified
-- Amazon Web Services Region.
--
-- This setting doesn\'t apply to RDS Custom.
describeOrderableDBInstanceOptions_availabilityZoneGroup :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_availabilityZoneGroup = Lens.lens (\DescribeOrderableDBInstanceOptions' {availabilityZoneGroup} -> availabilityZoneGroup) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {availabilityZoneGroup = a} :: DescribeOrderableDBInstanceOptions)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 10000.
describeOrderableDBInstanceOptions_maxRecords :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Int)
describeOrderableDBInstanceOptions_maxRecords = Lens.lens (\DescribeOrderableDBInstanceOptions' {maxRecords} -> maxRecords) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {maxRecords = a} :: DescribeOrderableDBInstanceOptions)

-- | The engine version filter value. Specify this parameter to show only the
-- available offerings matching the specified engine version.
describeOrderableDBInstanceOptions_engineVersion :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_engineVersion = Lens.lens (\DescribeOrderableDBInstanceOptions' {engineVersion} -> engineVersion) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {engineVersion = a} :: DescribeOrderableDBInstanceOptions)

-- | The license model filter value. Specify this parameter to show only the
-- available offerings matching the specified license model.
--
-- RDS Custom supports only the BYOL licensing model.
describeOrderableDBInstanceOptions_licenseModel :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_licenseModel = Lens.lens (\DescribeOrderableDBInstanceOptions' {licenseModel} -> licenseModel) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {licenseModel = a} :: DescribeOrderableDBInstanceOptions)

-- | The name of the engine to retrieve DB instance options for.
--
-- Valid Values:
--
-- -   @aurora@ (for MySQL 5.6-compatible Aurora)
--
-- -   @aurora-mysql@ (for MySQL 5.7-compatible and MySQL 8.0-compatible
--     Aurora)
--
-- -   @aurora-postgresql@
--
-- -   @mariadb@
--
-- -   @mysql@
--
-- -   @oracle-ee@
--
-- -   @oracle-ee-cdb@
--
-- -   @oracle-se2@
--
-- -   @oracle-se2-cdb@
--
-- -   @postgres@
--
-- -   @sqlserver-ee@
--
-- -   @sqlserver-se@
--
-- -   @sqlserver-ex@
--
-- -   @sqlserver-web@
describeOrderableDBInstanceOptions_engine :: Lens.Lens' DescribeOrderableDBInstanceOptions Prelude.Text
describeOrderableDBInstanceOptions_engine = Lens.lens (\DescribeOrderableDBInstanceOptions' {engine} -> engine) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {engine = a} :: DescribeOrderableDBInstanceOptions)

instance
  Core.AWSPager
    DescribeOrderableDBInstanceOptions
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeOrderableDBInstanceOptionsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeOrderableDBInstanceOptions_marker
          Lens..~ rs
          Lens.^? describeOrderableDBInstanceOptionsResponse_marker
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeOrderableDBInstanceOptions
  where
  type
    AWSResponse DescribeOrderableDBInstanceOptions =
      DescribeOrderableDBInstanceOptionsResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribeOrderableDBInstanceOptionsResult"
      ( \s h x ->
          DescribeOrderableDBInstanceOptionsResponse'
            Prelude.<$> (x Core..@? "Marker")
              Prelude.<*> ( x Core..@? "OrderableDBInstanceOptions"
                              Core..!@ Prelude.mempty
                              Prelude.>>= Core.may
                                (Core.parseXMLList "OrderableDBInstanceOption")
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeOrderableDBInstanceOptions
  where
  hashWithSalt
    _salt
    DescribeOrderableDBInstanceOptions' {..} =
      _salt `Prelude.hashWithSalt` dbInstanceClass
        `Prelude.hashWithSalt` marker
        `Prelude.hashWithSalt` vpc
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` availabilityZoneGroup
        `Prelude.hashWithSalt` maxRecords
        `Prelude.hashWithSalt` engineVersion
        `Prelude.hashWithSalt` licenseModel
        `Prelude.hashWithSalt` engine

instance
  Prelude.NFData
    DescribeOrderableDBInstanceOptions
  where
  rnf DescribeOrderableDBInstanceOptions' {..} =
    Prelude.rnf dbInstanceClass
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf vpc
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf availabilityZoneGroup
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf engineVersion
      `Prelude.seq` Prelude.rnf licenseModel
      `Prelude.seq` Prelude.rnf engine

instance
  Core.ToHeaders
    DescribeOrderableDBInstanceOptions
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DescribeOrderableDBInstanceOptions
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeOrderableDBInstanceOptions
  where
  toQuery DescribeOrderableDBInstanceOptions' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeOrderableDBInstanceOptions" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBInstanceClass" Core.=: dbInstanceClass,
        "Marker" Core.=: marker,
        "Vpc" Core.=: vpc,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters),
        "AvailabilityZoneGroup"
          Core.=: availabilityZoneGroup,
        "MaxRecords" Core.=: maxRecords,
        "EngineVersion" Core.=: engineVersion,
        "LicenseModel" Core.=: licenseModel,
        "Engine" Core.=: engine
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeOrderableDBInstanceOptions@ action.
--
-- /See:/ 'newDescribeOrderableDBInstanceOptionsResponse' smart constructor.
data DescribeOrderableDBInstanceOptionsResponse = DescribeOrderableDBInstanceOptionsResponse'
  { -- | An optional pagination token provided by a previous
    -- OrderableDBInstanceOptions request. If this parameter is specified, the
    -- response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | An @OrderableDBInstanceOption@ structure containing information about
    -- orderable options for the DB instance.
    orderableDBInstanceOptions :: Prelude.Maybe [OrderableDBInstanceOption],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrderableDBInstanceOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeOrderableDBInstanceOptionsResponse_marker' - An optional pagination token provided by a previous
-- OrderableDBInstanceOptions request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'orderableDBInstanceOptions', 'describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions' - An @OrderableDBInstanceOption@ structure containing information about
-- orderable options for the DB instance.
--
-- 'httpStatus', 'describeOrderableDBInstanceOptionsResponse_httpStatus' - The response's http status code.
newDescribeOrderableDBInstanceOptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeOrderableDBInstanceOptionsResponse
newDescribeOrderableDBInstanceOptionsResponse
  pHttpStatus_ =
    DescribeOrderableDBInstanceOptionsResponse'
      { marker =
          Prelude.Nothing,
        orderableDBInstanceOptions =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An optional pagination token provided by a previous
-- OrderableDBInstanceOptions request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeOrderableDBInstanceOptionsResponse_marker :: Lens.Lens' DescribeOrderableDBInstanceOptionsResponse (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptionsResponse_marker = Lens.lens (\DescribeOrderableDBInstanceOptionsResponse' {marker} -> marker) (\s@DescribeOrderableDBInstanceOptionsResponse' {} a -> s {marker = a} :: DescribeOrderableDBInstanceOptionsResponse)

-- | An @OrderableDBInstanceOption@ structure containing information about
-- orderable options for the DB instance.
describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions :: Lens.Lens' DescribeOrderableDBInstanceOptionsResponse (Prelude.Maybe [OrderableDBInstanceOption])
describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions = Lens.lens (\DescribeOrderableDBInstanceOptionsResponse' {orderableDBInstanceOptions} -> orderableDBInstanceOptions) (\s@DescribeOrderableDBInstanceOptionsResponse' {} a -> s {orderableDBInstanceOptions = a} :: DescribeOrderableDBInstanceOptionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeOrderableDBInstanceOptionsResponse_httpStatus :: Lens.Lens' DescribeOrderableDBInstanceOptionsResponse Prelude.Int
describeOrderableDBInstanceOptionsResponse_httpStatus = Lens.lens (\DescribeOrderableDBInstanceOptionsResponse' {httpStatus} -> httpStatus) (\s@DescribeOrderableDBInstanceOptionsResponse' {} a -> s {httpStatus = a} :: DescribeOrderableDBInstanceOptionsResponse)

instance
  Prelude.NFData
    DescribeOrderableDBInstanceOptionsResponse
  where
  rnf DescribeOrderableDBInstanceOptionsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf orderableDBInstanceOptions
      `Prelude.seq` Prelude.rnf httpStatus
