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
-- Module      : Amazonka.Rum.CreateAppMonitor
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Amazon CloudWatch RUM app monitor, which collects telemetry
-- data from your application and sends that data to RUM. The data includes
-- performance and reliability information such as page load time,
-- client-side errors, and user behavior.
--
-- You use this operation only to create a new app monitor. To update an
-- existing app monitor, use
-- <https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html UpdateAppMonitor>
-- instead.
--
-- After you create an app monitor, sign in to the CloudWatch RUM console
-- to get the JavaScript code snippet to add to your web application. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html How do I find a code snippet that I\'ve already generated?>
module Amazonka.Rum.CreateAppMonitor
  ( -- * Creating a Request
    CreateAppMonitor (..),
    newCreateAppMonitor,

    -- * Request Lenses
    createAppMonitor_tags,
    createAppMonitor_appMonitorConfiguration,
    createAppMonitor_cwLogEnabled,
    createAppMonitor_domain,
    createAppMonitor_name,

    -- * Destructuring the Response
    CreateAppMonitorResponse (..),
    newCreateAppMonitorResponse,

    -- * Response Lenses
    createAppMonitorResponse_id,
    createAppMonitorResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Rum.Types

-- | /See:/ 'newCreateAppMonitor' smart constructor.
data CreateAppMonitor = CreateAppMonitor'
  { -- | Assigns one or more tags (key-value pairs) to the app monitor.
    --
    -- Tags can help you organize and categorize your resources. You can also
    -- use them to scope user permissions by granting a user permission to
    -- access or change only resources with certain tag values.
    --
    -- Tags don\'t have any semantic meaning to Amazon Web Services and are
    -- interpreted strictly as strings of characters.
    --
    -- >  <p>You can associate as many as 50 tags with an app monitor.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A structure that contains much of the configuration data for the app
    -- monitor. If you are using Amazon Cognito for authorization, you must
    -- include this structure in your request, and it must include the ID of
    -- the Amazon Cognito identity pool to use for authorization. If you don\'t
    -- include @AppMonitorConfiguration@, you must set up your own
    -- authorization method. For more information, see
    -- <https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html Authorize your application to send data to Amazon Web Services>.
    --
    -- If you omit this argument, the sample rate used for RUM is set to 10% of
    -- the user sessions.
    appMonitorConfiguration :: Prelude.Maybe AppMonitorConfiguration,
    -- | Data collected by RUM is kept by RUM for 30 days and then deleted. This
    -- parameter specifies whether RUM sends a copy of this telemetry data to
    -- Amazon CloudWatch Logs in your account. This enables you to keep the
    -- telemetry data for more than 30 days, but it does incur Amazon
    -- CloudWatch Logs charges.
    --
    -- If you omit this parameter, the default is @false@.
    cwLogEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The top-level internet domain name for which your application has
    -- administrative authority.
    domain :: Prelude.Text,
    -- | A name for the app monitor.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAppMonitor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createAppMonitor_tags' - Assigns one or more tags (key-value pairs) to the app monitor.
--
-- Tags can help you organize and categorize your resources. You can also
-- use them to scope user permissions by granting a user permission to
-- access or change only resources with certain tag values.
--
-- Tags don\'t have any semantic meaning to Amazon Web Services and are
-- interpreted strictly as strings of characters.
--
-- >  <p>You can associate as many as 50 tags with an app monitor.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
--
-- 'appMonitorConfiguration', 'createAppMonitor_appMonitorConfiguration' - A structure that contains much of the configuration data for the app
-- monitor. If you are using Amazon Cognito for authorization, you must
-- include this structure in your request, and it must include the ID of
-- the Amazon Cognito identity pool to use for authorization. If you don\'t
-- include @AppMonitorConfiguration@, you must set up your own
-- authorization method. For more information, see
-- <https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html Authorize your application to send data to Amazon Web Services>.
--
-- If you omit this argument, the sample rate used for RUM is set to 10% of
-- the user sessions.
--
-- 'cwLogEnabled', 'createAppMonitor_cwLogEnabled' - Data collected by RUM is kept by RUM for 30 days and then deleted. This
-- parameter specifies whether RUM sends a copy of this telemetry data to
-- Amazon CloudWatch Logs in your account. This enables you to keep the
-- telemetry data for more than 30 days, but it does incur Amazon
-- CloudWatch Logs charges.
--
-- If you omit this parameter, the default is @false@.
--
-- 'domain', 'createAppMonitor_domain' - The top-level internet domain name for which your application has
-- administrative authority.
--
-- 'name', 'createAppMonitor_name' - A name for the app monitor.
newCreateAppMonitor ::
  -- | 'domain'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CreateAppMonitor
newCreateAppMonitor pDomain_ pName_ =
  CreateAppMonitor'
    { tags = Prelude.Nothing,
      appMonitorConfiguration = Prelude.Nothing,
      cwLogEnabled = Prelude.Nothing,
      domain = pDomain_,
      name = pName_
    }

-- | Assigns one or more tags (key-value pairs) to the app monitor.
--
-- Tags can help you organize and categorize your resources. You can also
-- use them to scope user permissions by granting a user permission to
-- access or change only resources with certain tag values.
--
-- Tags don\'t have any semantic meaning to Amazon Web Services and are
-- interpreted strictly as strings of characters.
--
-- >  <p>You can associate as many as 50 tags with an app monitor.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
createAppMonitor_tags :: Lens.Lens' CreateAppMonitor (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAppMonitor_tags = Lens.lens (\CreateAppMonitor' {tags} -> tags) (\s@CreateAppMonitor' {} a -> s {tags = a} :: CreateAppMonitor) Prelude.. Lens.mapping Lens.coerced

-- | A structure that contains much of the configuration data for the app
-- monitor. If you are using Amazon Cognito for authorization, you must
-- include this structure in your request, and it must include the ID of
-- the Amazon Cognito identity pool to use for authorization. If you don\'t
-- include @AppMonitorConfiguration@, you must set up your own
-- authorization method. For more information, see
-- <https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html Authorize your application to send data to Amazon Web Services>.
--
-- If you omit this argument, the sample rate used for RUM is set to 10% of
-- the user sessions.
createAppMonitor_appMonitorConfiguration :: Lens.Lens' CreateAppMonitor (Prelude.Maybe AppMonitorConfiguration)
createAppMonitor_appMonitorConfiguration = Lens.lens (\CreateAppMonitor' {appMonitorConfiguration} -> appMonitorConfiguration) (\s@CreateAppMonitor' {} a -> s {appMonitorConfiguration = a} :: CreateAppMonitor)

-- | Data collected by RUM is kept by RUM for 30 days and then deleted. This
-- parameter specifies whether RUM sends a copy of this telemetry data to
-- Amazon CloudWatch Logs in your account. This enables you to keep the
-- telemetry data for more than 30 days, but it does incur Amazon
-- CloudWatch Logs charges.
--
-- If you omit this parameter, the default is @false@.
createAppMonitor_cwLogEnabled :: Lens.Lens' CreateAppMonitor (Prelude.Maybe Prelude.Bool)
createAppMonitor_cwLogEnabled = Lens.lens (\CreateAppMonitor' {cwLogEnabled} -> cwLogEnabled) (\s@CreateAppMonitor' {} a -> s {cwLogEnabled = a} :: CreateAppMonitor)

-- | The top-level internet domain name for which your application has
-- administrative authority.
createAppMonitor_domain :: Lens.Lens' CreateAppMonitor Prelude.Text
createAppMonitor_domain = Lens.lens (\CreateAppMonitor' {domain} -> domain) (\s@CreateAppMonitor' {} a -> s {domain = a} :: CreateAppMonitor)

-- | A name for the app monitor.
createAppMonitor_name :: Lens.Lens' CreateAppMonitor Prelude.Text
createAppMonitor_name = Lens.lens (\CreateAppMonitor' {name} -> name) (\s@CreateAppMonitor' {} a -> s {name = a} :: CreateAppMonitor)

instance Core.AWSRequest CreateAppMonitor where
  type
    AWSResponse CreateAppMonitor =
      CreateAppMonitorResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAppMonitorResponse'
            Prelude.<$> (x Core..?> "Id")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAppMonitor where
  hashWithSalt _salt CreateAppMonitor' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` appMonitorConfiguration
      `Prelude.hashWithSalt` cwLogEnabled
      `Prelude.hashWithSalt` domain
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateAppMonitor where
  rnf CreateAppMonitor' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf appMonitorConfiguration
      `Prelude.seq` Prelude.rnf cwLogEnabled
      `Prelude.seq` Prelude.rnf domain
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateAppMonitor where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAppMonitor where
  toJSON CreateAppMonitor' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("AppMonitorConfiguration" Core..=)
              Prelude.<$> appMonitorConfiguration,
            ("CwLogEnabled" Core..=) Prelude.<$> cwLogEnabled,
            Prelude.Just ("Domain" Core..= domain),
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateAppMonitor where
  toPath = Prelude.const "/appmonitor"

instance Core.ToQuery CreateAppMonitor where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAppMonitorResponse' smart constructor.
data CreateAppMonitorResponse = CreateAppMonitorResponse'
  { -- | The unique ID of the new app monitor.
    id :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAppMonitorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'createAppMonitorResponse_id' - The unique ID of the new app monitor.
--
-- 'httpStatus', 'createAppMonitorResponse_httpStatus' - The response's http status code.
newCreateAppMonitorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAppMonitorResponse
newCreateAppMonitorResponse pHttpStatus_ =
  CreateAppMonitorResponse'
    { id = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique ID of the new app monitor.
createAppMonitorResponse_id :: Lens.Lens' CreateAppMonitorResponse (Prelude.Maybe Prelude.Text)
createAppMonitorResponse_id = Lens.lens (\CreateAppMonitorResponse' {id} -> id) (\s@CreateAppMonitorResponse' {} a -> s {id = a} :: CreateAppMonitorResponse)

-- | The response's http status code.
createAppMonitorResponse_httpStatus :: Lens.Lens' CreateAppMonitorResponse Prelude.Int
createAppMonitorResponse_httpStatus = Lens.lens (\CreateAppMonitorResponse' {httpStatus} -> httpStatus) (\s@CreateAppMonitorResponse' {} a -> s {httpStatus = a} :: CreateAppMonitorResponse)

instance Prelude.NFData CreateAppMonitorResponse where
  rnf CreateAppMonitorResponse' {..} =
    Prelude.rnf id `Prelude.seq` Prelude.rnf httpStatus
