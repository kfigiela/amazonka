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
-- Module      : Amazonka.Kafka.DescribeConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of this MSK configuration.
module Amazonka.Kafka.DescribeConfiguration
  ( -- * Creating a Request
    DescribeConfiguration (..),
    newDescribeConfiguration,

    -- * Request Lenses
    describeConfiguration_arn,

    -- * Destructuring the Response
    DescribeConfigurationResponse (..),
    newDescribeConfigurationResponse,

    -- * Response Lenses
    describeConfigurationResponse_latestRevision,
    describeConfigurationResponse_name,
    describeConfigurationResponse_kafkaVersions,
    describeConfigurationResponse_arn,
    describeConfigurationResponse_state,
    describeConfigurationResponse_description,
    describeConfigurationResponse_creationTime,
    describeConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Kafka.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeConfiguration' smart constructor.
data DescribeConfiguration = DescribeConfiguration'
  { -- | The Amazon Resource Name (ARN) that uniquely identifies an MSK
    -- configuration and all of its revisions.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'describeConfiguration_arn' - The Amazon Resource Name (ARN) that uniquely identifies an MSK
-- configuration and all of its revisions.
newDescribeConfiguration ::
  -- | 'arn'
  Prelude.Text ->
  DescribeConfiguration
newDescribeConfiguration pArn_ =
  DescribeConfiguration' {arn = pArn_}

-- | The Amazon Resource Name (ARN) that uniquely identifies an MSK
-- configuration and all of its revisions.
describeConfiguration_arn :: Lens.Lens' DescribeConfiguration Prelude.Text
describeConfiguration_arn = Lens.lens (\DescribeConfiguration' {arn} -> arn) (\s@DescribeConfiguration' {} a -> s {arn = a} :: DescribeConfiguration)

instance Core.AWSRequest DescribeConfiguration where
  type
    AWSResponse DescribeConfiguration =
      DescribeConfigurationResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeConfigurationResponse'
            Prelude.<$> (x Core..?> "latestRevision")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "kafkaVersions" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "state")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "creationTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeConfiguration where
  hashWithSalt _salt DescribeConfiguration' {..} =
    _salt `Prelude.hashWithSalt` arn

instance Prelude.NFData DescribeConfiguration where
  rnf DescribeConfiguration' {..} = Prelude.rnf arn

instance Core.ToHeaders DescribeConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeConfiguration where
  toPath DescribeConfiguration' {..} =
    Prelude.mconcat
      ["/v1/configurations/", Core.toBS arn]

instance Core.ToQuery DescribeConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeConfigurationResponse' smart constructor.
data DescribeConfigurationResponse = DescribeConfigurationResponse'
  { -- | Latest revision of the configuration.
    latestRevision :: Prelude.Maybe ConfigurationRevision,
    -- | The name of the configuration.
    name :: Prelude.Maybe Prelude.Text,
    -- | The versions of Apache Kafka with which you can use this MSK
    -- configuration.
    kafkaVersions :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the configuration.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The state of the configuration. The possible states are ACTIVE,
    -- DELETING, and DELETE_FAILED.
    state :: Prelude.Maybe ConfigurationState,
    -- | The description of the configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The time when the configuration was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'latestRevision', 'describeConfigurationResponse_latestRevision' - Latest revision of the configuration.
--
-- 'name', 'describeConfigurationResponse_name' - The name of the configuration.
--
-- 'kafkaVersions', 'describeConfigurationResponse_kafkaVersions' - The versions of Apache Kafka with which you can use this MSK
-- configuration.
--
-- 'arn', 'describeConfigurationResponse_arn' - The Amazon Resource Name (ARN) of the configuration.
--
-- 'state', 'describeConfigurationResponse_state' - The state of the configuration. The possible states are ACTIVE,
-- DELETING, and DELETE_FAILED.
--
-- 'description', 'describeConfigurationResponse_description' - The description of the configuration.
--
-- 'creationTime', 'describeConfigurationResponse_creationTime' - The time when the configuration was created.
--
-- 'httpStatus', 'describeConfigurationResponse_httpStatus' - The response's http status code.
newDescribeConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeConfigurationResponse
newDescribeConfigurationResponse pHttpStatus_ =
  DescribeConfigurationResponse'
    { latestRevision =
        Prelude.Nothing,
      name = Prelude.Nothing,
      kafkaVersions = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      description = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Latest revision of the configuration.
describeConfigurationResponse_latestRevision :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe ConfigurationRevision)
describeConfigurationResponse_latestRevision = Lens.lens (\DescribeConfigurationResponse' {latestRevision} -> latestRevision) (\s@DescribeConfigurationResponse' {} a -> s {latestRevision = a} :: DescribeConfigurationResponse)

-- | The name of the configuration.
describeConfigurationResponse_name :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_name = Lens.lens (\DescribeConfigurationResponse' {name} -> name) (\s@DescribeConfigurationResponse' {} a -> s {name = a} :: DescribeConfigurationResponse)

-- | The versions of Apache Kafka with which you can use this MSK
-- configuration.
describeConfigurationResponse_kafkaVersions :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe [Prelude.Text])
describeConfigurationResponse_kafkaVersions = Lens.lens (\DescribeConfigurationResponse' {kafkaVersions} -> kafkaVersions) (\s@DescribeConfigurationResponse' {} a -> s {kafkaVersions = a} :: DescribeConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the configuration.
describeConfigurationResponse_arn :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_arn = Lens.lens (\DescribeConfigurationResponse' {arn} -> arn) (\s@DescribeConfigurationResponse' {} a -> s {arn = a} :: DescribeConfigurationResponse)

-- | The state of the configuration. The possible states are ACTIVE,
-- DELETING, and DELETE_FAILED.
describeConfigurationResponse_state :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe ConfigurationState)
describeConfigurationResponse_state = Lens.lens (\DescribeConfigurationResponse' {state} -> state) (\s@DescribeConfigurationResponse' {} a -> s {state = a} :: DescribeConfigurationResponse)

-- | The description of the configuration.
describeConfigurationResponse_description :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_description = Lens.lens (\DescribeConfigurationResponse' {description} -> description) (\s@DescribeConfigurationResponse' {} a -> s {description = a} :: DescribeConfigurationResponse)

-- | The time when the configuration was created.
describeConfigurationResponse_creationTime :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
describeConfigurationResponse_creationTime = Lens.lens (\DescribeConfigurationResponse' {creationTime} -> creationTime) (\s@DescribeConfigurationResponse' {} a -> s {creationTime = a} :: DescribeConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeConfigurationResponse_httpStatus :: Lens.Lens' DescribeConfigurationResponse Prelude.Int
describeConfigurationResponse_httpStatus = Lens.lens (\DescribeConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeConfigurationResponse)

instance Prelude.NFData DescribeConfigurationResponse where
  rnf DescribeConfigurationResponse' {..} =
    Prelude.rnf latestRevision
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf kafkaVersions
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf httpStatus
