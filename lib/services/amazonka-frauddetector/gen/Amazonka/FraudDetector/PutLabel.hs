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
-- Module      : Amazonka.FraudDetector.PutLabel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates label. A label classifies an event as fraudulent or
-- legitimate. Labels are associated with event types and used to train
-- supervised machine learning models in Amazon Fraud Detector.
module Amazonka.FraudDetector.PutLabel
  ( -- * Creating a Request
    PutLabel (..),
    newPutLabel,

    -- * Request Lenses
    putLabel_tags,
    putLabel_description,
    putLabel_name,

    -- * Destructuring the Response
    PutLabelResponse (..),
    newPutLabelResponse,

    -- * Response Lenses
    putLabelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutLabel' smart constructor.
data PutLabel = PutLabel'
  { tags :: Prelude.Maybe [Tag],
    -- | The label description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The label name.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutLabel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'putLabel_tags' -
--
-- 'description', 'putLabel_description' - The label description.
--
-- 'name', 'putLabel_name' - The label name.
newPutLabel ::
  -- | 'name'
  Prelude.Text ->
  PutLabel
newPutLabel pName_ =
  PutLabel'
    { tags = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_
    }

-- |
putLabel_tags :: Lens.Lens' PutLabel (Prelude.Maybe [Tag])
putLabel_tags = Lens.lens (\PutLabel' {tags} -> tags) (\s@PutLabel' {} a -> s {tags = a} :: PutLabel) Prelude.. Lens.mapping Lens.coerced

-- | The label description.
putLabel_description :: Lens.Lens' PutLabel (Prelude.Maybe Prelude.Text)
putLabel_description = Lens.lens (\PutLabel' {description} -> description) (\s@PutLabel' {} a -> s {description = a} :: PutLabel)

-- | The label name.
putLabel_name :: Lens.Lens' PutLabel Prelude.Text
putLabel_name = Lens.lens (\PutLabel' {name} -> name) (\s@PutLabel' {} a -> s {name = a} :: PutLabel)

instance Core.AWSRequest PutLabel where
  type AWSResponse PutLabel = PutLabelResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutLabelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutLabel where
  hashWithSalt _salt PutLabel' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name

instance Prelude.NFData PutLabel where
  rnf PutLabel' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders PutLabel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.PutLabel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutLabel where
  toJSON PutLabel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath PutLabel where
  toPath = Prelude.const "/"

instance Core.ToQuery PutLabel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutLabelResponse' smart constructor.
data PutLabelResponse = PutLabelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutLabelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putLabelResponse_httpStatus' - The response's http status code.
newPutLabelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutLabelResponse
newPutLabelResponse pHttpStatus_ =
  PutLabelResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
putLabelResponse_httpStatus :: Lens.Lens' PutLabelResponse Prelude.Int
putLabelResponse_httpStatus = Lens.lens (\PutLabelResponse' {httpStatus} -> httpStatus) (\s@PutLabelResponse' {} a -> s {httpStatus = a} :: PutLabelResponse)

instance Prelude.NFData PutLabelResponse where
  rnf PutLabelResponse' {..} = Prelude.rnf httpStatus
