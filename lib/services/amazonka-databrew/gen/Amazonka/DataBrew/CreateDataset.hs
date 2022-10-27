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
-- Module      : Amazonka.DataBrew.CreateDataset
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DataBrew dataset.
module Amazonka.DataBrew.CreateDataset
  ( -- * Creating a Request
    CreateDataset (..),
    newCreateDataset,

    -- * Request Lenses
    createDataset_tags,
    createDataset_pathOptions,
    createDataset_format,
    createDataset_formatOptions,
    createDataset_name,
    createDataset_input,

    -- * Destructuring the Response
    CreateDatasetResponse (..),
    newCreateDatasetResponse,

    -- * Response Lenses
    createDatasetResponse_httpStatus,
    createDatasetResponse_name,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataBrew.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDataset' smart constructor.
data CreateDataset = CreateDataset'
  { -- | Metadata tags to apply to this dataset.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A set of options that defines how DataBrew interprets an Amazon S3 path
    -- of the dataset.
    pathOptions :: Prelude.Maybe PathOptions,
    -- | The file format of a dataset that is created from an Amazon S3 file or
    -- folder.
    format :: Prelude.Maybe InputFormat,
    formatOptions :: Prelude.Maybe FormatOptions,
    -- | The name of the dataset to be created. Valid characters are alphanumeric
    -- (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
    name :: Prelude.Text,
    input :: Input
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDataset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDataset_tags' - Metadata tags to apply to this dataset.
--
-- 'pathOptions', 'createDataset_pathOptions' - A set of options that defines how DataBrew interprets an Amazon S3 path
-- of the dataset.
--
-- 'format', 'createDataset_format' - The file format of a dataset that is created from an Amazon S3 file or
-- folder.
--
-- 'formatOptions', 'createDataset_formatOptions' - Undocumented member.
--
-- 'name', 'createDataset_name' - The name of the dataset to be created. Valid characters are alphanumeric
-- (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
--
-- 'input', 'createDataset_input' - Undocumented member.
newCreateDataset ::
  -- | 'name'
  Prelude.Text ->
  -- | 'input'
  Input ->
  CreateDataset
newCreateDataset pName_ pInput_ =
  CreateDataset'
    { tags = Prelude.Nothing,
      pathOptions = Prelude.Nothing,
      format = Prelude.Nothing,
      formatOptions = Prelude.Nothing,
      name = pName_,
      input = pInput_
    }

-- | Metadata tags to apply to this dataset.
createDataset_tags :: Lens.Lens' CreateDataset (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDataset_tags = Lens.lens (\CreateDataset' {tags} -> tags) (\s@CreateDataset' {} a -> s {tags = a} :: CreateDataset) Prelude.. Lens.mapping Lens.coerced

-- | A set of options that defines how DataBrew interprets an Amazon S3 path
-- of the dataset.
createDataset_pathOptions :: Lens.Lens' CreateDataset (Prelude.Maybe PathOptions)
createDataset_pathOptions = Lens.lens (\CreateDataset' {pathOptions} -> pathOptions) (\s@CreateDataset' {} a -> s {pathOptions = a} :: CreateDataset)

-- | The file format of a dataset that is created from an Amazon S3 file or
-- folder.
createDataset_format :: Lens.Lens' CreateDataset (Prelude.Maybe InputFormat)
createDataset_format = Lens.lens (\CreateDataset' {format} -> format) (\s@CreateDataset' {} a -> s {format = a} :: CreateDataset)

-- | Undocumented member.
createDataset_formatOptions :: Lens.Lens' CreateDataset (Prelude.Maybe FormatOptions)
createDataset_formatOptions = Lens.lens (\CreateDataset' {formatOptions} -> formatOptions) (\s@CreateDataset' {} a -> s {formatOptions = a} :: CreateDataset)

-- | The name of the dataset to be created. Valid characters are alphanumeric
-- (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
createDataset_name :: Lens.Lens' CreateDataset Prelude.Text
createDataset_name = Lens.lens (\CreateDataset' {name} -> name) (\s@CreateDataset' {} a -> s {name = a} :: CreateDataset)

-- | Undocumented member.
createDataset_input :: Lens.Lens' CreateDataset Input
createDataset_input = Lens.lens (\CreateDataset' {input} -> input) (\s@CreateDataset' {} a -> s {input = a} :: CreateDataset)

instance Core.AWSRequest CreateDataset where
  type
    AWSResponse CreateDataset =
      CreateDatasetResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDatasetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable CreateDataset where
  hashWithSalt _salt CreateDataset' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` pathOptions
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` formatOptions
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` input

instance Prelude.NFData CreateDataset where
  rnf CreateDataset' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf pathOptions
      `Prelude.seq` Prelude.rnf format
      `Prelude.seq` Prelude.rnf formatOptions
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf input

instance Core.ToHeaders CreateDataset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDataset where
  toJSON CreateDataset' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("PathOptions" Core..=) Prelude.<$> pathOptions,
            ("Format" Core..=) Prelude.<$> format,
            ("FormatOptions" Core..=) Prelude.<$> formatOptions,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Input" Core..= input)
          ]
      )

instance Core.ToPath CreateDataset where
  toPath = Prelude.const "/datasets"

instance Core.ToQuery CreateDataset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDatasetResponse' smart constructor.
data CreateDatasetResponse = CreateDatasetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the dataset that you created.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDatasetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createDatasetResponse_httpStatus' - The response's http status code.
--
-- 'name', 'createDatasetResponse_name' - The name of the dataset that you created.
newCreateDatasetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  CreateDatasetResponse
newCreateDatasetResponse pHttpStatus_ pName_ =
  CreateDatasetResponse'
    { httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The response's http status code.
createDatasetResponse_httpStatus :: Lens.Lens' CreateDatasetResponse Prelude.Int
createDatasetResponse_httpStatus = Lens.lens (\CreateDatasetResponse' {httpStatus} -> httpStatus) (\s@CreateDatasetResponse' {} a -> s {httpStatus = a} :: CreateDatasetResponse)

-- | The name of the dataset that you created.
createDatasetResponse_name :: Lens.Lens' CreateDatasetResponse Prelude.Text
createDatasetResponse_name = Lens.lens (\CreateDatasetResponse' {name} -> name) (\s@CreateDatasetResponse' {} a -> s {name = a} :: CreateDatasetResponse)

instance Prelude.NFData CreateDatasetResponse where
  rnf CreateDatasetResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf name
