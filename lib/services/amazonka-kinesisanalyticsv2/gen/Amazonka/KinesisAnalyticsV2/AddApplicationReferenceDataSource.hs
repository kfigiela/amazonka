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
-- Module      : Amazonka.KinesisAnalyticsV2.AddApplicationReferenceDataSource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a reference data source to an existing SQL-based Kinesis Data
-- Analytics application.
--
-- Kinesis Data Analytics reads reference data (that is, an Amazon S3
-- object) and creates an in-application table within your application. In
-- the request, you provide the source (S3 bucket name and object key
-- name), name of the in-application table to create, and the necessary
-- mapping information that describes how data in an Amazon S3 object maps
-- to columns in the resulting in-application table.
module Amazonka.KinesisAnalyticsV2.AddApplicationReferenceDataSource
  ( -- * Creating a Request
    AddApplicationReferenceDataSource (..),
    newAddApplicationReferenceDataSource,

    -- * Request Lenses
    addApplicationReferenceDataSource_applicationName,
    addApplicationReferenceDataSource_currentApplicationVersionId,
    addApplicationReferenceDataSource_referenceDataSource,

    -- * Destructuring the Response
    AddApplicationReferenceDataSourceResponse (..),
    newAddApplicationReferenceDataSourceResponse,

    -- * Response Lenses
    addApplicationReferenceDataSourceResponse_referenceDataSourceDescriptions,
    addApplicationReferenceDataSourceResponse_applicationARN,
    addApplicationReferenceDataSourceResponse_applicationVersionId,
    addApplicationReferenceDataSourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KinesisAnalyticsV2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newAddApplicationReferenceDataSource' smart constructor.
data AddApplicationReferenceDataSource = AddApplicationReferenceDataSource'
  { -- | The name of an existing application.
    applicationName :: Prelude.Text,
    -- | The version of the application for which you are adding the reference
    -- data source. You can use the DescribeApplication operation to get the
    -- current application version. If the version specified is not the current
    -- version, the @ConcurrentModificationException@ is returned.
    currentApplicationVersionId :: Prelude.Natural,
    -- | The reference data source can be an object in your Amazon S3 bucket.
    -- Kinesis Data Analytics reads the object and copies the data into the
    -- in-application table that is created. You provide an S3 bucket, object
    -- key name, and the resulting in-application table that is created.
    referenceDataSource :: ReferenceDataSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddApplicationReferenceDataSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'addApplicationReferenceDataSource_applicationName' - The name of an existing application.
--
-- 'currentApplicationVersionId', 'addApplicationReferenceDataSource_currentApplicationVersionId' - The version of the application for which you are adding the reference
-- data source. You can use the DescribeApplication operation to get the
-- current application version. If the version specified is not the current
-- version, the @ConcurrentModificationException@ is returned.
--
-- 'referenceDataSource', 'addApplicationReferenceDataSource_referenceDataSource' - The reference data source can be an object in your Amazon S3 bucket.
-- Kinesis Data Analytics reads the object and copies the data into the
-- in-application table that is created. You provide an S3 bucket, object
-- key name, and the resulting in-application table that is created.
newAddApplicationReferenceDataSource ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'currentApplicationVersionId'
  Prelude.Natural ->
  -- | 'referenceDataSource'
  ReferenceDataSource ->
  AddApplicationReferenceDataSource
newAddApplicationReferenceDataSource
  pApplicationName_
  pCurrentApplicationVersionId_
  pReferenceDataSource_ =
    AddApplicationReferenceDataSource'
      { applicationName =
          pApplicationName_,
        currentApplicationVersionId =
          pCurrentApplicationVersionId_,
        referenceDataSource =
          pReferenceDataSource_
      }

-- | The name of an existing application.
addApplicationReferenceDataSource_applicationName :: Lens.Lens' AddApplicationReferenceDataSource Prelude.Text
addApplicationReferenceDataSource_applicationName = Lens.lens (\AddApplicationReferenceDataSource' {applicationName} -> applicationName) (\s@AddApplicationReferenceDataSource' {} a -> s {applicationName = a} :: AddApplicationReferenceDataSource)

-- | The version of the application for which you are adding the reference
-- data source. You can use the DescribeApplication operation to get the
-- current application version. If the version specified is not the current
-- version, the @ConcurrentModificationException@ is returned.
addApplicationReferenceDataSource_currentApplicationVersionId :: Lens.Lens' AddApplicationReferenceDataSource Prelude.Natural
addApplicationReferenceDataSource_currentApplicationVersionId = Lens.lens (\AddApplicationReferenceDataSource' {currentApplicationVersionId} -> currentApplicationVersionId) (\s@AddApplicationReferenceDataSource' {} a -> s {currentApplicationVersionId = a} :: AddApplicationReferenceDataSource)

-- | The reference data source can be an object in your Amazon S3 bucket.
-- Kinesis Data Analytics reads the object and copies the data into the
-- in-application table that is created. You provide an S3 bucket, object
-- key name, and the resulting in-application table that is created.
addApplicationReferenceDataSource_referenceDataSource :: Lens.Lens' AddApplicationReferenceDataSource ReferenceDataSource
addApplicationReferenceDataSource_referenceDataSource = Lens.lens (\AddApplicationReferenceDataSource' {referenceDataSource} -> referenceDataSource) (\s@AddApplicationReferenceDataSource' {} a -> s {referenceDataSource = a} :: AddApplicationReferenceDataSource)

instance
  Core.AWSRequest
    AddApplicationReferenceDataSource
  where
  type
    AWSResponse AddApplicationReferenceDataSource =
      AddApplicationReferenceDataSourceResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          AddApplicationReferenceDataSourceResponse'
            Prelude.<$> ( x Core..?> "ReferenceDataSourceDescriptions"
                            Core..!@ Prelude.mempty
                        )
              Prelude.<*> (x Core..?> "ApplicationARN")
              Prelude.<*> (x Core..?> "ApplicationVersionId")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AddApplicationReferenceDataSource
  where
  hashWithSalt
    _salt
    AddApplicationReferenceDataSource' {..} =
      _salt `Prelude.hashWithSalt` applicationName
        `Prelude.hashWithSalt` currentApplicationVersionId
        `Prelude.hashWithSalt` referenceDataSource

instance
  Prelude.NFData
    AddApplicationReferenceDataSource
  where
  rnf AddApplicationReferenceDataSource' {..} =
    Prelude.rnf applicationName
      `Prelude.seq` Prelude.rnf currentApplicationVersionId
      `Prelude.seq` Prelude.rnf referenceDataSource

instance
  Core.ToHeaders
    AddApplicationReferenceDataSource
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20180523.AddApplicationReferenceDataSource" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    AddApplicationReferenceDataSource
  where
  toJSON AddApplicationReferenceDataSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ApplicationName" Core..= applicationName),
            Prelude.Just
              ( "CurrentApplicationVersionId"
                  Core..= currentApplicationVersionId
              ),
            Prelude.Just
              ("ReferenceDataSource" Core..= referenceDataSource)
          ]
      )

instance
  Core.ToPath
    AddApplicationReferenceDataSource
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    AddApplicationReferenceDataSource
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAddApplicationReferenceDataSourceResponse' smart constructor.
data AddApplicationReferenceDataSourceResponse = AddApplicationReferenceDataSourceResponse'
  { -- | Describes reference data sources configured for the application.
    referenceDataSourceDescriptions :: Prelude.Maybe [ReferenceDataSourceDescription],
    -- | The application Amazon Resource Name (ARN).
    applicationARN :: Prelude.Maybe Prelude.Text,
    -- | The updated application version ID. Kinesis Data Analytics increments
    -- this ID when the application is updated.
    applicationVersionId :: Prelude.Maybe Prelude.Natural,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddApplicationReferenceDataSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'referenceDataSourceDescriptions', 'addApplicationReferenceDataSourceResponse_referenceDataSourceDescriptions' - Describes reference data sources configured for the application.
--
-- 'applicationARN', 'addApplicationReferenceDataSourceResponse_applicationARN' - The application Amazon Resource Name (ARN).
--
-- 'applicationVersionId', 'addApplicationReferenceDataSourceResponse_applicationVersionId' - The updated application version ID. Kinesis Data Analytics increments
-- this ID when the application is updated.
--
-- 'httpStatus', 'addApplicationReferenceDataSourceResponse_httpStatus' - The response's http status code.
newAddApplicationReferenceDataSourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AddApplicationReferenceDataSourceResponse
newAddApplicationReferenceDataSourceResponse
  pHttpStatus_ =
    AddApplicationReferenceDataSourceResponse'
      { referenceDataSourceDescriptions =
          Prelude.Nothing,
        applicationARN = Prelude.Nothing,
        applicationVersionId =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Describes reference data sources configured for the application.
addApplicationReferenceDataSourceResponse_referenceDataSourceDescriptions :: Lens.Lens' AddApplicationReferenceDataSourceResponse (Prelude.Maybe [ReferenceDataSourceDescription])
addApplicationReferenceDataSourceResponse_referenceDataSourceDescriptions = Lens.lens (\AddApplicationReferenceDataSourceResponse' {referenceDataSourceDescriptions} -> referenceDataSourceDescriptions) (\s@AddApplicationReferenceDataSourceResponse' {} a -> s {referenceDataSourceDescriptions = a} :: AddApplicationReferenceDataSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The application Amazon Resource Name (ARN).
addApplicationReferenceDataSourceResponse_applicationARN :: Lens.Lens' AddApplicationReferenceDataSourceResponse (Prelude.Maybe Prelude.Text)
addApplicationReferenceDataSourceResponse_applicationARN = Lens.lens (\AddApplicationReferenceDataSourceResponse' {applicationARN} -> applicationARN) (\s@AddApplicationReferenceDataSourceResponse' {} a -> s {applicationARN = a} :: AddApplicationReferenceDataSourceResponse)

-- | The updated application version ID. Kinesis Data Analytics increments
-- this ID when the application is updated.
addApplicationReferenceDataSourceResponse_applicationVersionId :: Lens.Lens' AddApplicationReferenceDataSourceResponse (Prelude.Maybe Prelude.Natural)
addApplicationReferenceDataSourceResponse_applicationVersionId = Lens.lens (\AddApplicationReferenceDataSourceResponse' {applicationVersionId} -> applicationVersionId) (\s@AddApplicationReferenceDataSourceResponse' {} a -> s {applicationVersionId = a} :: AddApplicationReferenceDataSourceResponse)

-- | The response's http status code.
addApplicationReferenceDataSourceResponse_httpStatus :: Lens.Lens' AddApplicationReferenceDataSourceResponse Prelude.Int
addApplicationReferenceDataSourceResponse_httpStatus = Lens.lens (\AddApplicationReferenceDataSourceResponse' {httpStatus} -> httpStatus) (\s@AddApplicationReferenceDataSourceResponse' {} a -> s {httpStatus = a} :: AddApplicationReferenceDataSourceResponse)

instance
  Prelude.NFData
    AddApplicationReferenceDataSourceResponse
  where
  rnf AddApplicationReferenceDataSourceResponse' {..} =
    Prelude.rnf referenceDataSourceDescriptions
      `Prelude.seq` Prelude.rnf applicationARN
      `Prelude.seq` Prelude.rnf applicationVersionId
      `Prelude.seq` Prelude.rnf httpStatus
