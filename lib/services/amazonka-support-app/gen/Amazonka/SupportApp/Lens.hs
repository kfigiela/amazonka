{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SupportApp.Lens
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SupportApp.Lens
  ( -- * Operations

    -- ** CreateSlackChannelConfiguration
    createSlackChannelConfiguration_channelName,
    createSlackChannelConfiguration_notifyOnCreateOrReopenCase,
    createSlackChannelConfiguration_notifyOnAddCorrespondenceToCase,
    createSlackChannelConfiguration_notifyOnResolveCase,
    createSlackChannelConfiguration_channelId,
    createSlackChannelConfiguration_channelRoleArn,
    createSlackChannelConfiguration_notifyOnCaseSeverity,
    createSlackChannelConfiguration_teamId,
    createSlackChannelConfigurationResponse_httpStatus,

    -- ** DeleteAccountAlias
    deleteAccountAliasResponse_httpStatus,

    -- ** DeleteSlackChannelConfiguration
    deleteSlackChannelConfiguration_channelId,
    deleteSlackChannelConfiguration_teamId,
    deleteSlackChannelConfigurationResponse_httpStatus,

    -- ** DeleteSlackWorkspaceConfiguration
    deleteSlackWorkspaceConfiguration_teamId,
    deleteSlackWorkspaceConfigurationResponse_httpStatus,

    -- ** GetAccountAlias
    getAccountAliasResponse_accountAlias,
    getAccountAliasResponse_httpStatus,

    -- ** ListSlackChannelConfigurations
    listSlackChannelConfigurations_nextToken,
    listSlackChannelConfigurationsResponse_nextToken,
    listSlackChannelConfigurationsResponse_httpStatus,
    listSlackChannelConfigurationsResponse_slackChannelConfigurations,

    -- ** ListSlackWorkspaceConfigurations
    listSlackWorkspaceConfigurations_nextToken,
    listSlackWorkspaceConfigurationsResponse_nextToken,
    listSlackWorkspaceConfigurationsResponse_slackWorkspaceConfigurations,
    listSlackWorkspaceConfigurationsResponse_httpStatus,

    -- ** PutAccountAlias
    putAccountAlias_accountAlias,
    putAccountAliasResponse_httpStatus,

    -- ** UpdateSlackChannelConfiguration
    updateSlackChannelConfiguration_channelRoleArn,
    updateSlackChannelConfiguration_notifyOnCaseSeverity,
    updateSlackChannelConfiguration_channelName,
    updateSlackChannelConfiguration_notifyOnCreateOrReopenCase,
    updateSlackChannelConfiguration_notifyOnAddCorrespondenceToCase,
    updateSlackChannelConfiguration_notifyOnResolveCase,
    updateSlackChannelConfiguration_channelId,
    updateSlackChannelConfiguration_teamId,
    updateSlackChannelConfigurationResponse_channelRoleArn,
    updateSlackChannelConfigurationResponse_notifyOnCaseSeverity,
    updateSlackChannelConfigurationResponse_channelName,
    updateSlackChannelConfigurationResponse_teamId,
    updateSlackChannelConfigurationResponse_notifyOnCreateOrReopenCase,
    updateSlackChannelConfigurationResponse_notifyOnAddCorrespondenceToCase,
    updateSlackChannelConfigurationResponse_channelId,
    updateSlackChannelConfigurationResponse_notifyOnResolveCase,
    updateSlackChannelConfigurationResponse_httpStatus,

    -- * Types

    -- ** SlackChannelConfiguration
    slackChannelConfiguration_channelRoleArn,
    slackChannelConfiguration_notifyOnCaseSeverity,
    slackChannelConfiguration_channelName,
    slackChannelConfiguration_notifyOnCreateOrReopenCase,
    slackChannelConfiguration_notifyOnAddCorrespondenceToCase,
    slackChannelConfiguration_notifyOnResolveCase,
    slackChannelConfiguration_channelId,
    slackChannelConfiguration_teamId,

    -- ** SlackWorkspaceConfiguration
    slackWorkspaceConfiguration_teamId,
  )
where

import Amazonka.SupportApp.CreateSlackChannelConfiguration
import Amazonka.SupportApp.DeleteAccountAlias
import Amazonka.SupportApp.DeleteSlackChannelConfiguration
import Amazonka.SupportApp.DeleteSlackWorkspaceConfiguration
import Amazonka.SupportApp.GetAccountAlias
import Amazonka.SupportApp.ListSlackChannelConfigurations
import Amazonka.SupportApp.ListSlackWorkspaceConfigurations
import Amazonka.SupportApp.PutAccountAlias
import Amazonka.SupportApp.Types.SlackChannelConfiguration
import Amazonka.SupportApp.Types.SlackWorkspaceConfiguration
import Amazonka.SupportApp.UpdateSlackChannelConfiguration
