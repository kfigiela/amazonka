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
-- Module      : Amazonka.RobOMaker.DescribeWorld
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a world.
module Amazonka.RobOMaker.DescribeWorld
  ( -- * Creating a Request
    DescribeWorld (..),
    newDescribeWorld,

    -- * Request Lenses
    describeWorld_world,

    -- * Destructuring the Response
    DescribeWorldResponse (..),
    newDescribeWorldResponse,

    -- * Response Lenses
    describeWorldResponse_tags,
    describeWorldResponse_arn,
    describeWorldResponse_generationJob,
    describeWorldResponse_worldDescriptionBody,
    describeWorldResponse_createdAt,
    describeWorldResponse_template,
    describeWorldResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.RobOMaker.Types

-- | /See:/ 'newDescribeWorld' smart constructor.
data DescribeWorld = DescribeWorld'
  { -- | The Amazon Resource Name (arn) of the world you want to describe.
    world :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorld' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'world', 'describeWorld_world' - The Amazon Resource Name (arn) of the world you want to describe.
newDescribeWorld ::
  -- | 'world'
  Prelude.Text ->
  DescribeWorld
newDescribeWorld pWorld_ =
  DescribeWorld' {world = pWorld_}

-- | The Amazon Resource Name (arn) of the world you want to describe.
describeWorld_world :: Lens.Lens' DescribeWorld Prelude.Text
describeWorld_world = Lens.lens (\DescribeWorld' {world} -> world) (\s@DescribeWorld' {} a -> s {world = a} :: DescribeWorld)

instance Core.AWSRequest DescribeWorld where
  type
    AWSResponse DescribeWorld =
      DescribeWorldResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeWorldResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "generationJob")
            Prelude.<*> (x Core..?> "worldDescriptionBody")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "template")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeWorld where
  hashWithSalt _salt DescribeWorld' {..} =
    _salt `Prelude.hashWithSalt` world

instance Prelude.NFData DescribeWorld where
  rnf DescribeWorld' {..} = Prelude.rnf world

instance Core.ToHeaders DescribeWorld where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeWorld where
  toJSON DescribeWorld' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("world" Core..= world)]
      )

instance Core.ToPath DescribeWorld where
  toPath = Prelude.const "/describeWorld"

instance Core.ToQuery DescribeWorld where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeWorldResponse' smart constructor.
data DescribeWorldResponse = DescribeWorldResponse'
  { -- | A map that contains tag keys and tag values that are attached to the
    -- world.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Name (arn) of the world.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (arn) of the world generation job that
    -- generated the world.
    generationJob :: Prelude.Maybe Prelude.Text,
    -- | Returns the JSON formatted string that describes the contents of your
    -- world.
    worldDescriptionBody :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the world was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The world template.
    template :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorldResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeWorldResponse_tags' - A map that contains tag keys and tag values that are attached to the
-- world.
--
-- 'arn', 'describeWorldResponse_arn' - The Amazon Resource Name (arn) of the world.
--
-- 'generationJob', 'describeWorldResponse_generationJob' - The Amazon Resource Name (arn) of the world generation job that
-- generated the world.
--
-- 'worldDescriptionBody', 'describeWorldResponse_worldDescriptionBody' - Returns the JSON formatted string that describes the contents of your
-- world.
--
-- 'createdAt', 'describeWorldResponse_createdAt' - The time, in milliseconds since the epoch, when the world was created.
--
-- 'template', 'describeWorldResponse_template' - The world template.
--
-- 'httpStatus', 'describeWorldResponse_httpStatus' - The response's http status code.
newDescribeWorldResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeWorldResponse
newDescribeWorldResponse pHttpStatus_ =
  DescribeWorldResponse'
    { tags = Prelude.Nothing,
      arn = Prelude.Nothing,
      generationJob = Prelude.Nothing,
      worldDescriptionBody = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      template = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A map that contains tag keys and tag values that are attached to the
-- world.
describeWorldResponse_tags :: Lens.Lens' DescribeWorldResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeWorldResponse_tags = Lens.lens (\DescribeWorldResponse' {tags} -> tags) (\s@DescribeWorldResponse' {} a -> s {tags = a} :: DescribeWorldResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (arn) of the world.
describeWorldResponse_arn :: Lens.Lens' DescribeWorldResponse (Prelude.Maybe Prelude.Text)
describeWorldResponse_arn = Lens.lens (\DescribeWorldResponse' {arn} -> arn) (\s@DescribeWorldResponse' {} a -> s {arn = a} :: DescribeWorldResponse)

-- | The Amazon Resource Name (arn) of the world generation job that
-- generated the world.
describeWorldResponse_generationJob :: Lens.Lens' DescribeWorldResponse (Prelude.Maybe Prelude.Text)
describeWorldResponse_generationJob = Lens.lens (\DescribeWorldResponse' {generationJob} -> generationJob) (\s@DescribeWorldResponse' {} a -> s {generationJob = a} :: DescribeWorldResponse)

-- | Returns the JSON formatted string that describes the contents of your
-- world.
describeWorldResponse_worldDescriptionBody :: Lens.Lens' DescribeWorldResponse (Prelude.Maybe Prelude.Text)
describeWorldResponse_worldDescriptionBody = Lens.lens (\DescribeWorldResponse' {worldDescriptionBody} -> worldDescriptionBody) (\s@DescribeWorldResponse' {} a -> s {worldDescriptionBody = a} :: DescribeWorldResponse)

-- | The time, in milliseconds since the epoch, when the world was created.
describeWorldResponse_createdAt :: Lens.Lens' DescribeWorldResponse (Prelude.Maybe Prelude.UTCTime)
describeWorldResponse_createdAt = Lens.lens (\DescribeWorldResponse' {createdAt} -> createdAt) (\s@DescribeWorldResponse' {} a -> s {createdAt = a} :: DescribeWorldResponse) Prelude.. Lens.mapping Core._Time

-- | The world template.
describeWorldResponse_template :: Lens.Lens' DescribeWorldResponse (Prelude.Maybe Prelude.Text)
describeWorldResponse_template = Lens.lens (\DescribeWorldResponse' {template} -> template) (\s@DescribeWorldResponse' {} a -> s {template = a} :: DescribeWorldResponse)

-- | The response's http status code.
describeWorldResponse_httpStatus :: Lens.Lens' DescribeWorldResponse Prelude.Int
describeWorldResponse_httpStatus = Lens.lens (\DescribeWorldResponse' {httpStatus} -> httpStatus) (\s@DescribeWorldResponse' {} a -> s {httpStatus = a} :: DescribeWorldResponse)

instance Prelude.NFData DescribeWorldResponse where
  rnf DescribeWorldResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf generationJob
      `Prelude.seq` Prelude.rnf worldDescriptionBody
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf template
      `Prelude.seq` Prelude.rnf httpStatus
