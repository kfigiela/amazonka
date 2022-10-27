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
-- Module      : Amazonka.Lambda.ListLayerVersions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of an
-- <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html Lambda layer>.
-- Versions that have been deleted aren\'t listed. Specify a
-- <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime identifier>
-- to list only versions that indicate that they\'re compatible with that
-- runtime. Specify a compatible architecture to include only layer
-- versions that are compatible with that architecture.
--
-- This operation returns paginated results.
module Amazonka.Lambda.ListLayerVersions
  ( -- * Creating a Request
    ListLayerVersions (..),
    newListLayerVersions,

    -- * Request Lenses
    listLayerVersions_compatibleArchitecture,
    listLayerVersions_marker,
    listLayerVersions_maxItems,
    listLayerVersions_compatibleRuntime,
    listLayerVersions_layerName,

    -- * Destructuring the Response
    ListLayerVersionsResponse (..),
    newListLayerVersionsResponse,

    -- * Response Lenses
    listLayerVersionsResponse_nextMarker,
    listLayerVersionsResponse_layerVersions,
    listLayerVersionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Lambda.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListLayerVersions' smart constructor.
data ListLayerVersions = ListLayerVersions'
  { -- | The compatible
    -- <https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html instruction set architecture>.
    compatibleArchitecture :: Prelude.Maybe Architecture,
    -- | A pagination token returned by a previous call.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of versions to return.
    maxItems :: Prelude.Maybe Prelude.Natural,
    -- | A runtime identifier. For example, @go1.x@.
    compatibleRuntime :: Prelude.Maybe Runtime,
    -- | The name or Amazon Resource Name (ARN) of the layer.
    layerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLayerVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compatibleArchitecture', 'listLayerVersions_compatibleArchitecture' - The compatible
-- <https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html instruction set architecture>.
--
-- 'marker', 'listLayerVersions_marker' - A pagination token returned by a previous call.
--
-- 'maxItems', 'listLayerVersions_maxItems' - The maximum number of versions to return.
--
-- 'compatibleRuntime', 'listLayerVersions_compatibleRuntime' - A runtime identifier. For example, @go1.x@.
--
-- 'layerName', 'listLayerVersions_layerName' - The name or Amazon Resource Name (ARN) of the layer.
newListLayerVersions ::
  -- | 'layerName'
  Prelude.Text ->
  ListLayerVersions
newListLayerVersions pLayerName_ =
  ListLayerVersions'
    { compatibleArchitecture =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      maxItems = Prelude.Nothing,
      compatibleRuntime = Prelude.Nothing,
      layerName = pLayerName_
    }

-- | The compatible
-- <https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html instruction set architecture>.
listLayerVersions_compatibleArchitecture :: Lens.Lens' ListLayerVersions (Prelude.Maybe Architecture)
listLayerVersions_compatibleArchitecture = Lens.lens (\ListLayerVersions' {compatibleArchitecture} -> compatibleArchitecture) (\s@ListLayerVersions' {} a -> s {compatibleArchitecture = a} :: ListLayerVersions)

-- | A pagination token returned by a previous call.
listLayerVersions_marker :: Lens.Lens' ListLayerVersions (Prelude.Maybe Prelude.Text)
listLayerVersions_marker = Lens.lens (\ListLayerVersions' {marker} -> marker) (\s@ListLayerVersions' {} a -> s {marker = a} :: ListLayerVersions)

-- | The maximum number of versions to return.
listLayerVersions_maxItems :: Lens.Lens' ListLayerVersions (Prelude.Maybe Prelude.Natural)
listLayerVersions_maxItems = Lens.lens (\ListLayerVersions' {maxItems} -> maxItems) (\s@ListLayerVersions' {} a -> s {maxItems = a} :: ListLayerVersions)

-- | A runtime identifier. For example, @go1.x@.
listLayerVersions_compatibleRuntime :: Lens.Lens' ListLayerVersions (Prelude.Maybe Runtime)
listLayerVersions_compatibleRuntime = Lens.lens (\ListLayerVersions' {compatibleRuntime} -> compatibleRuntime) (\s@ListLayerVersions' {} a -> s {compatibleRuntime = a} :: ListLayerVersions)

-- | The name or Amazon Resource Name (ARN) of the layer.
listLayerVersions_layerName :: Lens.Lens' ListLayerVersions Prelude.Text
listLayerVersions_layerName = Lens.lens (\ListLayerVersions' {layerName} -> layerName) (\s@ListLayerVersions' {} a -> s {layerName = a} :: ListLayerVersions)

instance Core.AWSPager ListLayerVersions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listLayerVersionsResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listLayerVersionsResponse_layerVersions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listLayerVersions_marker
          Lens..~ rs
          Lens.^? listLayerVersionsResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest ListLayerVersions where
  type
    AWSResponse ListLayerVersions =
      ListLayerVersionsResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLayerVersionsResponse'
            Prelude.<$> (x Core..?> "NextMarker")
            Prelude.<*> (x Core..?> "LayerVersions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLayerVersions where
  hashWithSalt _salt ListLayerVersions' {..} =
    _salt `Prelude.hashWithSalt` compatibleArchitecture
      `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` maxItems
      `Prelude.hashWithSalt` compatibleRuntime
      `Prelude.hashWithSalt` layerName

instance Prelude.NFData ListLayerVersions where
  rnf ListLayerVersions' {..} =
    Prelude.rnf compatibleArchitecture
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf maxItems
      `Prelude.seq` Prelude.rnf compatibleRuntime
      `Prelude.seq` Prelude.rnf layerName

instance Core.ToHeaders ListLayerVersions where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListLayerVersions where
  toPath ListLayerVersions' {..} =
    Prelude.mconcat
      [ "/2018-10-31/layers/",
        Core.toBS layerName,
        "/versions"
      ]

instance Core.ToQuery ListLayerVersions where
  toQuery ListLayerVersions' {..} =
    Prelude.mconcat
      [ "CompatibleArchitecture"
          Core.=: compatibleArchitecture,
        "Marker" Core.=: marker,
        "MaxItems" Core.=: maxItems,
        "CompatibleRuntime" Core.=: compatibleRuntime
      ]

-- | /See:/ 'newListLayerVersionsResponse' smart constructor.
data ListLayerVersionsResponse = ListLayerVersionsResponse'
  { -- | A pagination token returned when the response doesn\'t contain all
    -- versions.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | A list of versions.
    layerVersions :: Prelude.Maybe [LayerVersionsListItem],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLayerVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextMarker', 'listLayerVersionsResponse_nextMarker' - A pagination token returned when the response doesn\'t contain all
-- versions.
--
-- 'layerVersions', 'listLayerVersionsResponse_layerVersions' - A list of versions.
--
-- 'httpStatus', 'listLayerVersionsResponse_httpStatus' - The response's http status code.
newListLayerVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLayerVersionsResponse
newListLayerVersionsResponse pHttpStatus_ =
  ListLayerVersionsResponse'
    { nextMarker =
        Prelude.Nothing,
      layerVersions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A pagination token returned when the response doesn\'t contain all
-- versions.
listLayerVersionsResponse_nextMarker :: Lens.Lens' ListLayerVersionsResponse (Prelude.Maybe Prelude.Text)
listLayerVersionsResponse_nextMarker = Lens.lens (\ListLayerVersionsResponse' {nextMarker} -> nextMarker) (\s@ListLayerVersionsResponse' {} a -> s {nextMarker = a} :: ListLayerVersionsResponse)

-- | A list of versions.
listLayerVersionsResponse_layerVersions :: Lens.Lens' ListLayerVersionsResponse (Prelude.Maybe [LayerVersionsListItem])
listLayerVersionsResponse_layerVersions = Lens.lens (\ListLayerVersionsResponse' {layerVersions} -> layerVersions) (\s@ListLayerVersionsResponse' {} a -> s {layerVersions = a} :: ListLayerVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLayerVersionsResponse_httpStatus :: Lens.Lens' ListLayerVersionsResponse Prelude.Int
listLayerVersionsResponse_httpStatus = Lens.lens (\ListLayerVersionsResponse' {httpStatus} -> httpStatus) (\s@ListLayerVersionsResponse' {} a -> s {httpStatus = a} :: ListLayerVersionsResponse)

instance Prelude.NFData ListLayerVersionsResponse where
  rnf ListLayerVersionsResponse' {..} =
    Prelude.rnf nextMarker
      `Prelude.seq` Prelude.rnf layerVersions
      `Prelude.seq` Prelude.rnf httpStatus
