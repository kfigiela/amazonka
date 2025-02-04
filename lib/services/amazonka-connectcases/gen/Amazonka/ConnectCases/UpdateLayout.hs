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
-- Module      : Amazonka.ConnectCases.UpdateLayout
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the attributes of an existing layout.
--
-- If the action is successful, the service sends back an HTTP 200 response
-- with an empty HTTP body.
--
-- A @ValidationException@ is returned when you add non-existent @fieldIds@
-- to a layout.
--
-- Title and Status fields cannot be part of layouts because they are not
-- configurable.
module Amazonka.ConnectCases.UpdateLayout
  ( -- * Creating a Request
    UpdateLayout (..),
    newUpdateLayout,

    -- * Request Lenses
    updateLayout_name,
    updateLayout_content,
    updateLayout_domainId,
    updateLayout_layoutId,

    -- * Destructuring the Response
    UpdateLayoutResponse (..),
    newUpdateLayoutResponse,

    -- * Response Lenses
    updateLayoutResponse_httpStatus,
  )
where

import Amazonka.ConnectCases.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLayout' smart constructor.
data UpdateLayout = UpdateLayout'
  { -- | The name of the layout. It must be unique per domain.
    name :: Prelude.Maybe Prelude.Text,
    -- | Information about which fields will be present in the layout, the order
    -- of the fields, and a read-only attribute of the field.
    content :: Prelude.Maybe LayoutContent,
    -- | The unique identifier of the Cases domain.
    domainId :: Prelude.Text,
    -- | The unique identifier of the layout.
    layoutId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLayout' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateLayout_name' - The name of the layout. It must be unique per domain.
--
-- 'content', 'updateLayout_content' - Information about which fields will be present in the layout, the order
-- of the fields, and a read-only attribute of the field.
--
-- 'domainId', 'updateLayout_domainId' - The unique identifier of the Cases domain.
--
-- 'layoutId', 'updateLayout_layoutId' - The unique identifier of the layout.
newUpdateLayout ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'layoutId'
  Prelude.Text ->
  UpdateLayout
newUpdateLayout pDomainId_ pLayoutId_ =
  UpdateLayout'
    { name = Prelude.Nothing,
      content = Prelude.Nothing,
      domainId = pDomainId_,
      layoutId = pLayoutId_
    }

-- | The name of the layout. It must be unique per domain.
updateLayout_name :: Lens.Lens' UpdateLayout (Prelude.Maybe Prelude.Text)
updateLayout_name = Lens.lens (\UpdateLayout' {name} -> name) (\s@UpdateLayout' {} a -> s {name = a} :: UpdateLayout)

-- | Information about which fields will be present in the layout, the order
-- of the fields, and a read-only attribute of the field.
updateLayout_content :: Lens.Lens' UpdateLayout (Prelude.Maybe LayoutContent)
updateLayout_content = Lens.lens (\UpdateLayout' {content} -> content) (\s@UpdateLayout' {} a -> s {content = a} :: UpdateLayout)

-- | The unique identifier of the Cases domain.
updateLayout_domainId :: Lens.Lens' UpdateLayout Prelude.Text
updateLayout_domainId = Lens.lens (\UpdateLayout' {domainId} -> domainId) (\s@UpdateLayout' {} a -> s {domainId = a} :: UpdateLayout)

-- | The unique identifier of the layout.
updateLayout_layoutId :: Lens.Lens' UpdateLayout Prelude.Text
updateLayout_layoutId = Lens.lens (\UpdateLayout' {layoutId} -> layoutId) (\s@UpdateLayout' {} a -> s {layoutId = a} :: UpdateLayout)

instance Core.AWSRequest UpdateLayout where
  type AWSResponse UpdateLayout = UpdateLayoutResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateLayoutResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLayout where
  hashWithSalt _salt UpdateLayout' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` content
      `Prelude.hashWithSalt` domainId
      `Prelude.hashWithSalt` layoutId

instance Prelude.NFData UpdateLayout where
  rnf UpdateLayout' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf content
      `Prelude.seq` Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf layoutId

instance Core.ToHeaders UpdateLayout where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLayout where
  toJSON UpdateLayout' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("content" Core..=) Prelude.<$> content
          ]
      )

instance Core.ToPath UpdateLayout where
  toPath UpdateLayout' {..} =
    Prelude.mconcat
      [ "/domains/",
        Core.toBS domainId,
        "/layouts/",
        Core.toBS layoutId
      ]

instance Core.ToQuery UpdateLayout where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLayoutResponse' smart constructor.
data UpdateLayoutResponse = UpdateLayoutResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLayoutResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateLayoutResponse_httpStatus' - The response's http status code.
newUpdateLayoutResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLayoutResponse
newUpdateLayoutResponse pHttpStatus_ =
  UpdateLayoutResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateLayoutResponse_httpStatus :: Lens.Lens' UpdateLayoutResponse Prelude.Int
updateLayoutResponse_httpStatus = Lens.lens (\UpdateLayoutResponse' {httpStatus} -> httpStatus) (\s@UpdateLayoutResponse' {} a -> s {httpStatus = a} :: UpdateLayoutResponse)

instance Prelude.NFData UpdateLayoutResponse where
  rnf UpdateLayoutResponse' {..} =
    Prelude.rnf httpStatus
