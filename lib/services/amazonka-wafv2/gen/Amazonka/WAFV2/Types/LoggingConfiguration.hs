{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.WAFV2.Types.LoggingConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.LoggingConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WAFV2.Types.FieldToMatch
import Amazonka.WAFV2.Types.LoggingFilter

-- | Defines an association between logging destinations and a web ACL
-- resource, for logging from WAF. As part of the association, you can
-- specify parts of the standard logging fields to keep out of the logs and
-- you can specify filters so that you log only a subset of the logging
-- records.
--
-- You can define one logging destination per web ACL.
--
-- You can access information about the traffic that WAF inspects using the
-- following steps:
--
-- 1.  Create your logging destination. You can use an Amazon CloudWatch
--     Logs log group, an Amazon Simple Storage Service (Amazon S3) bucket,
--     or an Amazon Kinesis Data Firehose. For information about
--     configuring logging destinations and the permissions that are
--     required for each, see
--     <https://docs.aws.amazon.com/waf/latest/developerguide/logging.html Logging web ACL traffic information>
--     in the /WAF Developer Guide/.
--
-- 2.  Associate your logging destination to your web ACL using a
--     @PutLoggingConfiguration@ request.
--
-- When you successfully enable logging using a @PutLoggingConfiguration@
-- request, WAF creates an additional role or policy that is required to
-- write logs to the logging destination. For an Amazon CloudWatch Logs log
-- group, WAF creates a resource policy on the log group. For an Amazon S3
-- bucket, WAF creates a bucket policy. For an Amazon Kinesis Data
-- Firehose, WAF creates a service-linked role.
--
-- For additional information about web ACL logging, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/logging.html Logging web ACL traffic information>
-- in the /WAF Developer Guide/.
--
-- /See:/ 'newLoggingConfiguration' smart constructor.
data LoggingConfiguration = LoggingConfiguration'
  { -- | Indicates whether the logging configuration was created by Firewall
    -- Manager, as part of an WAF policy configuration. If true, only Firewall
    -- Manager can modify or delete the configuration.
    managedByFirewallManager :: Prelude.Maybe Prelude.Bool,
    -- | Filtering that specifies which web requests are kept in the logs and
    -- which are dropped. You can filter on the rule action and on the web
    -- request labels that were applied by matching rules during web ACL
    -- evaluation.
    loggingFilter :: Prelude.Maybe LoggingFilter,
    -- | The parts of the request that you want to keep out of the logs. For
    -- example, if you redact the @SingleHeader@ field, the @HEADER@ field in
    -- the logs will be @xxx@.
    --
    -- You can specify only the following fields for redaction: @UriPath@,
    -- @QueryString@, @SingleHeader@, @Method@, and @JsonBody@.
    redactedFields :: Prelude.Maybe [FieldToMatch],
    -- | The Amazon Resource Name (ARN) of the web ACL that you want to associate
    -- with @LogDestinationConfigs@.
    resourceArn :: Prelude.Text,
    -- | The logging destination configuration that you want to associate with
    -- the web ACL.
    --
    -- You can associate one logging destination to a web ACL.
    logDestinationConfigs :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoggingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'managedByFirewallManager', 'loggingConfiguration_managedByFirewallManager' - Indicates whether the logging configuration was created by Firewall
-- Manager, as part of an WAF policy configuration. If true, only Firewall
-- Manager can modify or delete the configuration.
--
-- 'loggingFilter', 'loggingConfiguration_loggingFilter' - Filtering that specifies which web requests are kept in the logs and
-- which are dropped. You can filter on the rule action and on the web
-- request labels that were applied by matching rules during web ACL
-- evaluation.
--
-- 'redactedFields', 'loggingConfiguration_redactedFields' - The parts of the request that you want to keep out of the logs. For
-- example, if you redact the @SingleHeader@ field, the @HEADER@ field in
-- the logs will be @xxx@.
--
-- You can specify only the following fields for redaction: @UriPath@,
-- @QueryString@, @SingleHeader@, @Method@, and @JsonBody@.
--
-- 'resourceArn', 'loggingConfiguration_resourceArn' - The Amazon Resource Name (ARN) of the web ACL that you want to associate
-- with @LogDestinationConfigs@.
--
-- 'logDestinationConfigs', 'loggingConfiguration_logDestinationConfigs' - The logging destination configuration that you want to associate with
-- the web ACL.
--
-- You can associate one logging destination to a web ACL.
newLoggingConfiguration ::
  -- | 'resourceArn'
  Prelude.Text ->
  -- | 'logDestinationConfigs'
  Prelude.NonEmpty Prelude.Text ->
  LoggingConfiguration
newLoggingConfiguration
  pResourceArn_
  pLogDestinationConfigs_ =
    LoggingConfiguration'
      { managedByFirewallManager =
          Prelude.Nothing,
        loggingFilter = Prelude.Nothing,
        redactedFields = Prelude.Nothing,
        resourceArn = pResourceArn_,
        logDestinationConfigs =
          Lens.coerced Lens.# pLogDestinationConfigs_
      }

-- | Indicates whether the logging configuration was created by Firewall
-- Manager, as part of an WAF policy configuration. If true, only Firewall
-- Manager can modify or delete the configuration.
loggingConfiguration_managedByFirewallManager :: Lens.Lens' LoggingConfiguration (Prelude.Maybe Prelude.Bool)
loggingConfiguration_managedByFirewallManager = Lens.lens (\LoggingConfiguration' {managedByFirewallManager} -> managedByFirewallManager) (\s@LoggingConfiguration' {} a -> s {managedByFirewallManager = a} :: LoggingConfiguration)

-- | Filtering that specifies which web requests are kept in the logs and
-- which are dropped. You can filter on the rule action and on the web
-- request labels that were applied by matching rules during web ACL
-- evaluation.
loggingConfiguration_loggingFilter :: Lens.Lens' LoggingConfiguration (Prelude.Maybe LoggingFilter)
loggingConfiguration_loggingFilter = Lens.lens (\LoggingConfiguration' {loggingFilter} -> loggingFilter) (\s@LoggingConfiguration' {} a -> s {loggingFilter = a} :: LoggingConfiguration)

-- | The parts of the request that you want to keep out of the logs. For
-- example, if you redact the @SingleHeader@ field, the @HEADER@ field in
-- the logs will be @xxx@.
--
-- You can specify only the following fields for redaction: @UriPath@,
-- @QueryString@, @SingleHeader@, @Method@, and @JsonBody@.
loggingConfiguration_redactedFields :: Lens.Lens' LoggingConfiguration (Prelude.Maybe [FieldToMatch])
loggingConfiguration_redactedFields = Lens.lens (\LoggingConfiguration' {redactedFields} -> redactedFields) (\s@LoggingConfiguration' {} a -> s {redactedFields = a} :: LoggingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the web ACL that you want to associate
-- with @LogDestinationConfigs@.
loggingConfiguration_resourceArn :: Lens.Lens' LoggingConfiguration Prelude.Text
loggingConfiguration_resourceArn = Lens.lens (\LoggingConfiguration' {resourceArn} -> resourceArn) (\s@LoggingConfiguration' {} a -> s {resourceArn = a} :: LoggingConfiguration)

-- | The logging destination configuration that you want to associate with
-- the web ACL.
--
-- You can associate one logging destination to a web ACL.
loggingConfiguration_logDestinationConfigs :: Lens.Lens' LoggingConfiguration (Prelude.NonEmpty Prelude.Text)
loggingConfiguration_logDestinationConfigs = Lens.lens (\LoggingConfiguration' {logDestinationConfigs} -> logDestinationConfigs) (\s@LoggingConfiguration' {} a -> s {logDestinationConfigs = a} :: LoggingConfiguration) Prelude.. Lens.coerced

instance Core.FromJSON LoggingConfiguration where
  parseJSON =
    Core.withObject
      "LoggingConfiguration"
      ( \x ->
          LoggingConfiguration'
            Prelude.<$> (x Core..:? "ManagedByFirewallManager")
            Prelude.<*> (x Core..:? "LoggingFilter")
            Prelude.<*> (x Core..:? "RedactedFields" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "ResourceArn")
            Prelude.<*> (x Core..: "LogDestinationConfigs")
      )

instance Prelude.Hashable LoggingConfiguration where
  hashWithSalt _salt LoggingConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` managedByFirewallManager
      `Prelude.hashWithSalt` loggingFilter
      `Prelude.hashWithSalt` redactedFields
      `Prelude.hashWithSalt` resourceArn
      `Prelude.hashWithSalt` logDestinationConfigs

instance Prelude.NFData LoggingConfiguration where
  rnf LoggingConfiguration' {..} =
    Prelude.rnf managedByFirewallManager
      `Prelude.seq` Prelude.rnf loggingFilter
      `Prelude.seq` Prelude.rnf redactedFields
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf logDestinationConfigs

instance Core.ToJSON LoggingConfiguration where
  toJSON LoggingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ManagedByFirewallManager" Core..=)
              Prelude.<$> managedByFirewallManager,
            ("LoggingFilter" Core..=) Prelude.<$> loggingFilter,
            ("RedactedFields" Core..=)
              Prelude.<$> redactedFields,
            Prelude.Just ("ResourceArn" Core..= resourceArn),
            Prelude.Just
              ( "LogDestinationConfigs"
                  Core..= logDestinationConfigs
              )
          ]
      )
