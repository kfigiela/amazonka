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
-- Module      : Amazonka.Lambda.UntagResource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes <https://docs.aws.amazon.com/lambda/latest/dg/tagging.html tags>
-- from a function.
module Amazonka.Lambda.UntagResource
  ( -- * Creating a Request
    UntagResource (..),
    newUntagResource,

    -- * Request Lenses
    untagResource_resource,
    untagResource_tagKeys,

    -- * Destructuring the Response
    UntagResourceResponse (..),
    newUntagResourceResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Lambda.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUntagResource' smart constructor.
data UntagResource = UntagResource'
  { -- | The function\'s Amazon Resource Name (ARN).
    resource :: Prelude.Text,
    -- | A list of tag keys to remove from the function.
    tagKeys :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resource', 'untagResource_resource' - The function\'s Amazon Resource Name (ARN).
--
-- 'tagKeys', 'untagResource_tagKeys' - A list of tag keys to remove from the function.
newUntagResource ::
  -- | 'resource'
  Prelude.Text ->
  UntagResource
newUntagResource pResource_ =
  UntagResource'
    { resource = pResource_,
      tagKeys = Prelude.mempty
    }

-- | The function\'s Amazon Resource Name (ARN).
untagResource_resource :: Lens.Lens' UntagResource Prelude.Text
untagResource_resource = Lens.lens (\UntagResource' {resource} -> resource) (\s@UntagResource' {} a -> s {resource = a} :: UntagResource)

-- | A list of tag keys to remove from the function.
untagResource_tagKeys :: Lens.Lens' UntagResource [Prelude.Text]
untagResource_tagKeys = Lens.lens (\UntagResource' {tagKeys} -> tagKeys) (\s@UntagResource' {} a -> s {tagKeys = a} :: UntagResource) Prelude.. Lens.coerced

instance Core.AWSRequest UntagResource where
  type
    AWSResponse UntagResource =
      UntagResourceResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull UntagResourceResponse'

instance Prelude.Hashable UntagResource where
  hashWithSalt _salt UntagResource' {..} =
    _salt `Prelude.hashWithSalt` resource
      `Prelude.hashWithSalt` tagKeys

instance Prelude.NFData UntagResource where
  rnf UntagResource' {..} =
    Prelude.rnf resource
      `Prelude.seq` Prelude.rnf tagKeys

instance Core.ToHeaders UntagResource where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath UntagResource where
  toPath UntagResource' {..} =
    Prelude.mconcat
      ["/2017-03-31/tags/", Core.toBS resource]

instance Core.ToQuery UntagResource where
  toQuery UntagResource' {..} =
    Prelude.mconcat
      ["tagKeys" Core.=: Core.toQueryList "member" tagKeys]

-- | /See:/ 'newUntagResourceResponse' smart constructor.
data UntagResourceResponse = UntagResourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUntagResourceResponse ::
  UntagResourceResponse
newUntagResourceResponse = UntagResourceResponse'

instance Prelude.NFData UntagResourceResponse where
  rnf _ = ()
