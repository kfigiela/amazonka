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
-- Module      : Amazonka.FraudDetector.PutEntityType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates an entity type. An entity represents who is
-- performing the event. As part of a fraud prediction, you pass the entity
-- ID to indicate the specific entity who performed the event. An entity
-- type classifies the entity. Example classifications include customer,
-- merchant, or account.
module Amazonka.FraudDetector.PutEntityType
  ( -- * Creating a Request
    PutEntityType (..),
    newPutEntityType,

    -- * Request Lenses
    putEntityType_tags,
    putEntityType_description,
    putEntityType_name,

    -- * Destructuring the Response
    PutEntityTypeResponse (..),
    newPutEntityTypeResponse,

    -- * Response Lenses
    putEntityTypeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutEntityType' smart constructor.
data PutEntityType = PutEntityType'
  { -- | A collection of key and value pairs.
    tags :: Prelude.Maybe [Tag],
    -- | The description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the entity type.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEntityType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'putEntityType_tags' - A collection of key and value pairs.
--
-- 'description', 'putEntityType_description' - The description.
--
-- 'name', 'putEntityType_name' - The name of the entity type.
newPutEntityType ::
  -- | 'name'
  Prelude.Text ->
  PutEntityType
newPutEntityType pName_ =
  PutEntityType'
    { tags = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_
    }

-- | A collection of key and value pairs.
putEntityType_tags :: Lens.Lens' PutEntityType (Prelude.Maybe [Tag])
putEntityType_tags = Lens.lens (\PutEntityType' {tags} -> tags) (\s@PutEntityType' {} a -> s {tags = a} :: PutEntityType) Prelude.. Lens.mapping Lens.coerced

-- | The description.
putEntityType_description :: Lens.Lens' PutEntityType (Prelude.Maybe Prelude.Text)
putEntityType_description = Lens.lens (\PutEntityType' {description} -> description) (\s@PutEntityType' {} a -> s {description = a} :: PutEntityType)

-- | The name of the entity type.
putEntityType_name :: Lens.Lens' PutEntityType Prelude.Text
putEntityType_name = Lens.lens (\PutEntityType' {name} -> name) (\s@PutEntityType' {} a -> s {name = a} :: PutEntityType)

instance Core.AWSRequest PutEntityType where
  type
    AWSResponse PutEntityType =
      PutEntityTypeResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutEntityTypeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutEntityType where
  hashWithSalt _salt PutEntityType' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name

instance Prelude.NFData PutEntityType where
  rnf PutEntityType' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders PutEntityType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.PutEntityType" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutEntityType where
  toJSON PutEntityType' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath PutEntityType where
  toPath = Prelude.const "/"

instance Core.ToQuery PutEntityType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutEntityTypeResponse' smart constructor.
data PutEntityTypeResponse = PutEntityTypeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEntityTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putEntityTypeResponse_httpStatus' - The response's http status code.
newPutEntityTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutEntityTypeResponse
newPutEntityTypeResponse pHttpStatus_ =
  PutEntityTypeResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
putEntityTypeResponse_httpStatus :: Lens.Lens' PutEntityTypeResponse Prelude.Int
putEntityTypeResponse_httpStatus = Lens.lens (\PutEntityTypeResponse' {httpStatus} -> httpStatus) (\s@PutEntityTypeResponse' {} a -> s {httpStatus = a} :: PutEntityTypeResponse)

instance Prelude.NFData PutEntityTypeResponse where
  rnf PutEntityTypeResponse' {..} =
    Prelude.rnf httpStatus
