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
-- Module      : Amazonka.ServiceCatalog.DescribeCopyProductStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of the specified copy product operation.
module Amazonka.ServiceCatalog.DescribeCopyProductStatus
  ( -- * Creating a Request
    DescribeCopyProductStatus (..),
    newDescribeCopyProductStatus,

    -- * Request Lenses
    describeCopyProductStatus_acceptLanguage,
    describeCopyProductStatus_copyProductToken,

    -- * Destructuring the Response
    DescribeCopyProductStatusResponse (..),
    newDescribeCopyProductStatusResponse,

    -- * Response Lenses
    describeCopyProductStatusResponse_targetProductId,
    describeCopyProductStatusResponse_statusDetail,
    describeCopyProductStatusResponse_copyProductStatus,
    describeCopyProductStatusResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalog.Types

-- | /See:/ 'newDescribeCopyProductStatus' smart constructor.
data DescribeCopyProductStatus = DescribeCopyProductStatus'
  { -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The token for the copy product operation. This token is returned by
    -- CopyProduct.
    copyProductToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCopyProductStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceptLanguage', 'describeCopyProductStatus_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'copyProductToken', 'describeCopyProductStatus_copyProductToken' - The token for the copy product operation. This token is returned by
-- CopyProduct.
newDescribeCopyProductStatus ::
  -- | 'copyProductToken'
  Prelude.Text ->
  DescribeCopyProductStatus
newDescribeCopyProductStatus pCopyProductToken_ =
  DescribeCopyProductStatus'
    { acceptLanguage =
        Prelude.Nothing,
      copyProductToken = pCopyProductToken_
    }

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
describeCopyProductStatus_acceptLanguage :: Lens.Lens' DescribeCopyProductStatus (Prelude.Maybe Prelude.Text)
describeCopyProductStatus_acceptLanguage = Lens.lens (\DescribeCopyProductStatus' {acceptLanguage} -> acceptLanguage) (\s@DescribeCopyProductStatus' {} a -> s {acceptLanguage = a} :: DescribeCopyProductStatus)

-- | The token for the copy product operation. This token is returned by
-- CopyProduct.
describeCopyProductStatus_copyProductToken :: Lens.Lens' DescribeCopyProductStatus Prelude.Text
describeCopyProductStatus_copyProductToken = Lens.lens (\DescribeCopyProductStatus' {copyProductToken} -> copyProductToken) (\s@DescribeCopyProductStatus' {} a -> s {copyProductToken = a} :: DescribeCopyProductStatus)

instance Core.AWSRequest DescribeCopyProductStatus where
  type
    AWSResponse DescribeCopyProductStatus =
      DescribeCopyProductStatusResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeCopyProductStatusResponse'
            Prelude.<$> (x Core..?> "TargetProductId")
            Prelude.<*> (x Core..?> "StatusDetail")
            Prelude.<*> (x Core..?> "CopyProductStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeCopyProductStatus where
  hashWithSalt _salt DescribeCopyProductStatus' {..} =
    _salt `Prelude.hashWithSalt` acceptLanguage
      `Prelude.hashWithSalt` copyProductToken

instance Prelude.NFData DescribeCopyProductStatus where
  rnf DescribeCopyProductStatus' {..} =
    Prelude.rnf acceptLanguage
      `Prelude.seq` Prelude.rnf copyProductToken

instance Core.ToHeaders DescribeCopyProductStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.DescribeCopyProductStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeCopyProductStatus where
  toJSON DescribeCopyProductStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            Prelude.Just
              ("CopyProductToken" Core..= copyProductToken)
          ]
      )

instance Core.ToPath DescribeCopyProductStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeCopyProductStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeCopyProductStatusResponse' smart constructor.
data DescribeCopyProductStatusResponse = DescribeCopyProductStatusResponse'
  { -- | The identifier of the copied product.
    targetProductId :: Prelude.Maybe Prelude.Text,
    -- | The status message.
    statusDetail :: Prelude.Maybe Prelude.Text,
    -- | The status of the copy product operation.
    copyProductStatus :: Prelude.Maybe CopyProductStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCopyProductStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetProductId', 'describeCopyProductStatusResponse_targetProductId' - The identifier of the copied product.
--
-- 'statusDetail', 'describeCopyProductStatusResponse_statusDetail' - The status message.
--
-- 'copyProductStatus', 'describeCopyProductStatusResponse_copyProductStatus' - The status of the copy product operation.
--
-- 'httpStatus', 'describeCopyProductStatusResponse_httpStatus' - The response's http status code.
newDescribeCopyProductStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCopyProductStatusResponse
newDescribeCopyProductStatusResponse pHttpStatus_ =
  DescribeCopyProductStatusResponse'
    { targetProductId =
        Prelude.Nothing,
      statusDetail = Prelude.Nothing,
      copyProductStatus = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier of the copied product.
describeCopyProductStatusResponse_targetProductId :: Lens.Lens' DescribeCopyProductStatusResponse (Prelude.Maybe Prelude.Text)
describeCopyProductStatusResponse_targetProductId = Lens.lens (\DescribeCopyProductStatusResponse' {targetProductId} -> targetProductId) (\s@DescribeCopyProductStatusResponse' {} a -> s {targetProductId = a} :: DescribeCopyProductStatusResponse)

-- | The status message.
describeCopyProductStatusResponse_statusDetail :: Lens.Lens' DescribeCopyProductStatusResponse (Prelude.Maybe Prelude.Text)
describeCopyProductStatusResponse_statusDetail = Lens.lens (\DescribeCopyProductStatusResponse' {statusDetail} -> statusDetail) (\s@DescribeCopyProductStatusResponse' {} a -> s {statusDetail = a} :: DescribeCopyProductStatusResponse)

-- | The status of the copy product operation.
describeCopyProductStatusResponse_copyProductStatus :: Lens.Lens' DescribeCopyProductStatusResponse (Prelude.Maybe CopyProductStatus)
describeCopyProductStatusResponse_copyProductStatus = Lens.lens (\DescribeCopyProductStatusResponse' {copyProductStatus} -> copyProductStatus) (\s@DescribeCopyProductStatusResponse' {} a -> s {copyProductStatus = a} :: DescribeCopyProductStatusResponse)

-- | The response's http status code.
describeCopyProductStatusResponse_httpStatus :: Lens.Lens' DescribeCopyProductStatusResponse Prelude.Int
describeCopyProductStatusResponse_httpStatus = Lens.lens (\DescribeCopyProductStatusResponse' {httpStatus} -> httpStatus) (\s@DescribeCopyProductStatusResponse' {} a -> s {httpStatus = a} :: DescribeCopyProductStatusResponse)

instance
  Prelude.NFData
    DescribeCopyProductStatusResponse
  where
  rnf DescribeCopyProductStatusResponse' {..} =
    Prelude.rnf targetProductId
      `Prelude.seq` Prelude.rnf statusDetail
      `Prelude.seq` Prelude.rnf copyProductStatus
      `Prelude.seq` Prelude.rnf httpStatus
