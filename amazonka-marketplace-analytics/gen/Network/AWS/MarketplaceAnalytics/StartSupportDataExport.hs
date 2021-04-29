{-# LANGUAGE DeriveDataTypeable #-}
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
-- Module      : Network.AWS.MarketplaceAnalytics.StartSupportDataExport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given a data set type and a from date, asynchronously publishes the
-- requested customer support data to the specified S3 bucket and notifies
-- the specified SNS topic once the data is available. Returns a unique
-- request identifier that can be used to correlate requests with
-- notifications from the SNS topic. Data sets will be published in
-- comma-separated values (CSV) format with the file name
-- {data_set_type}_YYYY-MM-DD\'T\'HH-mm-ss\'Z\'.csv. If a file with the
-- same name already exists (e.g. if the same data set is requested twice),
-- the original file will be overwritten by the new file. Requires a Role
-- with an attached permissions policy providing Allow permissions for the
-- following actions: s3:PutObject, s3:GetBucketLocation,
-- sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
module Network.AWS.MarketplaceAnalytics.StartSupportDataExport
  ( -- * Creating a Request
    StartSupportDataExport (..),
    newStartSupportDataExport,

    -- * Request Lenses
    startSupportDataExport_destinationS3Prefix,
    startSupportDataExport_customerDefinedValues,
    startSupportDataExport_dataSetType,
    startSupportDataExport_fromDate,
    startSupportDataExport_roleNameArn,
    startSupportDataExport_destinationS3BucketName,
    startSupportDataExport_snsTopicArn,

    -- * Destructuring the Response
    StartSupportDataExportResponse (..),
    newStartSupportDataExportResponse,

    -- * Response Lenses
    startSupportDataExportResponse_dataSetRequestId,
    startSupportDataExportResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MarketplaceAnalytics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the StartSupportDataExport operation.
--
-- /See:/ 'newStartSupportDataExport' smart constructor.
data StartSupportDataExport = StartSupportDataExport'
  { -- | (Optional) The desired S3 prefix for the published data set, similar to
    -- a directory path in standard file systems. For example, if given the
    -- bucket name \"mybucket\" and the prefix \"myprefix\/mydatasets\", the
    -- output file \"outputfile\" would be published to
    -- \"s3:\/\/mybucket\/myprefix\/mydatasets\/outputfile\". If the prefix
    -- directory structure does not exist, it will be created. If no prefix is
    -- provided, the data set will be published to the S3 bucket root.
    destinationS3Prefix :: Prelude.Maybe Prelude.Text,
    -- | (Optional) Key-value pairs which will be returned, unmodified, in the
    -- Amazon SNS notification message and the data set metadata file.
    customerDefinedValues :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Specifies the data set type to be written to the output csv file. The
    -- data set types customer_support_contacts_data and
    -- test_customer_support_contacts_data both result in a csv file containing
    -- the following fields: Product Id, Product Code, Customer Guid,
    -- Subscription Guid, Subscription Start Date, Organization, AWS Account
    -- Id, Given Name, Surname, Telephone Number, Email, Title, Country Code,
    -- ZIP Code, Operation Type, and Operation Time.
    --
    -- -   /customer_support_contacts_data/ Customer support contact data. The
    --     data set will contain all changes (Creates, Updates, and Deletes) to
    --     customer support contact data from the date specified in the
    --     from_date parameter.
    -- -   /test_customer_support_contacts_data/ An example data set containing
    --     static test data in the same format as
    --     customer_support_contacts_data
    dataSetType :: SupportDataSetType,
    -- | The start date from which to retrieve the data set in UTC. This
    -- parameter only affects the customer_support_contacts_data data set type.
    fromDate :: Prelude.POSIX,
    -- | The Amazon Resource Name (ARN) of the Role with an attached permissions
    -- policy to interact with the provided AWS services.
    roleNameArn :: Prelude.Text,
    -- | The name (friendly name, not ARN) of the destination S3 bucket.
    destinationS3BucketName :: Prelude.Text,
    -- | Amazon Resource Name (ARN) for the SNS Topic that will be notified when
    -- the data set has been published or if an error has occurred.
    snsTopicArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StartSupportDataExport' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinationS3Prefix', 'startSupportDataExport_destinationS3Prefix' - (Optional) The desired S3 prefix for the published data set, similar to
-- a directory path in standard file systems. For example, if given the
-- bucket name \"mybucket\" and the prefix \"myprefix\/mydatasets\", the
-- output file \"outputfile\" would be published to
-- \"s3:\/\/mybucket\/myprefix\/mydatasets\/outputfile\". If the prefix
-- directory structure does not exist, it will be created. If no prefix is
-- provided, the data set will be published to the S3 bucket root.
--
-- 'customerDefinedValues', 'startSupportDataExport_customerDefinedValues' - (Optional) Key-value pairs which will be returned, unmodified, in the
-- Amazon SNS notification message and the data set metadata file.
--
-- 'dataSetType', 'startSupportDataExport_dataSetType' - Specifies the data set type to be written to the output csv file. The
-- data set types customer_support_contacts_data and
-- test_customer_support_contacts_data both result in a csv file containing
-- the following fields: Product Id, Product Code, Customer Guid,
-- Subscription Guid, Subscription Start Date, Organization, AWS Account
-- Id, Given Name, Surname, Telephone Number, Email, Title, Country Code,
-- ZIP Code, Operation Type, and Operation Time.
--
-- -   /customer_support_contacts_data/ Customer support contact data. The
--     data set will contain all changes (Creates, Updates, and Deletes) to
--     customer support contact data from the date specified in the
--     from_date parameter.
-- -   /test_customer_support_contacts_data/ An example data set containing
--     static test data in the same format as
--     customer_support_contacts_data
--
-- 'fromDate', 'startSupportDataExport_fromDate' - The start date from which to retrieve the data set in UTC. This
-- parameter only affects the customer_support_contacts_data data set type.
--
-- 'roleNameArn', 'startSupportDataExport_roleNameArn' - The Amazon Resource Name (ARN) of the Role with an attached permissions
-- policy to interact with the provided AWS services.
--
-- 'destinationS3BucketName', 'startSupportDataExport_destinationS3BucketName' - The name (friendly name, not ARN) of the destination S3 bucket.
--
-- 'snsTopicArn', 'startSupportDataExport_snsTopicArn' - Amazon Resource Name (ARN) for the SNS Topic that will be notified when
-- the data set has been published or if an error has occurred.
newStartSupportDataExport ::
  -- | 'dataSetType'
  SupportDataSetType ->
  -- | 'fromDate'
  Prelude.UTCTime ->
  -- | 'roleNameArn'
  Prelude.Text ->
  -- | 'destinationS3BucketName'
  Prelude.Text ->
  -- | 'snsTopicArn'
  Prelude.Text ->
  StartSupportDataExport
newStartSupportDataExport
  pDataSetType_
  pFromDate_
  pRoleNameArn_
  pDestinationS3BucketName_
  pSnsTopicArn_ =
    StartSupportDataExport'
      { destinationS3Prefix =
          Prelude.Nothing,
        customerDefinedValues = Prelude.Nothing,
        dataSetType = pDataSetType_,
        fromDate = Prelude._Time Lens.# pFromDate_,
        roleNameArn = pRoleNameArn_,
        destinationS3BucketName = pDestinationS3BucketName_,
        snsTopicArn = pSnsTopicArn_
      }

-- | (Optional) The desired S3 prefix for the published data set, similar to
-- a directory path in standard file systems. For example, if given the
-- bucket name \"mybucket\" and the prefix \"myprefix\/mydatasets\", the
-- output file \"outputfile\" would be published to
-- \"s3:\/\/mybucket\/myprefix\/mydatasets\/outputfile\". If the prefix
-- directory structure does not exist, it will be created. If no prefix is
-- provided, the data set will be published to the S3 bucket root.
startSupportDataExport_destinationS3Prefix :: Lens.Lens' StartSupportDataExport (Prelude.Maybe Prelude.Text)
startSupportDataExport_destinationS3Prefix = Lens.lens (\StartSupportDataExport' {destinationS3Prefix} -> destinationS3Prefix) (\s@StartSupportDataExport' {} a -> s {destinationS3Prefix = a} :: StartSupportDataExport)

-- | (Optional) Key-value pairs which will be returned, unmodified, in the
-- Amazon SNS notification message and the data set metadata file.
startSupportDataExport_customerDefinedValues :: Lens.Lens' StartSupportDataExport (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
startSupportDataExport_customerDefinedValues = Lens.lens (\StartSupportDataExport' {customerDefinedValues} -> customerDefinedValues) (\s@StartSupportDataExport' {} a -> s {customerDefinedValues = a} :: StartSupportDataExport) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the data set type to be written to the output csv file. The
-- data set types customer_support_contacts_data and
-- test_customer_support_contacts_data both result in a csv file containing
-- the following fields: Product Id, Product Code, Customer Guid,
-- Subscription Guid, Subscription Start Date, Organization, AWS Account
-- Id, Given Name, Surname, Telephone Number, Email, Title, Country Code,
-- ZIP Code, Operation Type, and Operation Time.
--
-- -   /customer_support_contacts_data/ Customer support contact data. The
--     data set will contain all changes (Creates, Updates, and Deletes) to
--     customer support contact data from the date specified in the
--     from_date parameter.
-- -   /test_customer_support_contacts_data/ An example data set containing
--     static test data in the same format as
--     customer_support_contacts_data
startSupportDataExport_dataSetType :: Lens.Lens' StartSupportDataExport SupportDataSetType
startSupportDataExport_dataSetType = Lens.lens (\StartSupportDataExport' {dataSetType} -> dataSetType) (\s@StartSupportDataExport' {} a -> s {dataSetType = a} :: StartSupportDataExport)

-- | The start date from which to retrieve the data set in UTC. This
-- parameter only affects the customer_support_contacts_data data set type.
startSupportDataExport_fromDate :: Lens.Lens' StartSupportDataExport Prelude.UTCTime
startSupportDataExport_fromDate = Lens.lens (\StartSupportDataExport' {fromDate} -> fromDate) (\s@StartSupportDataExport' {} a -> s {fromDate = a} :: StartSupportDataExport) Prelude.. Prelude._Time

-- | The Amazon Resource Name (ARN) of the Role with an attached permissions
-- policy to interact with the provided AWS services.
startSupportDataExport_roleNameArn :: Lens.Lens' StartSupportDataExport Prelude.Text
startSupportDataExport_roleNameArn = Lens.lens (\StartSupportDataExport' {roleNameArn} -> roleNameArn) (\s@StartSupportDataExport' {} a -> s {roleNameArn = a} :: StartSupportDataExport)

-- | The name (friendly name, not ARN) of the destination S3 bucket.
startSupportDataExport_destinationS3BucketName :: Lens.Lens' StartSupportDataExport Prelude.Text
startSupportDataExport_destinationS3BucketName = Lens.lens (\StartSupportDataExport' {destinationS3BucketName} -> destinationS3BucketName) (\s@StartSupportDataExport' {} a -> s {destinationS3BucketName = a} :: StartSupportDataExport)

-- | Amazon Resource Name (ARN) for the SNS Topic that will be notified when
-- the data set has been published or if an error has occurred.
startSupportDataExport_snsTopicArn :: Lens.Lens' StartSupportDataExport Prelude.Text
startSupportDataExport_snsTopicArn = Lens.lens (\StartSupportDataExport' {snsTopicArn} -> snsTopicArn) (\s@StartSupportDataExport' {} a -> s {snsTopicArn = a} :: StartSupportDataExport)

instance Prelude.AWSRequest StartSupportDataExport where
  type
    Rs StartSupportDataExport =
      StartSupportDataExportResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartSupportDataExportResponse'
            Prelude.<$> (x Prelude..?> "dataSetRequestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartSupportDataExport

instance Prelude.NFData StartSupportDataExport

instance Prelude.ToHeaders StartSupportDataExport where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "MarketplaceCommerceAnalytics20150701.StartSupportDataExport" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON StartSupportDataExport where
  toJSON StartSupportDataExport' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("destinationS3Prefix" Prelude..=)
              Prelude.<$> destinationS3Prefix,
            ("customerDefinedValues" Prelude..=)
              Prelude.<$> customerDefinedValues,
            Prelude.Just ("dataSetType" Prelude..= dataSetType),
            Prelude.Just ("fromDate" Prelude..= fromDate),
            Prelude.Just ("roleNameArn" Prelude..= roleNameArn),
            Prelude.Just
              ( "destinationS3BucketName"
                  Prelude..= destinationS3BucketName
              ),
            Prelude.Just ("snsTopicArn" Prelude..= snsTopicArn)
          ]
      )

instance Prelude.ToPath StartSupportDataExport where
  toPath = Prelude.const "/"

instance Prelude.ToQuery StartSupportDataExport where
  toQuery = Prelude.const Prelude.mempty

-- | Container for the result of the StartSupportDataExport operation.
--
-- /See:/ 'newStartSupportDataExportResponse' smart constructor.
data StartSupportDataExportResponse = StartSupportDataExportResponse'
  { -- | A unique identifier representing a specific request to the
    -- StartSupportDataExport operation. This identifier can be used to
    -- correlate a request with notifications from the SNS topic.
    dataSetRequestId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StartSupportDataExportResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSetRequestId', 'startSupportDataExportResponse_dataSetRequestId' - A unique identifier representing a specific request to the
-- StartSupportDataExport operation. This identifier can be used to
-- correlate a request with notifications from the SNS topic.
--
-- 'httpStatus', 'startSupportDataExportResponse_httpStatus' - The response's http status code.
newStartSupportDataExportResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartSupportDataExportResponse
newStartSupportDataExportResponse pHttpStatus_ =
  StartSupportDataExportResponse'
    { dataSetRequestId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A unique identifier representing a specific request to the
-- StartSupportDataExport operation. This identifier can be used to
-- correlate a request with notifications from the SNS topic.
startSupportDataExportResponse_dataSetRequestId :: Lens.Lens' StartSupportDataExportResponse (Prelude.Maybe Prelude.Text)
startSupportDataExportResponse_dataSetRequestId = Lens.lens (\StartSupportDataExportResponse' {dataSetRequestId} -> dataSetRequestId) (\s@StartSupportDataExportResponse' {} a -> s {dataSetRequestId = a} :: StartSupportDataExportResponse)

-- | The response's http status code.
startSupportDataExportResponse_httpStatus :: Lens.Lens' StartSupportDataExportResponse Prelude.Int
startSupportDataExportResponse_httpStatus = Lens.lens (\StartSupportDataExportResponse' {httpStatus} -> httpStatus) (\s@StartSupportDataExportResponse' {} a -> s {httpStatus = a} :: StartSupportDataExportResponse)

instance
  Prelude.NFData
    StartSupportDataExportResponse
