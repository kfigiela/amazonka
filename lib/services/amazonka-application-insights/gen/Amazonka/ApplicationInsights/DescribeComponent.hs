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
-- Module      : Amazonka.ApplicationInsights.DescribeComponent
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a component and lists the resources that are grouped together
-- in a component.
module Amazonka.ApplicationInsights.DescribeComponent
  ( -- * Creating a Request
    DescribeComponent (..),
    newDescribeComponent,

    -- * Request Lenses
    describeComponent_resourceGroupName,
    describeComponent_componentName,

    -- * Destructuring the Response
    DescribeComponentResponse (..),
    newDescribeComponentResponse,

    -- * Response Lenses
    describeComponentResponse_resourceList,
    describeComponentResponse_applicationComponent,
    describeComponentResponse_httpStatus,
  )
where

import Amazonka.ApplicationInsights.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeComponent' smart constructor.
data DescribeComponent = DescribeComponent'
  { -- | The name of the resource group.
    resourceGroupName :: Prelude.Text,
    -- | The name of the component.
    componentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeComponent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceGroupName', 'describeComponent_resourceGroupName' - The name of the resource group.
--
-- 'componentName', 'describeComponent_componentName' - The name of the component.
newDescribeComponent ::
  -- | 'resourceGroupName'
  Prelude.Text ->
  -- | 'componentName'
  Prelude.Text ->
  DescribeComponent
newDescribeComponent
  pResourceGroupName_
  pComponentName_ =
    DescribeComponent'
      { resourceGroupName =
          pResourceGroupName_,
        componentName = pComponentName_
      }

-- | The name of the resource group.
describeComponent_resourceGroupName :: Lens.Lens' DescribeComponent Prelude.Text
describeComponent_resourceGroupName = Lens.lens (\DescribeComponent' {resourceGroupName} -> resourceGroupName) (\s@DescribeComponent' {} a -> s {resourceGroupName = a} :: DescribeComponent)

-- | The name of the component.
describeComponent_componentName :: Lens.Lens' DescribeComponent Prelude.Text
describeComponent_componentName = Lens.lens (\DescribeComponent' {componentName} -> componentName) (\s@DescribeComponent' {} a -> s {componentName = a} :: DescribeComponent)

instance Core.AWSRequest DescribeComponent where
  type
    AWSResponse DescribeComponent =
      DescribeComponentResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeComponentResponse'
            Prelude.<$> (x Core..?> "ResourceList" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ApplicationComponent")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeComponent where
  hashWithSalt _salt DescribeComponent' {..} =
    _salt `Prelude.hashWithSalt` resourceGroupName
      `Prelude.hashWithSalt` componentName

instance Prelude.NFData DescribeComponent where
  rnf DescribeComponent' {..} =
    Prelude.rnf resourceGroupName
      `Prelude.seq` Prelude.rnf componentName

instance Core.ToHeaders DescribeComponent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.DescribeComponent" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeComponent where
  toJSON DescribeComponent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceGroupName" Core..= resourceGroupName),
            Prelude.Just
              ("ComponentName" Core..= componentName)
          ]
      )

instance Core.ToPath DescribeComponent where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeComponent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeComponentResponse' smart constructor.
data DescribeComponentResponse = DescribeComponentResponse'
  { -- | The list of resource ARNs that belong to the component.
    resourceList :: Prelude.Maybe [Prelude.Text],
    applicationComponent :: Prelude.Maybe ApplicationComponent,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeComponentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceList', 'describeComponentResponse_resourceList' - The list of resource ARNs that belong to the component.
--
-- 'applicationComponent', 'describeComponentResponse_applicationComponent' - Undocumented member.
--
-- 'httpStatus', 'describeComponentResponse_httpStatus' - The response's http status code.
newDescribeComponentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeComponentResponse
newDescribeComponentResponse pHttpStatus_ =
  DescribeComponentResponse'
    { resourceList =
        Prelude.Nothing,
      applicationComponent = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of resource ARNs that belong to the component.
describeComponentResponse_resourceList :: Lens.Lens' DescribeComponentResponse (Prelude.Maybe [Prelude.Text])
describeComponentResponse_resourceList = Lens.lens (\DescribeComponentResponse' {resourceList} -> resourceList) (\s@DescribeComponentResponse' {} a -> s {resourceList = a} :: DescribeComponentResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
describeComponentResponse_applicationComponent :: Lens.Lens' DescribeComponentResponse (Prelude.Maybe ApplicationComponent)
describeComponentResponse_applicationComponent = Lens.lens (\DescribeComponentResponse' {applicationComponent} -> applicationComponent) (\s@DescribeComponentResponse' {} a -> s {applicationComponent = a} :: DescribeComponentResponse)

-- | The response's http status code.
describeComponentResponse_httpStatus :: Lens.Lens' DescribeComponentResponse Prelude.Int
describeComponentResponse_httpStatus = Lens.lens (\DescribeComponentResponse' {httpStatus} -> httpStatus) (\s@DescribeComponentResponse' {} a -> s {httpStatus = a} :: DescribeComponentResponse)

instance Prelude.NFData DescribeComponentResponse where
  rnf DescribeComponentResponse' {..} =
    Prelude.rnf resourceList
      `Prelude.seq` Prelude.rnf applicationComponent
      `Prelude.seq` Prelude.rnf httpStatus
