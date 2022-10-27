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
-- Module      : Amazonka.IoT.DescribeThing
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified thing.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions DescribeThing>
-- action.
module Amazonka.IoT.DescribeThing
  ( -- * Creating a Request
    DescribeThing (..),
    newDescribeThing,

    -- * Request Lenses
    describeThing_thingName,

    -- * Destructuring the Response
    DescribeThingResponse (..),
    newDescribeThingResponse,

    -- * Response Lenses
    describeThingResponse_billingGroupName,
    describeThingResponse_thingName,
    describeThingResponse_thingId,
    describeThingResponse_thingArn,
    describeThingResponse_thingTypeName,
    describeThingResponse_defaultClientId,
    describeThingResponse_attributes,
    describeThingResponse_version,
    describeThingResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The input for the DescribeThing operation.
--
-- /See:/ 'newDescribeThing' smart constructor.
data DescribeThing = DescribeThing'
  { -- | The name of the thing.
    thingName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thingName', 'describeThing_thingName' - The name of the thing.
newDescribeThing ::
  -- | 'thingName'
  Prelude.Text ->
  DescribeThing
newDescribeThing pThingName_ =
  DescribeThing' {thingName = pThingName_}

-- | The name of the thing.
describeThing_thingName :: Lens.Lens' DescribeThing Prelude.Text
describeThing_thingName = Lens.lens (\DescribeThing' {thingName} -> thingName) (\s@DescribeThing' {} a -> s {thingName = a} :: DescribeThing)

instance Core.AWSRequest DescribeThing where
  type
    AWSResponse DescribeThing =
      DescribeThingResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeThingResponse'
            Prelude.<$> (x Core..?> "billingGroupName")
            Prelude.<*> (x Core..?> "thingName")
            Prelude.<*> (x Core..?> "thingId")
            Prelude.<*> (x Core..?> "thingArn")
            Prelude.<*> (x Core..?> "thingTypeName")
            Prelude.<*> (x Core..?> "defaultClientId")
            Prelude.<*> (x Core..?> "attributes" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeThing where
  hashWithSalt _salt DescribeThing' {..} =
    _salt `Prelude.hashWithSalt` thingName

instance Prelude.NFData DescribeThing where
  rnf DescribeThing' {..} = Prelude.rnf thingName

instance Core.ToHeaders DescribeThing where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeThing where
  toPath DescribeThing' {..} =
    Prelude.mconcat ["/things/", Core.toBS thingName]

instance Core.ToQuery DescribeThing where
  toQuery = Prelude.const Prelude.mempty

-- | The output from the DescribeThing operation.
--
-- /See:/ 'newDescribeThingResponse' smart constructor.
data DescribeThingResponse = DescribeThingResponse'
  { -- | The name of the billing group the thing belongs to.
    billingGroupName :: Prelude.Maybe Prelude.Text,
    -- | The name of the thing.
    thingName :: Prelude.Maybe Prelude.Text,
    -- | The ID of the thing to describe.
    thingId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the thing to describe.
    thingArn :: Prelude.Maybe Prelude.Text,
    -- | The thing type name.
    thingTypeName :: Prelude.Maybe Prelude.Text,
    -- | The default MQTT client ID. For a typical device, the thing name is also
    -- used as the default MQTT client ID. Although we don’t require a mapping
    -- between a thing\'s registry name and its use of MQTT client IDs,
    -- certificates, or shadow state, we recommend that you choose a thing name
    -- and use it as the MQTT client ID for the registry and the Device Shadow
    -- service.
    --
    -- This lets you better organize your IoT fleet without removing the
    -- flexibility of the underlying device certificate model or shadows.
    defaultClientId :: Prelude.Maybe Prelude.Text,
    -- | The thing attributes.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The current version of the thing record in the registry.
    --
    -- To avoid unintentional changes to the information in the registry, you
    -- can pass the version information in the @expectedVersion@ parameter of
    -- the @UpdateThing@ and @DeleteThing@ calls.
    version :: Prelude.Maybe Prelude.Integer,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'billingGroupName', 'describeThingResponse_billingGroupName' - The name of the billing group the thing belongs to.
--
-- 'thingName', 'describeThingResponse_thingName' - The name of the thing.
--
-- 'thingId', 'describeThingResponse_thingId' - The ID of the thing to describe.
--
-- 'thingArn', 'describeThingResponse_thingArn' - The ARN of the thing to describe.
--
-- 'thingTypeName', 'describeThingResponse_thingTypeName' - The thing type name.
--
-- 'defaultClientId', 'describeThingResponse_defaultClientId' - The default MQTT client ID. For a typical device, the thing name is also
-- used as the default MQTT client ID. Although we don’t require a mapping
-- between a thing\'s registry name and its use of MQTT client IDs,
-- certificates, or shadow state, we recommend that you choose a thing name
-- and use it as the MQTT client ID for the registry and the Device Shadow
-- service.
--
-- This lets you better organize your IoT fleet without removing the
-- flexibility of the underlying device certificate model or shadows.
--
-- 'attributes', 'describeThingResponse_attributes' - The thing attributes.
--
-- 'version', 'describeThingResponse_version' - The current version of the thing record in the registry.
--
-- To avoid unintentional changes to the information in the registry, you
-- can pass the version information in the @expectedVersion@ parameter of
-- the @UpdateThing@ and @DeleteThing@ calls.
--
-- 'httpStatus', 'describeThingResponse_httpStatus' - The response's http status code.
newDescribeThingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeThingResponse
newDescribeThingResponse pHttpStatus_ =
  DescribeThingResponse'
    { billingGroupName =
        Prelude.Nothing,
      thingName = Prelude.Nothing,
      thingId = Prelude.Nothing,
      thingArn = Prelude.Nothing,
      thingTypeName = Prelude.Nothing,
      defaultClientId = Prelude.Nothing,
      attributes = Prelude.Nothing,
      version = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the billing group the thing belongs to.
describeThingResponse_billingGroupName :: Lens.Lens' DescribeThingResponse (Prelude.Maybe Prelude.Text)
describeThingResponse_billingGroupName = Lens.lens (\DescribeThingResponse' {billingGroupName} -> billingGroupName) (\s@DescribeThingResponse' {} a -> s {billingGroupName = a} :: DescribeThingResponse)

-- | The name of the thing.
describeThingResponse_thingName :: Lens.Lens' DescribeThingResponse (Prelude.Maybe Prelude.Text)
describeThingResponse_thingName = Lens.lens (\DescribeThingResponse' {thingName} -> thingName) (\s@DescribeThingResponse' {} a -> s {thingName = a} :: DescribeThingResponse)

-- | The ID of the thing to describe.
describeThingResponse_thingId :: Lens.Lens' DescribeThingResponse (Prelude.Maybe Prelude.Text)
describeThingResponse_thingId = Lens.lens (\DescribeThingResponse' {thingId} -> thingId) (\s@DescribeThingResponse' {} a -> s {thingId = a} :: DescribeThingResponse)

-- | The ARN of the thing to describe.
describeThingResponse_thingArn :: Lens.Lens' DescribeThingResponse (Prelude.Maybe Prelude.Text)
describeThingResponse_thingArn = Lens.lens (\DescribeThingResponse' {thingArn} -> thingArn) (\s@DescribeThingResponse' {} a -> s {thingArn = a} :: DescribeThingResponse)

-- | The thing type name.
describeThingResponse_thingTypeName :: Lens.Lens' DescribeThingResponse (Prelude.Maybe Prelude.Text)
describeThingResponse_thingTypeName = Lens.lens (\DescribeThingResponse' {thingTypeName} -> thingTypeName) (\s@DescribeThingResponse' {} a -> s {thingTypeName = a} :: DescribeThingResponse)

-- | The default MQTT client ID. For a typical device, the thing name is also
-- used as the default MQTT client ID. Although we don’t require a mapping
-- between a thing\'s registry name and its use of MQTT client IDs,
-- certificates, or shadow state, we recommend that you choose a thing name
-- and use it as the MQTT client ID for the registry and the Device Shadow
-- service.
--
-- This lets you better organize your IoT fleet without removing the
-- flexibility of the underlying device certificate model or shadows.
describeThingResponse_defaultClientId :: Lens.Lens' DescribeThingResponse (Prelude.Maybe Prelude.Text)
describeThingResponse_defaultClientId = Lens.lens (\DescribeThingResponse' {defaultClientId} -> defaultClientId) (\s@DescribeThingResponse' {} a -> s {defaultClientId = a} :: DescribeThingResponse)

-- | The thing attributes.
describeThingResponse_attributes :: Lens.Lens' DescribeThingResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeThingResponse_attributes = Lens.lens (\DescribeThingResponse' {attributes} -> attributes) (\s@DescribeThingResponse' {} a -> s {attributes = a} :: DescribeThingResponse) Prelude.. Lens.mapping Lens.coerced

-- | The current version of the thing record in the registry.
--
-- To avoid unintentional changes to the information in the registry, you
-- can pass the version information in the @expectedVersion@ parameter of
-- the @UpdateThing@ and @DeleteThing@ calls.
describeThingResponse_version :: Lens.Lens' DescribeThingResponse (Prelude.Maybe Prelude.Integer)
describeThingResponse_version = Lens.lens (\DescribeThingResponse' {version} -> version) (\s@DescribeThingResponse' {} a -> s {version = a} :: DescribeThingResponse)

-- | The response's http status code.
describeThingResponse_httpStatus :: Lens.Lens' DescribeThingResponse Prelude.Int
describeThingResponse_httpStatus = Lens.lens (\DescribeThingResponse' {httpStatus} -> httpStatus) (\s@DescribeThingResponse' {} a -> s {httpStatus = a} :: DescribeThingResponse)

instance Prelude.NFData DescribeThingResponse where
  rnf DescribeThingResponse' {..} =
    Prelude.rnf billingGroupName
      `Prelude.seq` Prelude.rnf thingName
      `Prelude.seq` Prelude.rnf thingId
      `Prelude.seq` Prelude.rnf thingArn
      `Prelude.seq` Prelude.rnf thingTypeName
      `Prelude.seq` Prelude.rnf defaultClientId
      `Prelude.seq` Prelude.rnf attributes
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf httpStatus
