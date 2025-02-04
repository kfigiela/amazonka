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
-- Module      : Amazonka.Kendra.Types.ConfluenceConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.ConfluenceConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.ConfluenceAttachmentConfiguration
import Amazonka.Kendra.Types.ConfluenceAuthenticationType
import Amazonka.Kendra.Types.ConfluenceBlogConfiguration
import Amazonka.Kendra.Types.ConfluencePageConfiguration
import Amazonka.Kendra.Types.ConfluenceSpaceConfiguration
import Amazonka.Kendra.Types.ConfluenceVersion
import Amazonka.Kendra.Types.DataSourceVpcConfiguration
import Amazonka.Kendra.Types.ProxyConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the configuration information to connect to Confluence as your
-- data source.
--
-- /See:/ 'newConfluenceConfiguration' smart constructor.
data ConfluenceConfiguration = ConfluenceConfiguration'
  { -- | Configuration information for an Amazon Virtual Private Cloud to connect
    -- to your Confluence. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
    vpcConfiguration :: Prelude.Maybe DataSourceVpcConfiguration,
    -- | Configuration information to connect to your Confluence URL instance via
    -- a web proxy. You can use this option for Confluence Server.
    --
    -- You must provide the website host name and port number. For example, the
    -- host name of /https:\/\/a.example.com\/page1.html/ is \"a.example.com\"
    -- and the port is 443, the standard port for HTTPS.
    --
    -- Web proxy credentials are optional and you can use them to connect to a
    -- web proxy server that requires basic authentication of user name and
    -- password. To store web proxy credentials, you use a secret in Secrets
    -- Manager.
    --
    -- It is recommended that you follow best security practices when
    -- configuring your web proxy. This includes setting up throttling, setting
    -- up logging and monitoring, and applying security patches on a regular
    -- basis. If you use your web proxy with multiple data sources, sync jobs
    -- that occur at the same time could strain the load on your proxy. It is
    -- recommended you prepare your proxy beforehand for any security and load
    -- requirements.
    proxyConfiguration :: Prelude.Maybe ProxyConfiguration,
    -- | Configuration information for indexing Confluence pages.
    pageConfiguration :: Prelude.Maybe ConfluencePageConfiguration,
    -- | Whether you want to connect to Confluence using basic authentication of
    -- user name and password, or a personal access token. You can use a
    -- personal access token for Confluence Server.
    authenticationType :: Prelude.Maybe ConfluenceAuthenticationType,
    -- | A list of regular expression patterns to include certain blog posts,
    -- pages, spaces, or attachments in your Confluence. Content that matches
    -- the patterns are included in the index. Content that doesn\'t match the
    -- patterns is excluded from the index. If content matches both an
    -- inclusion and exclusion pattern, the exclusion pattern takes precedence
    -- and the content isn\'t included in the index.
    inclusionPatterns :: Prelude.Maybe [Prelude.Text],
    -- | Configuration information for indexing Confluence spaces.
    spaceConfiguration :: Prelude.Maybe ConfluenceSpaceConfiguration,
    -- | Configuration information for indexing Confluence blogs.
    blogConfiguration :: Prelude.Maybe ConfluenceBlogConfiguration,
    -- | Configuration information for indexing attachments to Confluence blogs
    -- and pages.
    attachmentConfiguration :: Prelude.Maybe ConfluenceAttachmentConfiguration,
    -- | A list of regular expression patterns to exclude certain blog posts,
    -- pages, spaces, or attachments in your Confluence. Content that matches
    -- the patterns are excluded from the index. Content that doesn\'t match
    -- the patterns is included in the index. If content matches both an
    -- inclusion and exclusion pattern, the exclusion pattern takes precedence
    -- and the content isn\'t included in the index.
    exclusionPatterns :: Prelude.Maybe [Prelude.Text],
    -- | The URL of your Confluence instance. Use the full URL of the server. For
    -- example, /https:\/\/server.example.com:port\//. You can also use an IP
    -- address, for example, /https:\/\/192.168.1.113\//.
    serverUrl :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of an Secrets Manager secret that
    -- contains the user name and password required to connect to the
    -- Confluence instance. If you use Confluence Cloud, you use a generated
    -- API token as the password. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-confluence.html Using a Confluence data source>.
    --
    -- You can also provide authentication credentials in the form of a
    -- personal access token. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-confluence.html#confluence-authentication Authentication for a Confluence data source>.
    secretArn :: Prelude.Text,
    -- | The version or the type of Confluence installation to connect to.
    version :: ConfluenceVersion
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfluenceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcConfiguration', 'confluenceConfiguration_vpcConfiguration' - Configuration information for an Amazon Virtual Private Cloud to connect
-- to your Confluence. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
--
-- 'proxyConfiguration', 'confluenceConfiguration_proxyConfiguration' - Configuration information to connect to your Confluence URL instance via
-- a web proxy. You can use this option for Confluence Server.
--
-- You must provide the website host name and port number. For example, the
-- host name of /https:\/\/a.example.com\/page1.html/ is \"a.example.com\"
-- and the port is 443, the standard port for HTTPS.
--
-- Web proxy credentials are optional and you can use them to connect to a
-- web proxy server that requires basic authentication of user name and
-- password. To store web proxy credentials, you use a secret in Secrets
-- Manager.
--
-- It is recommended that you follow best security practices when
-- configuring your web proxy. This includes setting up throttling, setting
-- up logging and monitoring, and applying security patches on a regular
-- basis. If you use your web proxy with multiple data sources, sync jobs
-- that occur at the same time could strain the load on your proxy. It is
-- recommended you prepare your proxy beforehand for any security and load
-- requirements.
--
-- 'pageConfiguration', 'confluenceConfiguration_pageConfiguration' - Configuration information for indexing Confluence pages.
--
-- 'authenticationType', 'confluenceConfiguration_authenticationType' - Whether you want to connect to Confluence using basic authentication of
-- user name and password, or a personal access token. You can use a
-- personal access token for Confluence Server.
--
-- 'inclusionPatterns', 'confluenceConfiguration_inclusionPatterns' - A list of regular expression patterns to include certain blog posts,
-- pages, spaces, or attachments in your Confluence. Content that matches
-- the patterns are included in the index. Content that doesn\'t match the
-- patterns is excluded from the index. If content matches both an
-- inclusion and exclusion pattern, the exclusion pattern takes precedence
-- and the content isn\'t included in the index.
--
-- 'spaceConfiguration', 'confluenceConfiguration_spaceConfiguration' - Configuration information for indexing Confluence spaces.
--
-- 'blogConfiguration', 'confluenceConfiguration_blogConfiguration' - Configuration information for indexing Confluence blogs.
--
-- 'attachmentConfiguration', 'confluenceConfiguration_attachmentConfiguration' - Configuration information for indexing attachments to Confluence blogs
-- and pages.
--
-- 'exclusionPatterns', 'confluenceConfiguration_exclusionPatterns' - A list of regular expression patterns to exclude certain blog posts,
-- pages, spaces, or attachments in your Confluence. Content that matches
-- the patterns are excluded from the index. Content that doesn\'t match
-- the patterns is included in the index. If content matches both an
-- inclusion and exclusion pattern, the exclusion pattern takes precedence
-- and the content isn\'t included in the index.
--
-- 'serverUrl', 'confluenceConfiguration_serverUrl' - The URL of your Confluence instance. Use the full URL of the server. For
-- example, /https:\/\/server.example.com:port\//. You can also use an IP
-- address, for example, /https:\/\/192.168.1.113\//.
--
-- 'secretArn', 'confluenceConfiguration_secretArn' - The Amazon Resource Name (ARN) of an Secrets Manager secret that
-- contains the user name and password required to connect to the
-- Confluence instance. If you use Confluence Cloud, you use a generated
-- API token as the password. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-confluence.html Using a Confluence data source>.
--
-- You can also provide authentication credentials in the form of a
-- personal access token. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-confluence.html#confluence-authentication Authentication for a Confluence data source>.
--
-- 'version', 'confluenceConfiguration_version' - The version or the type of Confluence installation to connect to.
newConfluenceConfiguration ::
  -- | 'serverUrl'
  Prelude.Text ->
  -- | 'secretArn'
  Prelude.Text ->
  -- | 'version'
  ConfluenceVersion ->
  ConfluenceConfiguration
newConfluenceConfiguration
  pServerUrl_
  pSecretArn_
  pVersion_ =
    ConfluenceConfiguration'
      { vpcConfiguration =
          Prelude.Nothing,
        proxyConfiguration = Prelude.Nothing,
        pageConfiguration = Prelude.Nothing,
        authenticationType = Prelude.Nothing,
        inclusionPatterns = Prelude.Nothing,
        spaceConfiguration = Prelude.Nothing,
        blogConfiguration = Prelude.Nothing,
        attachmentConfiguration = Prelude.Nothing,
        exclusionPatterns = Prelude.Nothing,
        serverUrl = pServerUrl_,
        secretArn = pSecretArn_,
        version = pVersion_
      }

-- | Configuration information for an Amazon Virtual Private Cloud to connect
-- to your Confluence. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
confluenceConfiguration_vpcConfiguration :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe DataSourceVpcConfiguration)
confluenceConfiguration_vpcConfiguration = Lens.lens (\ConfluenceConfiguration' {vpcConfiguration} -> vpcConfiguration) (\s@ConfluenceConfiguration' {} a -> s {vpcConfiguration = a} :: ConfluenceConfiguration)

-- | Configuration information to connect to your Confluence URL instance via
-- a web proxy. You can use this option for Confluence Server.
--
-- You must provide the website host name and port number. For example, the
-- host name of /https:\/\/a.example.com\/page1.html/ is \"a.example.com\"
-- and the port is 443, the standard port for HTTPS.
--
-- Web proxy credentials are optional and you can use them to connect to a
-- web proxy server that requires basic authentication of user name and
-- password. To store web proxy credentials, you use a secret in Secrets
-- Manager.
--
-- It is recommended that you follow best security practices when
-- configuring your web proxy. This includes setting up throttling, setting
-- up logging and monitoring, and applying security patches on a regular
-- basis. If you use your web proxy with multiple data sources, sync jobs
-- that occur at the same time could strain the load on your proxy. It is
-- recommended you prepare your proxy beforehand for any security and load
-- requirements.
confluenceConfiguration_proxyConfiguration :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe ProxyConfiguration)
confluenceConfiguration_proxyConfiguration = Lens.lens (\ConfluenceConfiguration' {proxyConfiguration} -> proxyConfiguration) (\s@ConfluenceConfiguration' {} a -> s {proxyConfiguration = a} :: ConfluenceConfiguration)

-- | Configuration information for indexing Confluence pages.
confluenceConfiguration_pageConfiguration :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe ConfluencePageConfiguration)
confluenceConfiguration_pageConfiguration = Lens.lens (\ConfluenceConfiguration' {pageConfiguration} -> pageConfiguration) (\s@ConfluenceConfiguration' {} a -> s {pageConfiguration = a} :: ConfluenceConfiguration)

-- | Whether you want to connect to Confluence using basic authentication of
-- user name and password, or a personal access token. You can use a
-- personal access token for Confluence Server.
confluenceConfiguration_authenticationType :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe ConfluenceAuthenticationType)
confluenceConfiguration_authenticationType = Lens.lens (\ConfluenceConfiguration' {authenticationType} -> authenticationType) (\s@ConfluenceConfiguration' {} a -> s {authenticationType = a} :: ConfluenceConfiguration)

-- | A list of regular expression patterns to include certain blog posts,
-- pages, spaces, or attachments in your Confluence. Content that matches
-- the patterns are included in the index. Content that doesn\'t match the
-- patterns is excluded from the index. If content matches both an
-- inclusion and exclusion pattern, the exclusion pattern takes precedence
-- and the content isn\'t included in the index.
confluenceConfiguration_inclusionPatterns :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe [Prelude.Text])
confluenceConfiguration_inclusionPatterns = Lens.lens (\ConfluenceConfiguration' {inclusionPatterns} -> inclusionPatterns) (\s@ConfluenceConfiguration' {} a -> s {inclusionPatterns = a} :: ConfluenceConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Configuration information for indexing Confluence spaces.
confluenceConfiguration_spaceConfiguration :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe ConfluenceSpaceConfiguration)
confluenceConfiguration_spaceConfiguration = Lens.lens (\ConfluenceConfiguration' {spaceConfiguration} -> spaceConfiguration) (\s@ConfluenceConfiguration' {} a -> s {spaceConfiguration = a} :: ConfluenceConfiguration)

-- | Configuration information for indexing Confluence blogs.
confluenceConfiguration_blogConfiguration :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe ConfluenceBlogConfiguration)
confluenceConfiguration_blogConfiguration = Lens.lens (\ConfluenceConfiguration' {blogConfiguration} -> blogConfiguration) (\s@ConfluenceConfiguration' {} a -> s {blogConfiguration = a} :: ConfluenceConfiguration)

-- | Configuration information for indexing attachments to Confluence blogs
-- and pages.
confluenceConfiguration_attachmentConfiguration :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe ConfluenceAttachmentConfiguration)
confluenceConfiguration_attachmentConfiguration = Lens.lens (\ConfluenceConfiguration' {attachmentConfiguration} -> attachmentConfiguration) (\s@ConfluenceConfiguration' {} a -> s {attachmentConfiguration = a} :: ConfluenceConfiguration)

-- | A list of regular expression patterns to exclude certain blog posts,
-- pages, spaces, or attachments in your Confluence. Content that matches
-- the patterns are excluded from the index. Content that doesn\'t match
-- the patterns is included in the index. If content matches both an
-- inclusion and exclusion pattern, the exclusion pattern takes precedence
-- and the content isn\'t included in the index.
confluenceConfiguration_exclusionPatterns :: Lens.Lens' ConfluenceConfiguration (Prelude.Maybe [Prelude.Text])
confluenceConfiguration_exclusionPatterns = Lens.lens (\ConfluenceConfiguration' {exclusionPatterns} -> exclusionPatterns) (\s@ConfluenceConfiguration' {} a -> s {exclusionPatterns = a} :: ConfluenceConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The URL of your Confluence instance. Use the full URL of the server. For
-- example, /https:\/\/server.example.com:port\//. You can also use an IP
-- address, for example, /https:\/\/192.168.1.113\//.
confluenceConfiguration_serverUrl :: Lens.Lens' ConfluenceConfiguration Prelude.Text
confluenceConfiguration_serverUrl = Lens.lens (\ConfluenceConfiguration' {serverUrl} -> serverUrl) (\s@ConfluenceConfiguration' {} a -> s {serverUrl = a} :: ConfluenceConfiguration)

-- | The Amazon Resource Name (ARN) of an Secrets Manager secret that
-- contains the user name and password required to connect to the
-- Confluence instance. If you use Confluence Cloud, you use a generated
-- API token as the password. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-confluence.html Using a Confluence data source>.
--
-- You can also provide authentication credentials in the form of a
-- personal access token. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/data-source-confluence.html#confluence-authentication Authentication for a Confluence data source>.
confluenceConfiguration_secretArn :: Lens.Lens' ConfluenceConfiguration Prelude.Text
confluenceConfiguration_secretArn = Lens.lens (\ConfluenceConfiguration' {secretArn} -> secretArn) (\s@ConfluenceConfiguration' {} a -> s {secretArn = a} :: ConfluenceConfiguration)

-- | The version or the type of Confluence installation to connect to.
confluenceConfiguration_version :: Lens.Lens' ConfluenceConfiguration ConfluenceVersion
confluenceConfiguration_version = Lens.lens (\ConfluenceConfiguration' {version} -> version) (\s@ConfluenceConfiguration' {} a -> s {version = a} :: ConfluenceConfiguration)

instance Core.FromJSON ConfluenceConfiguration where
  parseJSON =
    Core.withObject
      "ConfluenceConfiguration"
      ( \x ->
          ConfluenceConfiguration'
            Prelude.<$> (x Core..:? "VpcConfiguration")
            Prelude.<*> (x Core..:? "ProxyConfiguration")
            Prelude.<*> (x Core..:? "PageConfiguration")
            Prelude.<*> (x Core..:? "AuthenticationType")
            Prelude.<*> ( x Core..:? "InclusionPatterns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "SpaceConfiguration")
            Prelude.<*> (x Core..:? "BlogConfiguration")
            Prelude.<*> (x Core..:? "AttachmentConfiguration")
            Prelude.<*> ( x Core..:? "ExclusionPatterns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "ServerUrl")
            Prelude.<*> (x Core..: "SecretArn")
            Prelude.<*> (x Core..: "Version")
      )

instance Prelude.Hashable ConfluenceConfiguration where
  hashWithSalt _salt ConfluenceConfiguration' {..} =
    _salt `Prelude.hashWithSalt` vpcConfiguration
      `Prelude.hashWithSalt` proxyConfiguration
      `Prelude.hashWithSalt` pageConfiguration
      `Prelude.hashWithSalt` authenticationType
      `Prelude.hashWithSalt` inclusionPatterns
      `Prelude.hashWithSalt` spaceConfiguration
      `Prelude.hashWithSalt` blogConfiguration
      `Prelude.hashWithSalt` attachmentConfiguration
      `Prelude.hashWithSalt` exclusionPatterns
      `Prelude.hashWithSalt` serverUrl
      `Prelude.hashWithSalt` secretArn
      `Prelude.hashWithSalt` version

instance Prelude.NFData ConfluenceConfiguration where
  rnf ConfluenceConfiguration' {..} =
    Prelude.rnf vpcConfiguration
      `Prelude.seq` Prelude.rnf proxyConfiguration
      `Prelude.seq` Prelude.rnf pageConfiguration
      `Prelude.seq` Prelude.rnf authenticationType
      `Prelude.seq` Prelude.rnf inclusionPatterns
      `Prelude.seq` Prelude.rnf spaceConfiguration
      `Prelude.seq` Prelude.rnf blogConfiguration
      `Prelude.seq` Prelude.rnf attachmentConfiguration
      `Prelude.seq` Prelude.rnf exclusionPatterns
      `Prelude.seq` Prelude.rnf serverUrl
      `Prelude.seq` Prelude.rnf secretArn
      `Prelude.seq` Prelude.rnf version

instance Core.ToJSON ConfluenceConfiguration where
  toJSON ConfluenceConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VpcConfiguration" Core..=)
              Prelude.<$> vpcConfiguration,
            ("ProxyConfiguration" Core..=)
              Prelude.<$> proxyConfiguration,
            ("PageConfiguration" Core..=)
              Prelude.<$> pageConfiguration,
            ("AuthenticationType" Core..=)
              Prelude.<$> authenticationType,
            ("InclusionPatterns" Core..=)
              Prelude.<$> inclusionPatterns,
            ("SpaceConfiguration" Core..=)
              Prelude.<$> spaceConfiguration,
            ("BlogConfiguration" Core..=)
              Prelude.<$> blogConfiguration,
            ("AttachmentConfiguration" Core..=)
              Prelude.<$> attachmentConfiguration,
            ("ExclusionPatterns" Core..=)
              Prelude.<$> exclusionPatterns,
            Prelude.Just ("ServerUrl" Core..= serverUrl),
            Prelude.Just ("SecretArn" Core..= secretArn),
            Prelude.Just ("Version" Core..= version)
          ]
      )
