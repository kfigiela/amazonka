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
-- Module      : Amazonka.MediaTailor.Types.PlaybackConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaTailor.Types.PlaybackConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types.AvailSuppression
import Amazonka.MediaTailor.Types.Bumper
import Amazonka.MediaTailor.Types.CdnConfiguration
import Amazonka.MediaTailor.Types.DashConfiguration
import Amazonka.MediaTailor.Types.HlsConfiguration
import Amazonka.MediaTailor.Types.LivePreRollConfiguration
import Amazonka.MediaTailor.Types.LogConfiguration
import Amazonka.MediaTailor.Types.ManifestProcessingRules
import qualified Amazonka.Prelude as Prelude

-- | A playback configuration. For information about MediaTailor
-- configurations, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html Working with configurations in AWS Elemental MediaTailor>.
--
-- /See:/ 'newPlaybackConfiguration' smart constructor.
data PlaybackConfiguration = PlaybackConfiguration'
  { -- | The tags to assign to the playback configuration. Tags are key-value
    -- pairs that you can associate with Amazon resources to help with
    -- organization, access control, and cost tracking. For more information,
    -- see
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The identifier for the playback configuration.
    name :: Prelude.Maybe Prelude.Text,
    -- | The player parameters and aliases used as dynamic variables during
    -- session initialization. For more information, see
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html Domain Variables>.
    configurationAliases :: Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The Amazon CloudWatch log settings for a playback configuration.
    logConfiguration :: Prelude.Maybe LogConfiguration,
    -- | The URL that the player uses to initialize a session that uses
    -- client-side reporting.
    sessionInitializationEndpointPrefix :: Prelude.Maybe Prelude.Text,
    -- | The configuration for using a content delivery network (CDN), like
    -- Amazon CloudFront, for content and ad segment management.
    cdnConfiguration :: Prelude.Maybe CdnConfiguration,
    -- | The configuration for bumpers. Bumpers are short audio or video clips
    -- that play at the start or before the end of an ad break. To learn more
    -- about bumpers, see
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html Bumpers>.
    bumper :: Prelude.Maybe Bumper,
    -- | The configuration for manifest processing rules. Manifest processing
    -- rules enable customization of the personalized manifests created by
    -- MediaTailor.
    manifestProcessingRules :: Prelude.Maybe ManifestProcessingRules,
    -- | The configuration for pre-roll ad insertion.
    livePreRollConfiguration :: Prelude.Maybe LivePreRollConfiguration,
    -- | The configuration for a DASH source.
    dashConfiguration :: Prelude.Maybe DashConfiguration,
    -- | The URL for the ad decision server (ADS). This includes the
    -- specification of static parameters and placeholders for dynamic
    -- parameters. AWS Elemental MediaTailor substitutes player-specific and
    -- session-specific parameters as needed when calling the ADS. Alternately,
    -- for testing you can provide a static VAST URL. The maximum length is
    -- 25,000 characters.
    adDecisionServerUrl :: Prelude.Maybe Prelude.Text,
    -- | The name that is used to associate this playback configuration with a
    -- custom transcode profile. This overrides the dynamic transcoding
    -- defaults of MediaTailor. Use this only if you have already set up custom
    -- profiles with the help of AWS Support.
    transcodeProfileName :: Prelude.Maybe Prelude.Text,
    -- | The URL prefix for the parent manifest for the stream, minus the asset
    -- ID. The maximum length is 512 characters.
    videoContentSourceUrl :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the playback configuration.
    playbackConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The configuration for HLS content.
    hlsConfiguration :: Prelude.Maybe HlsConfiguration,
    -- | The URL for a video asset to transcode and use to fill in time that\'s
    -- not used by ads. AWS Elemental MediaTailor shows the slate to fill in
    -- gaps in media content. Configuring the slate is optional for non-VPAID
    -- playback configurations. For VPAID, the slate is required because
    -- MediaTailor provides it in the slots designated for dynamic ad content.
    -- The slate must be a high-quality asset that contains both audio and
    -- video.
    slateAdUrl :: Prelude.Maybe Prelude.Text,
    -- | The configuration for avail suppression, also known as ad suppression.
    -- For more information about ad suppression, see
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html Ad Suppression>.
    availSuppression :: Prelude.Maybe AvailSuppression,
    -- | The URL that the player accesses to get a manifest from AWS Elemental
    -- MediaTailor.
    playbackEndpointPrefix :: Prelude.Maybe Prelude.Text,
    -- | Defines the maximum duration of underfilled ad time (in seconds) allowed
    -- in an ad break. If the duration of underfilled ad time exceeds the
    -- personalization threshold, then the personalization of the ad break is
    -- abandoned and the underlying content is shown. This feature applies to
    -- /ad replacement/ in live and VOD streams, rather than ad insertion,
    -- because it relies on an underlying content stream. For more information
    -- about ad break behavior, including ad replacement and insertion, see
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html Ad Behavior in AWS Elemental MediaTailor>.
    personalizationThresholdSeconds :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PlaybackConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'playbackConfiguration_tags' - The tags to assign to the playback configuration. Tags are key-value
-- pairs that you can associate with Amazon resources to help with
-- organization, access control, and cost tracking. For more information,
-- see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
--
-- 'name', 'playbackConfiguration_name' - The identifier for the playback configuration.
--
-- 'configurationAliases', 'playbackConfiguration_configurationAliases' - The player parameters and aliases used as dynamic variables during
-- session initialization. For more information, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html Domain Variables>.
--
-- 'logConfiguration', 'playbackConfiguration_logConfiguration' - The Amazon CloudWatch log settings for a playback configuration.
--
-- 'sessionInitializationEndpointPrefix', 'playbackConfiguration_sessionInitializationEndpointPrefix' - The URL that the player uses to initialize a session that uses
-- client-side reporting.
--
-- 'cdnConfiguration', 'playbackConfiguration_cdnConfiguration' - The configuration for using a content delivery network (CDN), like
-- Amazon CloudFront, for content and ad segment management.
--
-- 'bumper', 'playbackConfiguration_bumper' - The configuration for bumpers. Bumpers are short audio or video clips
-- that play at the start or before the end of an ad break. To learn more
-- about bumpers, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html Bumpers>.
--
-- 'manifestProcessingRules', 'playbackConfiguration_manifestProcessingRules' - The configuration for manifest processing rules. Manifest processing
-- rules enable customization of the personalized manifests created by
-- MediaTailor.
--
-- 'livePreRollConfiguration', 'playbackConfiguration_livePreRollConfiguration' - The configuration for pre-roll ad insertion.
--
-- 'dashConfiguration', 'playbackConfiguration_dashConfiguration' - The configuration for a DASH source.
--
-- 'adDecisionServerUrl', 'playbackConfiguration_adDecisionServerUrl' - The URL for the ad decision server (ADS). This includes the
-- specification of static parameters and placeholders for dynamic
-- parameters. AWS Elemental MediaTailor substitutes player-specific and
-- session-specific parameters as needed when calling the ADS. Alternately,
-- for testing you can provide a static VAST URL. The maximum length is
-- 25,000 characters.
--
-- 'transcodeProfileName', 'playbackConfiguration_transcodeProfileName' - The name that is used to associate this playback configuration with a
-- custom transcode profile. This overrides the dynamic transcoding
-- defaults of MediaTailor. Use this only if you have already set up custom
-- profiles with the help of AWS Support.
--
-- 'videoContentSourceUrl', 'playbackConfiguration_videoContentSourceUrl' - The URL prefix for the parent manifest for the stream, minus the asset
-- ID. The maximum length is 512 characters.
--
-- 'playbackConfigurationArn', 'playbackConfiguration_playbackConfigurationArn' - The Amazon Resource Name (ARN) for the playback configuration.
--
-- 'hlsConfiguration', 'playbackConfiguration_hlsConfiguration' - The configuration for HLS content.
--
-- 'slateAdUrl', 'playbackConfiguration_slateAdUrl' - The URL for a video asset to transcode and use to fill in time that\'s
-- not used by ads. AWS Elemental MediaTailor shows the slate to fill in
-- gaps in media content. Configuring the slate is optional for non-VPAID
-- playback configurations. For VPAID, the slate is required because
-- MediaTailor provides it in the slots designated for dynamic ad content.
-- The slate must be a high-quality asset that contains both audio and
-- video.
--
-- 'availSuppression', 'playbackConfiguration_availSuppression' - The configuration for avail suppression, also known as ad suppression.
-- For more information about ad suppression, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html Ad Suppression>.
--
-- 'playbackEndpointPrefix', 'playbackConfiguration_playbackEndpointPrefix' - The URL that the player accesses to get a manifest from AWS Elemental
-- MediaTailor.
--
-- 'personalizationThresholdSeconds', 'playbackConfiguration_personalizationThresholdSeconds' - Defines the maximum duration of underfilled ad time (in seconds) allowed
-- in an ad break. If the duration of underfilled ad time exceeds the
-- personalization threshold, then the personalization of the ad break is
-- abandoned and the underlying content is shown. This feature applies to
-- /ad replacement/ in live and VOD streams, rather than ad insertion,
-- because it relies on an underlying content stream. For more information
-- about ad break behavior, including ad replacement and insertion, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html Ad Behavior in AWS Elemental MediaTailor>.
newPlaybackConfiguration ::
  PlaybackConfiguration
newPlaybackConfiguration =
  PlaybackConfiguration'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      configurationAliases = Prelude.Nothing,
      logConfiguration = Prelude.Nothing,
      sessionInitializationEndpointPrefix =
        Prelude.Nothing,
      cdnConfiguration = Prelude.Nothing,
      bumper = Prelude.Nothing,
      manifestProcessingRules = Prelude.Nothing,
      livePreRollConfiguration = Prelude.Nothing,
      dashConfiguration = Prelude.Nothing,
      adDecisionServerUrl = Prelude.Nothing,
      transcodeProfileName = Prelude.Nothing,
      videoContentSourceUrl = Prelude.Nothing,
      playbackConfigurationArn = Prelude.Nothing,
      hlsConfiguration = Prelude.Nothing,
      slateAdUrl = Prelude.Nothing,
      availSuppression = Prelude.Nothing,
      playbackEndpointPrefix = Prelude.Nothing,
      personalizationThresholdSeconds = Prelude.Nothing
    }

-- | The tags to assign to the playback configuration. Tags are key-value
-- pairs that you can associate with Amazon resources to help with
-- organization, access control, and cost tracking. For more information,
-- see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html Tagging AWS Elemental MediaTailor Resources>.
playbackConfiguration_tags :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
playbackConfiguration_tags = Lens.lens (\PlaybackConfiguration' {tags} -> tags) (\s@PlaybackConfiguration' {} a -> s {tags = a} :: PlaybackConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The identifier for the playback configuration.
playbackConfiguration_name :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_name = Lens.lens (\PlaybackConfiguration' {name} -> name) (\s@PlaybackConfiguration' {} a -> s {name = a} :: PlaybackConfiguration)

-- | The player parameters and aliases used as dynamic variables during
-- session initialization. For more information, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html Domain Variables>.
playbackConfiguration_configurationAliases :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text (Prelude.HashMap Prelude.Text Prelude.Text)))
playbackConfiguration_configurationAliases = Lens.lens (\PlaybackConfiguration' {configurationAliases} -> configurationAliases) (\s@PlaybackConfiguration' {} a -> s {configurationAliases = a} :: PlaybackConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon CloudWatch log settings for a playback configuration.
playbackConfiguration_logConfiguration :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe LogConfiguration)
playbackConfiguration_logConfiguration = Lens.lens (\PlaybackConfiguration' {logConfiguration} -> logConfiguration) (\s@PlaybackConfiguration' {} a -> s {logConfiguration = a} :: PlaybackConfiguration)

-- | The URL that the player uses to initialize a session that uses
-- client-side reporting.
playbackConfiguration_sessionInitializationEndpointPrefix :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_sessionInitializationEndpointPrefix = Lens.lens (\PlaybackConfiguration' {sessionInitializationEndpointPrefix} -> sessionInitializationEndpointPrefix) (\s@PlaybackConfiguration' {} a -> s {sessionInitializationEndpointPrefix = a} :: PlaybackConfiguration)

-- | The configuration for using a content delivery network (CDN), like
-- Amazon CloudFront, for content and ad segment management.
playbackConfiguration_cdnConfiguration :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe CdnConfiguration)
playbackConfiguration_cdnConfiguration = Lens.lens (\PlaybackConfiguration' {cdnConfiguration} -> cdnConfiguration) (\s@PlaybackConfiguration' {} a -> s {cdnConfiguration = a} :: PlaybackConfiguration)

-- | The configuration for bumpers. Bumpers are short audio or video clips
-- that play at the start or before the end of an ad break. To learn more
-- about bumpers, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html Bumpers>.
playbackConfiguration_bumper :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Bumper)
playbackConfiguration_bumper = Lens.lens (\PlaybackConfiguration' {bumper} -> bumper) (\s@PlaybackConfiguration' {} a -> s {bumper = a} :: PlaybackConfiguration)

-- | The configuration for manifest processing rules. Manifest processing
-- rules enable customization of the personalized manifests created by
-- MediaTailor.
playbackConfiguration_manifestProcessingRules :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe ManifestProcessingRules)
playbackConfiguration_manifestProcessingRules = Lens.lens (\PlaybackConfiguration' {manifestProcessingRules} -> manifestProcessingRules) (\s@PlaybackConfiguration' {} a -> s {manifestProcessingRules = a} :: PlaybackConfiguration)

-- | The configuration for pre-roll ad insertion.
playbackConfiguration_livePreRollConfiguration :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe LivePreRollConfiguration)
playbackConfiguration_livePreRollConfiguration = Lens.lens (\PlaybackConfiguration' {livePreRollConfiguration} -> livePreRollConfiguration) (\s@PlaybackConfiguration' {} a -> s {livePreRollConfiguration = a} :: PlaybackConfiguration)

-- | The configuration for a DASH source.
playbackConfiguration_dashConfiguration :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe DashConfiguration)
playbackConfiguration_dashConfiguration = Lens.lens (\PlaybackConfiguration' {dashConfiguration} -> dashConfiguration) (\s@PlaybackConfiguration' {} a -> s {dashConfiguration = a} :: PlaybackConfiguration)

-- | The URL for the ad decision server (ADS). This includes the
-- specification of static parameters and placeholders for dynamic
-- parameters. AWS Elemental MediaTailor substitutes player-specific and
-- session-specific parameters as needed when calling the ADS. Alternately,
-- for testing you can provide a static VAST URL. The maximum length is
-- 25,000 characters.
playbackConfiguration_adDecisionServerUrl :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_adDecisionServerUrl = Lens.lens (\PlaybackConfiguration' {adDecisionServerUrl} -> adDecisionServerUrl) (\s@PlaybackConfiguration' {} a -> s {adDecisionServerUrl = a} :: PlaybackConfiguration)

-- | The name that is used to associate this playback configuration with a
-- custom transcode profile. This overrides the dynamic transcoding
-- defaults of MediaTailor. Use this only if you have already set up custom
-- profiles with the help of AWS Support.
playbackConfiguration_transcodeProfileName :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_transcodeProfileName = Lens.lens (\PlaybackConfiguration' {transcodeProfileName} -> transcodeProfileName) (\s@PlaybackConfiguration' {} a -> s {transcodeProfileName = a} :: PlaybackConfiguration)

-- | The URL prefix for the parent manifest for the stream, minus the asset
-- ID. The maximum length is 512 characters.
playbackConfiguration_videoContentSourceUrl :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_videoContentSourceUrl = Lens.lens (\PlaybackConfiguration' {videoContentSourceUrl} -> videoContentSourceUrl) (\s@PlaybackConfiguration' {} a -> s {videoContentSourceUrl = a} :: PlaybackConfiguration)

-- | The Amazon Resource Name (ARN) for the playback configuration.
playbackConfiguration_playbackConfigurationArn :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_playbackConfigurationArn = Lens.lens (\PlaybackConfiguration' {playbackConfigurationArn} -> playbackConfigurationArn) (\s@PlaybackConfiguration' {} a -> s {playbackConfigurationArn = a} :: PlaybackConfiguration)

-- | The configuration for HLS content.
playbackConfiguration_hlsConfiguration :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe HlsConfiguration)
playbackConfiguration_hlsConfiguration = Lens.lens (\PlaybackConfiguration' {hlsConfiguration} -> hlsConfiguration) (\s@PlaybackConfiguration' {} a -> s {hlsConfiguration = a} :: PlaybackConfiguration)

-- | The URL for a video asset to transcode and use to fill in time that\'s
-- not used by ads. AWS Elemental MediaTailor shows the slate to fill in
-- gaps in media content. Configuring the slate is optional for non-VPAID
-- playback configurations. For VPAID, the slate is required because
-- MediaTailor provides it in the slots designated for dynamic ad content.
-- The slate must be a high-quality asset that contains both audio and
-- video.
playbackConfiguration_slateAdUrl :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_slateAdUrl = Lens.lens (\PlaybackConfiguration' {slateAdUrl} -> slateAdUrl) (\s@PlaybackConfiguration' {} a -> s {slateAdUrl = a} :: PlaybackConfiguration)

-- | The configuration for avail suppression, also known as ad suppression.
-- For more information about ad suppression, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html Ad Suppression>.
playbackConfiguration_availSuppression :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe AvailSuppression)
playbackConfiguration_availSuppression = Lens.lens (\PlaybackConfiguration' {availSuppression} -> availSuppression) (\s@PlaybackConfiguration' {} a -> s {availSuppression = a} :: PlaybackConfiguration)

-- | The URL that the player accesses to get a manifest from AWS Elemental
-- MediaTailor.
playbackConfiguration_playbackEndpointPrefix :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Text)
playbackConfiguration_playbackEndpointPrefix = Lens.lens (\PlaybackConfiguration' {playbackEndpointPrefix} -> playbackEndpointPrefix) (\s@PlaybackConfiguration' {} a -> s {playbackEndpointPrefix = a} :: PlaybackConfiguration)

-- | Defines the maximum duration of underfilled ad time (in seconds) allowed
-- in an ad break. If the duration of underfilled ad time exceeds the
-- personalization threshold, then the personalization of the ad break is
-- abandoned and the underlying content is shown. This feature applies to
-- /ad replacement/ in live and VOD streams, rather than ad insertion,
-- because it relies on an underlying content stream. For more information
-- about ad break behavior, including ad replacement and insertion, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html Ad Behavior in AWS Elemental MediaTailor>.
playbackConfiguration_personalizationThresholdSeconds :: Lens.Lens' PlaybackConfiguration (Prelude.Maybe Prelude.Natural)
playbackConfiguration_personalizationThresholdSeconds = Lens.lens (\PlaybackConfiguration' {personalizationThresholdSeconds} -> personalizationThresholdSeconds) (\s@PlaybackConfiguration' {} a -> s {personalizationThresholdSeconds = a} :: PlaybackConfiguration)

instance Core.FromJSON PlaybackConfiguration where
  parseJSON =
    Core.withObject
      "PlaybackConfiguration"
      ( \x ->
          PlaybackConfiguration'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> ( x Core..:? "ConfigurationAliases"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "LogConfiguration")
            Prelude.<*> (x Core..:? "SessionInitializationEndpointPrefix")
            Prelude.<*> (x Core..:? "CdnConfiguration")
            Prelude.<*> (x Core..:? "Bumper")
            Prelude.<*> (x Core..:? "ManifestProcessingRules")
            Prelude.<*> (x Core..:? "LivePreRollConfiguration")
            Prelude.<*> (x Core..:? "DashConfiguration")
            Prelude.<*> (x Core..:? "AdDecisionServerUrl")
            Prelude.<*> (x Core..:? "TranscodeProfileName")
            Prelude.<*> (x Core..:? "VideoContentSourceUrl")
            Prelude.<*> (x Core..:? "PlaybackConfigurationArn")
            Prelude.<*> (x Core..:? "HlsConfiguration")
            Prelude.<*> (x Core..:? "SlateAdUrl")
            Prelude.<*> (x Core..:? "AvailSuppression")
            Prelude.<*> (x Core..:? "PlaybackEndpointPrefix")
            Prelude.<*> (x Core..:? "PersonalizationThresholdSeconds")
      )

instance Prelude.Hashable PlaybackConfiguration where
  hashWithSalt _salt PlaybackConfiguration' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` configurationAliases
      `Prelude.hashWithSalt` logConfiguration
      `Prelude.hashWithSalt` sessionInitializationEndpointPrefix
      `Prelude.hashWithSalt` cdnConfiguration
      `Prelude.hashWithSalt` bumper
      `Prelude.hashWithSalt` manifestProcessingRules
      `Prelude.hashWithSalt` livePreRollConfiguration
      `Prelude.hashWithSalt` dashConfiguration
      `Prelude.hashWithSalt` adDecisionServerUrl
      `Prelude.hashWithSalt` transcodeProfileName
      `Prelude.hashWithSalt` videoContentSourceUrl
      `Prelude.hashWithSalt` playbackConfigurationArn
      `Prelude.hashWithSalt` hlsConfiguration
      `Prelude.hashWithSalt` slateAdUrl
      `Prelude.hashWithSalt` availSuppression
      `Prelude.hashWithSalt` playbackEndpointPrefix
      `Prelude.hashWithSalt` personalizationThresholdSeconds

instance Prelude.NFData PlaybackConfiguration where
  rnf PlaybackConfiguration' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf configurationAliases
      `Prelude.seq` Prelude.rnf logConfiguration
      `Prelude.seq` Prelude.rnf sessionInitializationEndpointPrefix
      `Prelude.seq` Prelude.rnf cdnConfiguration
      `Prelude.seq` Prelude.rnf bumper
      `Prelude.seq` Prelude.rnf manifestProcessingRules
      `Prelude.seq` Prelude.rnf livePreRollConfiguration
      `Prelude.seq` Prelude.rnf dashConfiguration
      `Prelude.seq` Prelude.rnf adDecisionServerUrl
      `Prelude.seq` Prelude.rnf transcodeProfileName
      `Prelude.seq` Prelude.rnf videoContentSourceUrl
      `Prelude.seq` Prelude.rnf playbackConfigurationArn
      `Prelude.seq` Prelude.rnf hlsConfiguration
      `Prelude.seq` Prelude.rnf slateAdUrl
      `Prelude.seq` Prelude.rnf availSuppression
      `Prelude.seq` Prelude.rnf playbackEndpointPrefix
      `Prelude.seq` Prelude.rnf
        personalizationThresholdSeconds
