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
-- Module      : Amazonka.MQ.DescribeConfigurationRevision
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified configuration revision for the specified
-- configuration.
module Amazonka.MQ.DescribeConfigurationRevision
  ( -- * Creating a Request
    DescribeConfigurationRevision (..),
    newDescribeConfigurationRevision,

    -- * Request Lenses
    describeConfigurationRevision_configurationRevision,
    describeConfigurationRevision_configurationId,

    -- * Destructuring the Response
    DescribeConfigurationRevisionResponse (..),
    newDescribeConfigurationRevisionResponse,

    -- * Response Lenses
    describeConfigurationRevisionResponse_created,
    describeConfigurationRevisionResponse_description,
    describeConfigurationRevisionResponse_configurationId,
    describeConfigurationRevisionResponse_data,
    describeConfigurationRevisionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MQ.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeConfigurationRevision' smart constructor.
data DescribeConfigurationRevision = DescribeConfigurationRevision'
  { -- | The revision of the configuration.
    configurationRevision :: Prelude.Text,
    -- | The unique ID that Amazon MQ generates for the configuration.
    configurationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeConfigurationRevision' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationRevision', 'describeConfigurationRevision_configurationRevision' - The revision of the configuration.
--
-- 'configurationId', 'describeConfigurationRevision_configurationId' - The unique ID that Amazon MQ generates for the configuration.
newDescribeConfigurationRevision ::
  -- | 'configurationRevision'
  Prelude.Text ->
  -- | 'configurationId'
  Prelude.Text ->
  DescribeConfigurationRevision
newDescribeConfigurationRevision
  pConfigurationRevision_
  pConfigurationId_ =
    DescribeConfigurationRevision'
      { configurationRevision =
          pConfigurationRevision_,
        configurationId = pConfigurationId_
      }

-- | The revision of the configuration.
describeConfigurationRevision_configurationRevision :: Lens.Lens' DescribeConfigurationRevision Prelude.Text
describeConfigurationRevision_configurationRevision = Lens.lens (\DescribeConfigurationRevision' {configurationRevision} -> configurationRevision) (\s@DescribeConfigurationRevision' {} a -> s {configurationRevision = a} :: DescribeConfigurationRevision)

-- | The unique ID that Amazon MQ generates for the configuration.
describeConfigurationRevision_configurationId :: Lens.Lens' DescribeConfigurationRevision Prelude.Text
describeConfigurationRevision_configurationId = Lens.lens (\DescribeConfigurationRevision' {configurationId} -> configurationId) (\s@DescribeConfigurationRevision' {} a -> s {configurationId = a} :: DescribeConfigurationRevision)

instance
  Core.AWSRequest
    DescribeConfigurationRevision
  where
  type
    AWSResponse DescribeConfigurationRevision =
      DescribeConfigurationRevisionResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeConfigurationRevisionResponse'
            Prelude.<$> (x Core..?> "created")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "configurationId")
            Prelude.<*> (x Core..?> "data")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeConfigurationRevision
  where
  hashWithSalt _salt DescribeConfigurationRevision' {..} =
    _salt `Prelude.hashWithSalt` configurationRevision
      `Prelude.hashWithSalt` configurationId

instance Prelude.NFData DescribeConfigurationRevision where
  rnf DescribeConfigurationRevision' {..} =
    Prelude.rnf configurationRevision
      `Prelude.seq` Prelude.rnf configurationId

instance Core.ToHeaders DescribeConfigurationRevision where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeConfigurationRevision where
  toPath DescribeConfigurationRevision' {..} =
    Prelude.mconcat
      [ "/v1/configurations/",
        Core.toBS configurationId,
        "/revisions/",
        Core.toBS configurationRevision
      ]

instance Core.ToQuery DescribeConfigurationRevision where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeConfigurationRevisionResponse' smart constructor.
data DescribeConfigurationRevisionResponse = DescribeConfigurationRevisionResponse'
  { -- | Required. The date and time of the configuration.
    created :: Prelude.Maybe Core.POSIX,
    -- | The description of the configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | Required. The unique ID that Amazon MQ generates for the configuration.
    configurationId :: Prelude.Maybe Prelude.Text,
    -- | Required. The base64-encoded XML configuration.
    data' :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeConfigurationRevisionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'created', 'describeConfigurationRevisionResponse_created' - Required. The date and time of the configuration.
--
-- 'description', 'describeConfigurationRevisionResponse_description' - The description of the configuration.
--
-- 'configurationId', 'describeConfigurationRevisionResponse_configurationId' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- 'data'', 'describeConfigurationRevisionResponse_data' - Required. The base64-encoded XML configuration.
--
-- 'httpStatus', 'describeConfigurationRevisionResponse_httpStatus' - The response's http status code.
newDescribeConfigurationRevisionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeConfigurationRevisionResponse
newDescribeConfigurationRevisionResponse pHttpStatus_ =
  DescribeConfigurationRevisionResponse'
    { created =
        Prelude.Nothing,
      description = Prelude.Nothing,
      configurationId = Prelude.Nothing,
      data' = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Required. The date and time of the configuration.
describeConfigurationRevisionResponse_created :: Lens.Lens' DescribeConfigurationRevisionResponse (Prelude.Maybe Prelude.UTCTime)
describeConfigurationRevisionResponse_created = Lens.lens (\DescribeConfigurationRevisionResponse' {created} -> created) (\s@DescribeConfigurationRevisionResponse' {} a -> s {created = a} :: DescribeConfigurationRevisionResponse) Prelude.. Lens.mapping Core._Time

-- | The description of the configuration.
describeConfigurationRevisionResponse_description :: Lens.Lens' DescribeConfigurationRevisionResponse (Prelude.Maybe Prelude.Text)
describeConfigurationRevisionResponse_description = Lens.lens (\DescribeConfigurationRevisionResponse' {description} -> description) (\s@DescribeConfigurationRevisionResponse' {} a -> s {description = a} :: DescribeConfigurationRevisionResponse)

-- | Required. The unique ID that Amazon MQ generates for the configuration.
describeConfigurationRevisionResponse_configurationId :: Lens.Lens' DescribeConfigurationRevisionResponse (Prelude.Maybe Prelude.Text)
describeConfigurationRevisionResponse_configurationId = Lens.lens (\DescribeConfigurationRevisionResponse' {configurationId} -> configurationId) (\s@DescribeConfigurationRevisionResponse' {} a -> s {configurationId = a} :: DescribeConfigurationRevisionResponse)

-- | Required. The base64-encoded XML configuration.
describeConfigurationRevisionResponse_data :: Lens.Lens' DescribeConfigurationRevisionResponse (Prelude.Maybe Prelude.Text)
describeConfigurationRevisionResponse_data = Lens.lens (\DescribeConfigurationRevisionResponse' {data'} -> data') (\s@DescribeConfigurationRevisionResponse' {} a -> s {data' = a} :: DescribeConfigurationRevisionResponse)

-- | The response's http status code.
describeConfigurationRevisionResponse_httpStatus :: Lens.Lens' DescribeConfigurationRevisionResponse Prelude.Int
describeConfigurationRevisionResponse_httpStatus = Lens.lens (\DescribeConfigurationRevisionResponse' {httpStatus} -> httpStatus) (\s@DescribeConfigurationRevisionResponse' {} a -> s {httpStatus = a} :: DescribeConfigurationRevisionResponse)

instance
  Prelude.NFData
    DescribeConfigurationRevisionResponse
  where
  rnf DescribeConfigurationRevisionResponse' {..} =
    Prelude.rnf created
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf configurationId
      `Prelude.seq` Prelude.rnf data'
      `Prelude.seq` Prelude.rnf httpStatus
