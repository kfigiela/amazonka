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
-- Module      : Amazonka.Inspector2.DescribeOrganizationConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe Amazon Inspector configuration settings for an Amazon Web
-- Services organization
module Amazonka.Inspector2.DescribeOrganizationConfiguration
  ( -- * Creating a Request
    DescribeOrganizationConfiguration (..),
    newDescribeOrganizationConfiguration,

    -- * Destructuring the Response
    DescribeOrganizationConfigurationResponse (..),
    newDescribeOrganizationConfigurationResponse,

    -- * Response Lenses
    describeOrganizationConfigurationResponse_maxAccountLimitReached,
    describeOrganizationConfigurationResponse_autoEnable,
    describeOrganizationConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeOrganizationConfiguration' smart constructor.
data DescribeOrganizationConfiguration = DescribeOrganizationConfiguration'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrganizationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDescribeOrganizationConfiguration ::
  DescribeOrganizationConfiguration
newDescribeOrganizationConfiguration =
  DescribeOrganizationConfiguration'

instance
  Core.AWSRequest
    DescribeOrganizationConfiguration
  where
  type
    AWSResponse DescribeOrganizationConfiguration =
      DescribeOrganizationConfigurationResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeOrganizationConfigurationResponse'
            Prelude.<$> (x Core..?> "maxAccountLimitReached")
              Prelude.<*> (x Core..?> "autoEnable")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeOrganizationConfiguration
  where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance
  Prelude.NFData
    DescribeOrganizationConfiguration
  where
  rnf _ = ()

instance
  Core.ToHeaders
    DescribeOrganizationConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeOrganizationConfiguration
  where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance
  Core.ToPath
    DescribeOrganizationConfiguration
  where
  toPath =
    Prelude.const "/organizationconfiguration/describe"

instance
  Core.ToQuery
    DescribeOrganizationConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeOrganizationConfigurationResponse' smart constructor.
data DescribeOrganizationConfigurationResponse = DescribeOrganizationConfigurationResponse'
  { -- | Represents whether your organization has reached the maximum Amazon Web
    -- Services account limit for Amazon Inspector.
    maxAccountLimitReached :: Prelude.Maybe Prelude.Bool,
    -- | The scan types are automatically enabled for new members of your
    -- organization.
    autoEnable :: Prelude.Maybe AutoEnable,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrganizationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxAccountLimitReached', 'describeOrganizationConfigurationResponse_maxAccountLimitReached' - Represents whether your organization has reached the maximum Amazon Web
-- Services account limit for Amazon Inspector.
--
-- 'autoEnable', 'describeOrganizationConfigurationResponse_autoEnable' - The scan types are automatically enabled for new members of your
-- organization.
--
-- 'httpStatus', 'describeOrganizationConfigurationResponse_httpStatus' - The response's http status code.
newDescribeOrganizationConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeOrganizationConfigurationResponse
newDescribeOrganizationConfigurationResponse
  pHttpStatus_ =
    DescribeOrganizationConfigurationResponse'
      { maxAccountLimitReached =
          Prelude.Nothing,
        autoEnable = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Represents whether your organization has reached the maximum Amazon Web
-- Services account limit for Amazon Inspector.
describeOrganizationConfigurationResponse_maxAccountLimitReached :: Lens.Lens' DescribeOrganizationConfigurationResponse (Prelude.Maybe Prelude.Bool)
describeOrganizationConfigurationResponse_maxAccountLimitReached = Lens.lens (\DescribeOrganizationConfigurationResponse' {maxAccountLimitReached} -> maxAccountLimitReached) (\s@DescribeOrganizationConfigurationResponse' {} a -> s {maxAccountLimitReached = a} :: DescribeOrganizationConfigurationResponse)

-- | The scan types are automatically enabled for new members of your
-- organization.
describeOrganizationConfigurationResponse_autoEnable :: Lens.Lens' DescribeOrganizationConfigurationResponse (Prelude.Maybe AutoEnable)
describeOrganizationConfigurationResponse_autoEnable = Lens.lens (\DescribeOrganizationConfigurationResponse' {autoEnable} -> autoEnable) (\s@DescribeOrganizationConfigurationResponse' {} a -> s {autoEnable = a} :: DescribeOrganizationConfigurationResponse)

-- | The response's http status code.
describeOrganizationConfigurationResponse_httpStatus :: Lens.Lens' DescribeOrganizationConfigurationResponse Prelude.Int
describeOrganizationConfigurationResponse_httpStatus = Lens.lens (\DescribeOrganizationConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeOrganizationConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeOrganizationConfigurationResponse)

instance
  Prelude.NFData
    DescribeOrganizationConfigurationResponse
  where
  rnf DescribeOrganizationConfigurationResponse' {..} =
    Prelude.rnf maxAccountLimitReached
      `Prelude.seq` Prelude.rnf autoEnable
      `Prelude.seq` Prelude.rnf httpStatus
