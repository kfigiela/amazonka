{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Batch.Lens
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Lens
  ( -- * Operations

    -- ** CancelJob
    cancelJob_jobId,
    cancelJob_reason,
    cancelJobResponse_httpStatus,

    -- ** CreateComputeEnvironment
    createComputeEnvironment_tags,
    createComputeEnvironment_state,
    createComputeEnvironment_serviceRole,
    createComputeEnvironment_eksConfiguration,
    createComputeEnvironment_computeResources,
    createComputeEnvironment_unmanagedvCpus,
    createComputeEnvironment_computeEnvironmentName,
    createComputeEnvironment_type,
    createComputeEnvironmentResponse_computeEnvironmentArn,
    createComputeEnvironmentResponse_computeEnvironmentName,
    createComputeEnvironmentResponse_httpStatus,

    -- ** CreateJobQueue
    createJobQueue_tags,
    createJobQueue_state,
    createJobQueue_schedulingPolicyArn,
    createJobQueue_jobQueueName,
    createJobQueue_priority,
    createJobQueue_computeEnvironmentOrder,
    createJobQueueResponse_httpStatus,
    createJobQueueResponse_jobQueueName,
    createJobQueueResponse_jobQueueArn,

    -- ** CreateSchedulingPolicy
    createSchedulingPolicy_tags,
    createSchedulingPolicy_fairsharePolicy,
    createSchedulingPolicy_name,
    createSchedulingPolicyResponse_httpStatus,
    createSchedulingPolicyResponse_name,
    createSchedulingPolicyResponse_arn,

    -- ** DeleteComputeEnvironment
    deleteComputeEnvironment_computeEnvironment,
    deleteComputeEnvironmentResponse_httpStatus,

    -- ** DeleteJobQueue
    deleteJobQueue_jobQueue,
    deleteJobQueueResponse_httpStatus,

    -- ** DeleteSchedulingPolicy
    deleteSchedulingPolicy_arn,
    deleteSchedulingPolicyResponse_httpStatus,

    -- ** DeregisterJobDefinition
    deregisterJobDefinition_jobDefinition,
    deregisterJobDefinitionResponse_httpStatus,

    -- ** DescribeComputeEnvironments
    describeComputeEnvironments_nextToken,
    describeComputeEnvironments_computeEnvironments,
    describeComputeEnvironments_maxResults,
    describeComputeEnvironmentsResponse_nextToken,
    describeComputeEnvironmentsResponse_computeEnvironments,
    describeComputeEnvironmentsResponse_httpStatus,

    -- ** DescribeJobDefinitions
    describeJobDefinitions_nextToken,
    describeJobDefinitions_jobDefinitionName,
    describeJobDefinitions_status,
    describeJobDefinitions_jobDefinitions,
    describeJobDefinitions_maxResults,
    describeJobDefinitionsResponse_nextToken,
    describeJobDefinitionsResponse_jobDefinitions,
    describeJobDefinitionsResponse_httpStatus,

    -- ** DescribeJobQueues
    describeJobQueues_nextToken,
    describeJobQueues_maxResults,
    describeJobQueues_jobQueues,
    describeJobQueuesResponse_nextToken,
    describeJobQueuesResponse_jobQueues,
    describeJobQueuesResponse_httpStatus,

    -- ** DescribeJobs
    describeJobs_jobs,
    describeJobsResponse_jobs,
    describeJobsResponse_httpStatus,

    -- ** DescribeSchedulingPolicies
    describeSchedulingPolicies_arns,
    describeSchedulingPoliciesResponse_schedulingPolicies,
    describeSchedulingPoliciesResponse_httpStatus,

    -- ** ListJobs
    listJobs_nextToken,
    listJobs_jobStatus,
    listJobs_multiNodeJobId,
    listJobs_filters,
    listJobs_arrayJobId,
    listJobs_jobQueue,
    listJobs_maxResults,
    listJobsResponse_nextToken,
    listJobsResponse_httpStatus,
    listJobsResponse_jobSummaryList,

    -- ** ListSchedulingPolicies
    listSchedulingPolicies_nextToken,
    listSchedulingPolicies_maxResults,
    listSchedulingPoliciesResponse_nextToken,
    listSchedulingPoliciesResponse_schedulingPolicies,
    listSchedulingPoliciesResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** RegisterJobDefinition
    registerJobDefinition_tags,
    registerJobDefinition_timeout,
    registerJobDefinition_containerProperties,
    registerJobDefinition_retryStrategy,
    registerJobDefinition_platformCapabilities,
    registerJobDefinition_propagateTags,
    registerJobDefinition_nodeProperties,
    registerJobDefinition_schedulingPriority,
    registerJobDefinition_eksProperties,
    registerJobDefinition_parameters,
    registerJobDefinition_jobDefinitionName,
    registerJobDefinition_type,
    registerJobDefinitionResponse_httpStatus,
    registerJobDefinitionResponse_jobDefinitionName,
    registerJobDefinitionResponse_jobDefinitionArn,
    registerJobDefinitionResponse_revision,

    -- ** SubmitJob
    submitJob_tags,
    submitJob_timeout,
    submitJob_eksPropertiesOverride,
    submitJob_dependsOn,
    submitJob_shareIdentifier,
    submitJob_schedulingPriorityOverride,
    submitJob_nodeOverrides,
    submitJob_retryStrategy,
    submitJob_arrayProperties,
    submitJob_propagateTags,
    submitJob_containerOverrides,
    submitJob_parameters,
    submitJob_jobName,
    submitJob_jobQueue,
    submitJob_jobDefinition,
    submitJobResponse_jobArn,
    submitJobResponse_httpStatus,
    submitJobResponse_jobName,
    submitJobResponse_jobId,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** TerminateJob
    terminateJob_jobId,
    terminateJob_reason,
    terminateJobResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateComputeEnvironment
    updateComputeEnvironment_state,
    updateComputeEnvironment_serviceRole,
    updateComputeEnvironment_updatePolicy,
    updateComputeEnvironment_computeResources,
    updateComputeEnvironment_unmanagedvCpus,
    updateComputeEnvironment_computeEnvironment,
    updateComputeEnvironmentResponse_computeEnvironmentArn,
    updateComputeEnvironmentResponse_computeEnvironmentName,
    updateComputeEnvironmentResponse_httpStatus,

    -- ** UpdateJobQueue
    updateJobQueue_computeEnvironmentOrder,
    updateJobQueue_state,
    updateJobQueue_priority,
    updateJobQueue_schedulingPolicyArn,
    updateJobQueue_jobQueue,
    updateJobQueueResponse_jobQueueArn,
    updateJobQueueResponse_jobQueueName,
    updateJobQueueResponse_httpStatus,

    -- ** UpdateSchedulingPolicy
    updateSchedulingPolicy_fairsharePolicy,
    updateSchedulingPolicy_arn,
    updateSchedulingPolicyResponse_httpStatus,

    -- * Types

    -- ** ArrayProperties
    arrayProperties_size,

    -- ** ArrayPropertiesDetail
    arrayPropertiesDetail_index,
    arrayPropertiesDetail_size,
    arrayPropertiesDetail_statusSummary,

    -- ** ArrayPropertiesSummary
    arrayPropertiesSummary_index,
    arrayPropertiesSummary_size,

    -- ** AttemptContainerDetail
    attemptContainerDetail_taskArn,
    attemptContainerDetail_reason,
    attemptContainerDetail_containerInstanceArn,
    attemptContainerDetail_exitCode,
    attemptContainerDetail_logStreamName,
    attemptContainerDetail_networkInterfaces,

    -- ** AttemptDetail
    attemptDetail_statusReason,
    attemptDetail_startedAt,
    attemptDetail_container,
    attemptDetail_stoppedAt,

    -- ** ComputeEnvironmentDetail
    computeEnvironmentDetail_tags,
    computeEnvironmentDetail_type,
    computeEnvironmentDetail_ecsClusterArn,
    computeEnvironmentDetail_containerOrchestrationType,
    computeEnvironmentDetail_statusReason,
    computeEnvironmentDetail_state,
    computeEnvironmentDetail_uuid,
    computeEnvironmentDetail_status,
    computeEnvironmentDetail_serviceRole,
    computeEnvironmentDetail_updatePolicy,
    computeEnvironmentDetail_eksConfiguration,
    computeEnvironmentDetail_computeResources,
    computeEnvironmentDetail_unmanagedvCpus,
    computeEnvironmentDetail_computeEnvironmentName,
    computeEnvironmentDetail_computeEnvironmentArn,

    -- ** ComputeEnvironmentOrder
    computeEnvironmentOrder_order,
    computeEnvironmentOrder_computeEnvironment,

    -- ** ComputeResource
    computeResource_tags,
    computeResource_ec2KeyPair,
    computeResource_ec2Configuration,
    computeResource_minvCpus,
    computeResource_instanceTypes,
    computeResource_securityGroupIds,
    computeResource_desiredvCpus,
    computeResource_launchTemplate,
    computeResource_bidPercentage,
    computeResource_spotIamFleetRole,
    computeResource_instanceRole,
    computeResource_allocationStrategy,
    computeResource_placementGroup,
    computeResource_imageId,
    computeResource_type,
    computeResource_maxvCpus,
    computeResource_subnets,

    -- ** ComputeResourceUpdate
    computeResourceUpdate_tags,
    computeResourceUpdate_updateToLatestImageVersion,
    computeResourceUpdate_ec2KeyPair,
    computeResourceUpdate_type,
    computeResourceUpdate_ec2Configuration,
    computeResourceUpdate_minvCpus,
    computeResourceUpdate_instanceTypes,
    computeResourceUpdate_securityGroupIds,
    computeResourceUpdate_desiredvCpus,
    computeResourceUpdate_maxvCpus,
    computeResourceUpdate_subnets,
    computeResourceUpdate_launchTemplate,
    computeResourceUpdate_bidPercentage,
    computeResourceUpdate_instanceRole,
    computeResourceUpdate_allocationStrategy,
    computeResourceUpdate_placementGroup,
    computeResourceUpdate_imageId,

    -- ** ContainerDetail
    containerDetail_readonlyRootFilesystem,
    containerDetail_environment,
    containerDetail_logConfiguration,
    containerDetail_resourceRequirements,
    containerDetail_memory,
    containerDetail_user,
    containerDetail_taskArn,
    containerDetail_ulimits,
    containerDetail_jobRoleArn,
    containerDetail_fargatePlatformConfiguration,
    containerDetail_command,
    containerDetail_networkConfiguration,
    containerDetail_secrets,
    containerDetail_instanceType,
    containerDetail_volumes,
    containerDetail_privileged,
    containerDetail_reason,
    containerDetail_containerInstanceArn,
    containerDetail_vcpus,
    containerDetail_exitCode,
    containerDetail_executionRoleArn,
    containerDetail_mountPoints,
    containerDetail_logStreamName,
    containerDetail_image,
    containerDetail_linuxParameters,
    containerDetail_networkInterfaces,

    -- ** ContainerOverrides
    containerOverrides_environment,
    containerOverrides_resourceRequirements,
    containerOverrides_memory,
    containerOverrides_command,
    containerOverrides_instanceType,
    containerOverrides_vcpus,

    -- ** ContainerProperties
    containerProperties_readonlyRootFilesystem,
    containerProperties_environment,
    containerProperties_logConfiguration,
    containerProperties_resourceRequirements,
    containerProperties_memory,
    containerProperties_user,
    containerProperties_ulimits,
    containerProperties_jobRoleArn,
    containerProperties_fargatePlatformConfiguration,
    containerProperties_command,
    containerProperties_networkConfiguration,
    containerProperties_secrets,
    containerProperties_instanceType,
    containerProperties_volumes,
    containerProperties_privileged,
    containerProperties_vcpus,
    containerProperties_executionRoleArn,
    containerProperties_mountPoints,
    containerProperties_image,
    containerProperties_linuxParameters,

    -- ** ContainerSummary
    containerSummary_reason,
    containerSummary_exitCode,

    -- ** Device
    device_permissions,
    device_containerPath,
    device_hostPath,

    -- ** EFSAuthorizationConfig
    eFSAuthorizationConfig_iam,
    eFSAuthorizationConfig_accessPointId,

    -- ** EFSVolumeConfiguration
    eFSVolumeConfiguration_transitEncryptionPort,
    eFSVolumeConfiguration_rootDirectory,
    eFSVolumeConfiguration_transitEncryption,
    eFSVolumeConfiguration_authorizationConfig,
    eFSVolumeConfiguration_fileSystemId,

    -- ** Ec2Configuration
    ec2Configuration_imageIdOverride,
    ec2Configuration_imageKubernetesVersion,
    ec2Configuration_imageType,

    -- ** EksAttemptContainerDetail
    eksAttemptContainerDetail_reason,
    eksAttemptContainerDetail_exitCode,

    -- ** EksAttemptDetail
    eksAttemptDetail_containers,
    eksAttemptDetail_statusReason,
    eksAttemptDetail_podName,
    eksAttemptDetail_startedAt,
    eksAttemptDetail_nodeName,
    eksAttemptDetail_stoppedAt,

    -- ** EksConfiguration
    eksConfiguration_eksClusterArn,
    eksConfiguration_kubernetesNamespace,

    -- ** EksContainer
    eksContainer_name,
    eksContainer_command,
    eksContainer_imagePullPolicy,
    eksContainer_securityContext,
    eksContainer_resources,
    eksContainer_args,
    eksContainer_env,
    eksContainer_volumeMounts,
    eksContainer_image,

    -- ** EksContainerDetail
    eksContainerDetail_name,
    eksContainerDetail_command,
    eksContainerDetail_imagePullPolicy,
    eksContainerDetail_securityContext,
    eksContainerDetail_reason,
    eksContainerDetail_exitCode,
    eksContainerDetail_resources,
    eksContainerDetail_args,
    eksContainerDetail_env,
    eksContainerDetail_image,
    eksContainerDetail_volumeMounts,

    -- ** EksContainerEnvironmentVariable
    eksContainerEnvironmentVariable_value,
    eksContainerEnvironmentVariable_name,

    -- ** EksContainerOverride
    eksContainerOverride_command,
    eksContainerOverride_resources,
    eksContainerOverride_args,
    eksContainerOverride_env,
    eksContainerOverride_image,

    -- ** EksContainerResourceRequirements
    eksContainerResourceRequirements_limits,
    eksContainerResourceRequirements_requests,

    -- ** EksContainerSecurityContext
    eksContainerSecurityContext_readOnlyRootFilesystem,
    eksContainerSecurityContext_runAsUser,
    eksContainerSecurityContext_runAsGroup,
    eksContainerSecurityContext_runAsNonRoot,
    eksContainerSecurityContext_privileged,

    -- ** EksContainerVolumeMount
    eksContainerVolumeMount_name,
    eksContainerVolumeMount_readOnly,
    eksContainerVolumeMount_mountPath,

    -- ** EksEmptyDir
    eksEmptyDir_sizeLimit,
    eksEmptyDir_medium,

    -- ** EksHostPath
    eksHostPath_path,

    -- ** EksPodProperties
    eksPodProperties_containers,
    eksPodProperties_serviceAccountName,
    eksPodProperties_volumes,
    eksPodProperties_dnsPolicy,
    eksPodProperties_hostNetwork,

    -- ** EksPodPropertiesDetail
    eksPodPropertiesDetail_containers,
    eksPodPropertiesDetail_serviceAccountName,
    eksPodPropertiesDetail_podName,
    eksPodPropertiesDetail_volumes,
    eksPodPropertiesDetail_nodeName,
    eksPodPropertiesDetail_dnsPolicy,
    eksPodPropertiesDetail_hostNetwork,

    -- ** EksPodPropertiesOverride
    eksPodPropertiesOverride_containers,

    -- ** EksProperties
    eksProperties_podProperties,

    -- ** EksPropertiesDetail
    eksPropertiesDetail_podProperties,

    -- ** EksPropertiesOverride
    eksPropertiesOverride_podProperties,

    -- ** EksSecret
    eksSecret_optional,
    eksSecret_secretName,

    -- ** EksVolume
    eksVolume_hostPath,
    eksVolume_emptyDir,
    eksVolume_secret,
    eksVolume_name,

    -- ** EvaluateOnExit
    evaluateOnExit_onReason,
    evaluateOnExit_onExitCode,
    evaluateOnExit_onStatusReason,
    evaluateOnExit_action,

    -- ** FairsharePolicy
    fairsharePolicy_shareDistribution,
    fairsharePolicy_shareDecaySeconds,
    fairsharePolicy_computeReservation,

    -- ** FargatePlatformConfiguration
    fargatePlatformConfiguration_platformVersion,

    -- ** Host
    host_sourcePath,

    -- ** JobDefinition
    jobDefinition_tags,
    jobDefinition_timeout,
    jobDefinition_containerProperties,
    jobDefinition_retryStrategy,
    jobDefinition_platformCapabilities,
    jobDefinition_containerOrchestrationType,
    jobDefinition_status,
    jobDefinition_propagateTags,
    jobDefinition_nodeProperties,
    jobDefinition_schedulingPriority,
    jobDefinition_eksProperties,
    jobDefinition_parameters,
    jobDefinition_jobDefinitionName,
    jobDefinition_jobDefinitionArn,
    jobDefinition_revision,
    jobDefinition_type,

    -- ** JobDependency
    jobDependency_type,
    jobDependency_jobId,

    -- ** JobDetail
    jobDetail_tags,
    jobDetail_timeout,
    jobDetail_dependsOn,
    jobDetail_shareIdentifier,
    jobDetail_eksAttempts,
    jobDetail_retryStrategy,
    jobDetail_platformCapabilities,
    jobDetail_arrayProperties,
    jobDetail_nodeDetails,
    jobDetail_statusReason,
    jobDetail_startedAt,
    jobDetail_propagateTags,
    jobDetail_nodeProperties,
    jobDetail_container,
    jobDetail_schedulingPriority,
    jobDetail_attempts,
    jobDetail_stoppedAt,
    jobDetail_jobArn,
    jobDetail_createdAt,
    jobDetail_eksProperties,
    jobDetail_parameters,
    jobDetail_jobName,
    jobDetail_jobId,
    jobDetail_jobQueue,
    jobDetail_status,
    jobDetail_jobDefinition,

    -- ** JobQueueDetail
    jobQueueDetail_tags,
    jobQueueDetail_statusReason,
    jobQueueDetail_status,
    jobQueueDetail_schedulingPolicyArn,
    jobQueueDetail_jobQueueName,
    jobQueueDetail_jobQueueArn,
    jobQueueDetail_state,
    jobQueueDetail_priority,
    jobQueueDetail_computeEnvironmentOrder,

    -- ** JobSummary
    jobSummary_arrayProperties,
    jobSummary_statusReason,
    jobSummary_jobDefinition,
    jobSummary_status,
    jobSummary_startedAt,
    jobSummary_nodeProperties,
    jobSummary_container,
    jobSummary_stoppedAt,
    jobSummary_jobArn,
    jobSummary_createdAt,
    jobSummary_jobId,
    jobSummary_jobName,

    -- ** JobTimeout
    jobTimeout_attemptDurationSeconds,

    -- ** KeyValuePair
    keyValuePair_name,
    keyValuePair_value,

    -- ** KeyValuesPair
    keyValuesPair_name,
    keyValuesPair_values,

    -- ** LaunchTemplateSpecification
    launchTemplateSpecification_launchTemplateId,
    launchTemplateSpecification_version,
    launchTemplateSpecification_launchTemplateName,

    -- ** LinuxParameters
    linuxParameters_devices,
    linuxParameters_swappiness,
    linuxParameters_tmpfs,
    linuxParameters_initProcessEnabled,
    linuxParameters_maxSwap,
    linuxParameters_sharedMemorySize,

    -- ** LogConfiguration
    logConfiguration_secretOptions,
    logConfiguration_options,
    logConfiguration_logDriver,

    -- ** MountPoint
    mountPoint_sourceVolume,
    mountPoint_containerPath,
    mountPoint_readOnly,

    -- ** NetworkConfiguration
    networkConfiguration_assignPublicIp,

    -- ** NetworkInterface
    networkInterface_attachmentId,
    networkInterface_ipv6Address,
    networkInterface_privateIpv4Address,

    -- ** NodeDetails
    nodeDetails_isMainNode,
    nodeDetails_nodeIndex,

    -- ** NodeOverrides
    nodeOverrides_numNodes,
    nodeOverrides_nodePropertyOverrides,

    -- ** NodeProperties
    nodeProperties_numNodes,
    nodeProperties_mainNode,
    nodeProperties_nodeRangeProperties,

    -- ** NodePropertiesSummary
    nodePropertiesSummary_isMainNode,
    nodePropertiesSummary_nodeIndex,
    nodePropertiesSummary_numNodes,

    -- ** NodePropertyOverride
    nodePropertyOverride_containerOverrides,
    nodePropertyOverride_targetNodes,

    -- ** NodeRangeProperty
    nodeRangeProperty_container,
    nodeRangeProperty_targetNodes,

    -- ** ResourceRequirement
    resourceRequirement_value,
    resourceRequirement_type,

    -- ** RetryStrategy
    retryStrategy_evaluateOnExit,
    retryStrategy_attempts,

    -- ** SchedulingPolicyDetail
    schedulingPolicyDetail_tags,
    schedulingPolicyDetail_fairsharePolicy,
    schedulingPolicyDetail_name,
    schedulingPolicyDetail_arn,

    -- ** SchedulingPolicyListingDetail
    schedulingPolicyListingDetail_arn,

    -- ** Secret
    secret_name,
    secret_valueFrom,

    -- ** ShareAttributes
    shareAttributes_weightFactor,
    shareAttributes_shareIdentifier,

    -- ** Tmpfs
    tmpfs_mountOptions,
    tmpfs_containerPath,
    tmpfs_size,

    -- ** Ulimit
    ulimit_hardLimit,
    ulimit_name,
    ulimit_softLimit,

    -- ** UpdatePolicy
    updatePolicy_terminateJobsOnUpdate,
    updatePolicy_jobExecutionTimeoutMinutes,

    -- ** Volume
    volume_efsVolumeConfiguration,
    volume_name,
    volume_host,
  )
where

import Amazonka.Batch.CancelJob
import Amazonka.Batch.CreateComputeEnvironment
import Amazonka.Batch.CreateJobQueue
import Amazonka.Batch.CreateSchedulingPolicy
import Amazonka.Batch.DeleteComputeEnvironment
import Amazonka.Batch.DeleteJobQueue
import Amazonka.Batch.DeleteSchedulingPolicy
import Amazonka.Batch.DeregisterJobDefinition
import Amazonka.Batch.DescribeComputeEnvironments
import Amazonka.Batch.DescribeJobDefinitions
import Amazonka.Batch.DescribeJobQueues
import Amazonka.Batch.DescribeJobs
import Amazonka.Batch.DescribeSchedulingPolicies
import Amazonka.Batch.ListJobs
import Amazonka.Batch.ListSchedulingPolicies
import Amazonka.Batch.ListTagsForResource
import Amazonka.Batch.RegisterJobDefinition
import Amazonka.Batch.SubmitJob
import Amazonka.Batch.TagResource
import Amazonka.Batch.TerminateJob
import Amazonka.Batch.Types.ArrayProperties
import Amazonka.Batch.Types.ArrayPropertiesDetail
import Amazonka.Batch.Types.ArrayPropertiesSummary
import Amazonka.Batch.Types.AttemptContainerDetail
import Amazonka.Batch.Types.AttemptDetail
import Amazonka.Batch.Types.ComputeEnvironmentDetail
import Amazonka.Batch.Types.ComputeEnvironmentOrder
import Amazonka.Batch.Types.ComputeResource
import Amazonka.Batch.Types.ComputeResourceUpdate
import Amazonka.Batch.Types.ContainerDetail
import Amazonka.Batch.Types.ContainerOverrides
import Amazonka.Batch.Types.ContainerProperties
import Amazonka.Batch.Types.ContainerSummary
import Amazonka.Batch.Types.Device
import Amazonka.Batch.Types.EFSAuthorizationConfig
import Amazonka.Batch.Types.EFSVolumeConfiguration
import Amazonka.Batch.Types.Ec2Configuration
import Amazonka.Batch.Types.EksAttemptContainerDetail
import Amazonka.Batch.Types.EksAttemptDetail
import Amazonka.Batch.Types.EksConfiguration
import Amazonka.Batch.Types.EksContainer
import Amazonka.Batch.Types.EksContainerDetail
import Amazonka.Batch.Types.EksContainerEnvironmentVariable
import Amazonka.Batch.Types.EksContainerOverride
import Amazonka.Batch.Types.EksContainerResourceRequirements
import Amazonka.Batch.Types.EksContainerSecurityContext
import Amazonka.Batch.Types.EksContainerVolumeMount
import Amazonka.Batch.Types.EksEmptyDir
import Amazonka.Batch.Types.EksHostPath
import Amazonka.Batch.Types.EksPodProperties
import Amazonka.Batch.Types.EksPodPropertiesDetail
import Amazonka.Batch.Types.EksPodPropertiesOverride
import Amazonka.Batch.Types.EksProperties
import Amazonka.Batch.Types.EksPropertiesDetail
import Amazonka.Batch.Types.EksPropertiesOverride
import Amazonka.Batch.Types.EksSecret
import Amazonka.Batch.Types.EksVolume
import Amazonka.Batch.Types.EvaluateOnExit
import Amazonka.Batch.Types.FairsharePolicy
import Amazonka.Batch.Types.FargatePlatformConfiguration
import Amazonka.Batch.Types.Host
import Amazonka.Batch.Types.JobDefinition
import Amazonka.Batch.Types.JobDependency
import Amazonka.Batch.Types.JobDetail
import Amazonka.Batch.Types.JobQueueDetail
import Amazonka.Batch.Types.JobSummary
import Amazonka.Batch.Types.JobTimeout
import Amazonka.Batch.Types.KeyValuePair
import Amazonka.Batch.Types.KeyValuesPair
import Amazonka.Batch.Types.LaunchTemplateSpecification
import Amazonka.Batch.Types.LinuxParameters
import Amazonka.Batch.Types.LogConfiguration
import Amazonka.Batch.Types.MountPoint
import Amazonka.Batch.Types.NetworkConfiguration
import Amazonka.Batch.Types.NetworkInterface
import Amazonka.Batch.Types.NodeDetails
import Amazonka.Batch.Types.NodeOverrides
import Amazonka.Batch.Types.NodeProperties
import Amazonka.Batch.Types.NodePropertiesSummary
import Amazonka.Batch.Types.NodePropertyOverride
import Amazonka.Batch.Types.NodeRangeProperty
import Amazonka.Batch.Types.ResourceRequirement
import Amazonka.Batch.Types.RetryStrategy
import Amazonka.Batch.Types.SchedulingPolicyDetail
import Amazonka.Batch.Types.SchedulingPolicyListingDetail
import Amazonka.Batch.Types.Secret
import Amazonka.Batch.Types.ShareAttributes
import Amazonka.Batch.Types.Tmpfs
import Amazonka.Batch.Types.Ulimit
import Amazonka.Batch.Types.UpdatePolicy
import Amazonka.Batch.Types.Volume
import Amazonka.Batch.UntagResource
import Amazonka.Batch.UpdateComputeEnvironment
import Amazonka.Batch.UpdateJobQueue
import Amazonka.Batch.UpdateSchedulingPolicy
