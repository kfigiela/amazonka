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
-- Module      : Amazonka.MediaConnect.CreateFlow
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new flow. The request must include one source. The request
-- optionally can include outputs (up to 50) and entitlements (up to 50).
module Amazonka.MediaConnect.CreateFlow
  ( -- * Creating a Request
    CreateFlow (..),
    newCreateFlow,

    -- * Request Lenses
    createFlow_sources,
    createFlow_maintenance,
    createFlow_vpcInterfaces,
    createFlow_entitlements,
    createFlow_availabilityZone,
    createFlow_source,
    createFlow_outputs,
    createFlow_sourceFailoverConfig,
    createFlow_mediaStreams,
    createFlow_name,

    -- * Destructuring the Response
    CreateFlowResponse (..),
    newCreateFlowResponse,

    -- * Response Lenses
    createFlowResponse_flow,
    createFlowResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Creates a new flow. The request must include one source. The request
-- optionally can include outputs (up to 50) and entitlements (up to 50).
--
-- /See:/ 'newCreateFlow' smart constructor.
data CreateFlow = CreateFlow'
  { sources :: Prelude.Maybe [SetSourceRequest],
    maintenance :: Prelude.Maybe AddMaintenance,
    -- | The VPC interfaces you want on the flow.
    vpcInterfaces :: Prelude.Maybe [VpcInterfaceRequest],
    -- | The entitlements that you want to grant on a flow.
    entitlements :: Prelude.Maybe [GrantEntitlementRequest],
    -- | The Availability Zone that you want to create the flow in. These options
    -- are limited to the Availability Zones within the current AWS Region.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    source :: Prelude.Maybe SetSourceRequest,
    -- | The outputs that you want to add to this flow.
    outputs :: Prelude.Maybe [AddOutputRequest],
    sourceFailoverConfig :: Prelude.Maybe FailoverConfig,
    -- | The media streams that you want to add to the flow. You can associate
    -- these media streams with sources and outputs on the flow.
    mediaStreams :: Prelude.Maybe [AddMediaStreamRequest],
    -- | The name of the flow.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sources', 'createFlow_sources' - Undocumented member.
--
-- 'maintenance', 'createFlow_maintenance' - Undocumented member.
--
-- 'vpcInterfaces', 'createFlow_vpcInterfaces' - The VPC interfaces you want on the flow.
--
-- 'entitlements', 'createFlow_entitlements' - The entitlements that you want to grant on a flow.
--
-- 'availabilityZone', 'createFlow_availabilityZone' - The Availability Zone that you want to create the flow in. These options
-- are limited to the Availability Zones within the current AWS Region.
--
-- 'source', 'createFlow_source' - Undocumented member.
--
-- 'outputs', 'createFlow_outputs' - The outputs that you want to add to this flow.
--
-- 'sourceFailoverConfig', 'createFlow_sourceFailoverConfig' - Undocumented member.
--
-- 'mediaStreams', 'createFlow_mediaStreams' - The media streams that you want to add to the flow. You can associate
-- these media streams with sources and outputs on the flow.
--
-- 'name', 'createFlow_name' - The name of the flow.
newCreateFlow ::
  -- | 'name'
  Prelude.Text ->
  CreateFlow
newCreateFlow pName_ =
  CreateFlow'
    { sources = Prelude.Nothing,
      maintenance = Prelude.Nothing,
      vpcInterfaces = Prelude.Nothing,
      entitlements = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      source = Prelude.Nothing,
      outputs = Prelude.Nothing,
      sourceFailoverConfig = Prelude.Nothing,
      mediaStreams = Prelude.Nothing,
      name = pName_
    }

-- | Undocumented member.
createFlow_sources :: Lens.Lens' CreateFlow (Prelude.Maybe [SetSourceRequest])
createFlow_sources = Lens.lens (\CreateFlow' {sources} -> sources) (\s@CreateFlow' {} a -> s {sources = a} :: CreateFlow) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
createFlow_maintenance :: Lens.Lens' CreateFlow (Prelude.Maybe AddMaintenance)
createFlow_maintenance = Lens.lens (\CreateFlow' {maintenance} -> maintenance) (\s@CreateFlow' {} a -> s {maintenance = a} :: CreateFlow)

-- | The VPC interfaces you want on the flow.
createFlow_vpcInterfaces :: Lens.Lens' CreateFlow (Prelude.Maybe [VpcInterfaceRequest])
createFlow_vpcInterfaces = Lens.lens (\CreateFlow' {vpcInterfaces} -> vpcInterfaces) (\s@CreateFlow' {} a -> s {vpcInterfaces = a} :: CreateFlow) Prelude.. Lens.mapping Lens.coerced

-- | The entitlements that you want to grant on a flow.
createFlow_entitlements :: Lens.Lens' CreateFlow (Prelude.Maybe [GrantEntitlementRequest])
createFlow_entitlements = Lens.lens (\CreateFlow' {entitlements} -> entitlements) (\s@CreateFlow' {} a -> s {entitlements = a} :: CreateFlow) Prelude.. Lens.mapping Lens.coerced

-- | The Availability Zone that you want to create the flow in. These options
-- are limited to the Availability Zones within the current AWS Region.
createFlow_availabilityZone :: Lens.Lens' CreateFlow (Prelude.Maybe Prelude.Text)
createFlow_availabilityZone = Lens.lens (\CreateFlow' {availabilityZone} -> availabilityZone) (\s@CreateFlow' {} a -> s {availabilityZone = a} :: CreateFlow)

-- | Undocumented member.
createFlow_source :: Lens.Lens' CreateFlow (Prelude.Maybe SetSourceRequest)
createFlow_source = Lens.lens (\CreateFlow' {source} -> source) (\s@CreateFlow' {} a -> s {source = a} :: CreateFlow)

-- | The outputs that you want to add to this flow.
createFlow_outputs :: Lens.Lens' CreateFlow (Prelude.Maybe [AddOutputRequest])
createFlow_outputs = Lens.lens (\CreateFlow' {outputs} -> outputs) (\s@CreateFlow' {} a -> s {outputs = a} :: CreateFlow) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
createFlow_sourceFailoverConfig :: Lens.Lens' CreateFlow (Prelude.Maybe FailoverConfig)
createFlow_sourceFailoverConfig = Lens.lens (\CreateFlow' {sourceFailoverConfig} -> sourceFailoverConfig) (\s@CreateFlow' {} a -> s {sourceFailoverConfig = a} :: CreateFlow)

-- | The media streams that you want to add to the flow. You can associate
-- these media streams with sources and outputs on the flow.
createFlow_mediaStreams :: Lens.Lens' CreateFlow (Prelude.Maybe [AddMediaStreamRequest])
createFlow_mediaStreams = Lens.lens (\CreateFlow' {mediaStreams} -> mediaStreams) (\s@CreateFlow' {} a -> s {mediaStreams = a} :: CreateFlow) Prelude.. Lens.mapping Lens.coerced

-- | The name of the flow.
createFlow_name :: Lens.Lens' CreateFlow Prelude.Text
createFlow_name = Lens.lens (\CreateFlow' {name} -> name) (\s@CreateFlow' {} a -> s {name = a} :: CreateFlow)

instance Core.AWSRequest CreateFlow where
  type AWSResponse CreateFlow = CreateFlowResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateFlowResponse'
            Prelude.<$> (x Core..?> "flow")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateFlow where
  hashWithSalt _salt CreateFlow' {..} =
    _salt `Prelude.hashWithSalt` sources
      `Prelude.hashWithSalt` maintenance
      `Prelude.hashWithSalt` vpcInterfaces
      `Prelude.hashWithSalt` entitlements
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` outputs
      `Prelude.hashWithSalt` sourceFailoverConfig
      `Prelude.hashWithSalt` mediaStreams
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateFlow where
  rnf CreateFlow' {..} =
    Prelude.rnf sources
      `Prelude.seq` Prelude.rnf maintenance
      `Prelude.seq` Prelude.rnf vpcInterfaces
      `Prelude.seq` Prelude.rnf entitlements
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf source
      `Prelude.seq` Prelude.rnf outputs
      `Prelude.seq` Prelude.rnf sourceFailoverConfig
      `Prelude.seq` Prelude.rnf mediaStreams
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateFlow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateFlow where
  toJSON CreateFlow' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("sources" Core..=) Prelude.<$> sources,
            ("maintenance" Core..=) Prelude.<$> maintenance,
            ("vpcInterfaces" Core..=) Prelude.<$> vpcInterfaces,
            ("entitlements" Core..=) Prelude.<$> entitlements,
            ("availabilityZone" Core..=)
              Prelude.<$> availabilityZone,
            ("source" Core..=) Prelude.<$> source,
            ("outputs" Core..=) Prelude.<$> outputs,
            ("sourceFailoverConfig" Core..=)
              Prelude.<$> sourceFailoverConfig,
            ("mediaStreams" Core..=) Prelude.<$> mediaStreams,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateFlow where
  toPath = Prelude.const "/v1/flows"

instance Core.ToQuery CreateFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateFlowResponse' smart constructor.
data CreateFlowResponse = CreateFlowResponse'
  { flow :: Prelude.Maybe Flow,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flow', 'createFlowResponse_flow' - Undocumented member.
--
-- 'httpStatus', 'createFlowResponse_httpStatus' - The response's http status code.
newCreateFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateFlowResponse
newCreateFlowResponse pHttpStatus_ =
  CreateFlowResponse'
    { flow = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createFlowResponse_flow :: Lens.Lens' CreateFlowResponse (Prelude.Maybe Flow)
createFlowResponse_flow = Lens.lens (\CreateFlowResponse' {flow} -> flow) (\s@CreateFlowResponse' {} a -> s {flow = a} :: CreateFlowResponse)

-- | The response's http status code.
createFlowResponse_httpStatus :: Lens.Lens' CreateFlowResponse Prelude.Int
createFlowResponse_httpStatus = Lens.lens (\CreateFlowResponse' {httpStatus} -> httpStatus) (\s@CreateFlowResponse' {} a -> s {httpStatus = a} :: CreateFlowResponse)

instance Prelude.NFData CreateFlowResponse where
  rnf CreateFlowResponse' {..} =
    Prelude.rnf flow
      `Prelude.seq` Prelude.rnf httpStatus
