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
-- Module      : Amazonka.Location.GetMapStyleDescriptor
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the map style descriptor from a map resource.
--
-- The style descriptor contains speciﬁcations on how features render on a
-- map. For example, what data to display, what order to display the data
-- in, and the style for the data. Style descriptors follow the Mapbox
-- Style Specification.
module Amazonka.Location.GetMapStyleDescriptor
  ( -- * Creating a Request
    GetMapStyleDescriptor (..),
    newGetMapStyleDescriptor,

    -- * Request Lenses
    getMapStyleDescriptor_mapName,

    -- * Destructuring the Response
    GetMapStyleDescriptorResponse (..),
    newGetMapStyleDescriptorResponse,

    -- * Response Lenses
    getMapStyleDescriptorResponse_blob,
    getMapStyleDescriptorResponse_contentType,
    getMapStyleDescriptorResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Location.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetMapStyleDescriptor' smart constructor.
data GetMapStyleDescriptor = GetMapStyleDescriptor'
  { -- | The map resource to retrieve the style descriptor from.
    mapName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMapStyleDescriptor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mapName', 'getMapStyleDescriptor_mapName' - The map resource to retrieve the style descriptor from.
newGetMapStyleDescriptor ::
  -- | 'mapName'
  Prelude.Text ->
  GetMapStyleDescriptor
newGetMapStyleDescriptor pMapName_ =
  GetMapStyleDescriptor' {mapName = pMapName_}

-- | The map resource to retrieve the style descriptor from.
getMapStyleDescriptor_mapName :: Lens.Lens' GetMapStyleDescriptor Prelude.Text
getMapStyleDescriptor_mapName = Lens.lens (\GetMapStyleDescriptor' {mapName} -> mapName) (\s@GetMapStyleDescriptor' {} a -> s {mapName = a} :: GetMapStyleDescriptor)

instance Core.AWSRequest GetMapStyleDescriptor where
  type
    AWSResponse GetMapStyleDescriptor =
      GetMapStyleDescriptorResponse
  request = Request.get defaultService
  response =
    Response.receiveBytes
      ( \s h x ->
          GetMapStyleDescriptorResponse'
            Prelude.<$> (Prelude.pure (Prelude.Just (Prelude.coerce x)))
            Prelude.<*> (h Core..#? "Content-Type")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMapStyleDescriptor where
  hashWithSalt _salt GetMapStyleDescriptor' {..} =
    _salt `Prelude.hashWithSalt` mapName

instance Prelude.NFData GetMapStyleDescriptor where
  rnf GetMapStyleDescriptor' {..} = Prelude.rnf mapName

instance Core.ToHeaders GetMapStyleDescriptor where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetMapStyleDescriptor where
  toPath GetMapStyleDescriptor' {..} =
    Prelude.mconcat
      [ "/maps/v0/maps/",
        Core.toBS mapName,
        "/style-descriptor"
      ]

instance Core.ToQuery GetMapStyleDescriptor where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMapStyleDescriptorResponse' smart constructor.
data GetMapStyleDescriptorResponse = GetMapStyleDescriptorResponse'
  { -- | Contains the body of the style descriptor.
    blob :: Prelude.Maybe Prelude.ByteString,
    -- | The style descriptor\'s content type. For example, @application\/json@.
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMapStyleDescriptorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'blob', 'getMapStyleDescriptorResponse_blob' - Contains the body of the style descriptor.
--
-- 'contentType', 'getMapStyleDescriptorResponse_contentType' - The style descriptor\'s content type. For example, @application\/json@.
--
-- 'httpStatus', 'getMapStyleDescriptorResponse_httpStatus' - The response's http status code.
newGetMapStyleDescriptorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMapStyleDescriptorResponse
newGetMapStyleDescriptorResponse pHttpStatus_ =
  GetMapStyleDescriptorResponse'
    { blob =
        Prelude.Nothing,
      contentType = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains the body of the style descriptor.
getMapStyleDescriptorResponse_blob :: Lens.Lens' GetMapStyleDescriptorResponse (Prelude.Maybe Prelude.ByteString)
getMapStyleDescriptorResponse_blob = Lens.lens (\GetMapStyleDescriptorResponse' {blob} -> blob) (\s@GetMapStyleDescriptorResponse' {} a -> s {blob = a} :: GetMapStyleDescriptorResponse)

-- | The style descriptor\'s content type. For example, @application\/json@.
getMapStyleDescriptorResponse_contentType :: Lens.Lens' GetMapStyleDescriptorResponse (Prelude.Maybe Prelude.Text)
getMapStyleDescriptorResponse_contentType = Lens.lens (\GetMapStyleDescriptorResponse' {contentType} -> contentType) (\s@GetMapStyleDescriptorResponse' {} a -> s {contentType = a} :: GetMapStyleDescriptorResponse)

-- | The response's http status code.
getMapStyleDescriptorResponse_httpStatus :: Lens.Lens' GetMapStyleDescriptorResponse Prelude.Int
getMapStyleDescriptorResponse_httpStatus = Lens.lens (\GetMapStyleDescriptorResponse' {httpStatus} -> httpStatus) (\s@GetMapStyleDescriptorResponse' {} a -> s {httpStatus = a} :: GetMapStyleDescriptorResponse)

instance Prelude.NFData GetMapStyleDescriptorResponse where
  rnf GetMapStyleDescriptorResponse' {..} =
    Prelude.rnf blob
      `Prelude.seq` Prelude.rnf contentType
      `Prelude.seq` Prelude.rnf httpStatus
