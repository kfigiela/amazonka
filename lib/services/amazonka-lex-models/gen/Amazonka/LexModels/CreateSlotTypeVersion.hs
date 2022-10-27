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
-- Module      : Amazonka.LexModels.CreateSlotTypeVersion
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of a slot type based on the @$LATEST@ version of
-- the specified slot type. If the @$LATEST@ version of this resource has
-- not changed since the last version that you created, Amazon Lex doesn\'t
-- create a new version. It returns the last version that you created.
--
-- You can update only the @$LATEST@ version of a slot type. You can\'t
-- update the numbered versions that you create with the
-- @CreateSlotTypeVersion@ operation.
--
-- When you create a version of a slot type, Amazon Lex sets the version to
-- 1. Subsequent versions increment by 1. For more information, see
-- versioning-intro.
--
-- This operation requires permissions for the @lex:CreateSlotTypeVersion@
-- action.
module Amazonka.LexModels.CreateSlotTypeVersion
  ( -- * Creating a Request
    CreateSlotTypeVersion (..),
    newCreateSlotTypeVersion,

    -- * Request Lenses
    createSlotTypeVersion_checksum,
    createSlotTypeVersion_name,

    -- * Destructuring the Response
    CreateSlotTypeVersionResponse (..),
    newCreateSlotTypeVersionResponse,

    -- * Response Lenses
    createSlotTypeVersionResponse_name,
    createSlotTypeVersionResponse_valueSelectionStrategy,
    createSlotTypeVersionResponse_lastUpdatedDate,
    createSlotTypeVersionResponse_description,
    createSlotTypeVersionResponse_checksum,
    createSlotTypeVersionResponse_createdDate,
    createSlotTypeVersionResponse_enumerationValues,
    createSlotTypeVersionResponse_slotTypeConfigurations,
    createSlotTypeVersionResponse_parentSlotTypeSignature,
    createSlotTypeVersionResponse_version,
    createSlotTypeVersionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexModels.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateSlotTypeVersion' smart constructor.
data CreateSlotTypeVersion = CreateSlotTypeVersion'
  { -- | Checksum for the @$LATEST@ version of the slot type that you want to
    -- publish. If you specify a checksum and the @$LATEST@ version of the slot
    -- type has a different checksum, Amazon Lex returns a
    -- @PreconditionFailedException@ exception and doesn\'t publish the new
    -- version. If you don\'t specify a checksum, Amazon Lex publishes the
    -- @$LATEST@ version.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | The name of the slot type that you want to create a new version for. The
    -- name is case sensitive.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSlotTypeVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'checksum', 'createSlotTypeVersion_checksum' - Checksum for the @$LATEST@ version of the slot type that you want to
-- publish. If you specify a checksum and the @$LATEST@ version of the slot
-- type has a different checksum, Amazon Lex returns a
-- @PreconditionFailedException@ exception and doesn\'t publish the new
-- version. If you don\'t specify a checksum, Amazon Lex publishes the
-- @$LATEST@ version.
--
-- 'name', 'createSlotTypeVersion_name' - The name of the slot type that you want to create a new version for. The
-- name is case sensitive.
newCreateSlotTypeVersion ::
  -- | 'name'
  Prelude.Text ->
  CreateSlotTypeVersion
newCreateSlotTypeVersion pName_ =
  CreateSlotTypeVersion'
    { checksum = Prelude.Nothing,
      name = pName_
    }

-- | Checksum for the @$LATEST@ version of the slot type that you want to
-- publish. If you specify a checksum and the @$LATEST@ version of the slot
-- type has a different checksum, Amazon Lex returns a
-- @PreconditionFailedException@ exception and doesn\'t publish the new
-- version. If you don\'t specify a checksum, Amazon Lex publishes the
-- @$LATEST@ version.
createSlotTypeVersion_checksum :: Lens.Lens' CreateSlotTypeVersion (Prelude.Maybe Prelude.Text)
createSlotTypeVersion_checksum = Lens.lens (\CreateSlotTypeVersion' {checksum} -> checksum) (\s@CreateSlotTypeVersion' {} a -> s {checksum = a} :: CreateSlotTypeVersion)

-- | The name of the slot type that you want to create a new version for. The
-- name is case sensitive.
createSlotTypeVersion_name :: Lens.Lens' CreateSlotTypeVersion Prelude.Text
createSlotTypeVersion_name = Lens.lens (\CreateSlotTypeVersion' {name} -> name) (\s@CreateSlotTypeVersion' {} a -> s {name = a} :: CreateSlotTypeVersion)

instance Core.AWSRequest CreateSlotTypeVersion where
  type
    AWSResponse CreateSlotTypeVersion =
      CreateSlotTypeVersionResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSlotTypeVersionResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "valueSelectionStrategy")
            Prelude.<*> (x Core..?> "lastUpdatedDate")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "checksum")
            Prelude.<*> (x Core..?> "createdDate")
            Prelude.<*> ( x Core..?> "enumerationValues"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "slotTypeConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "parentSlotTypeSignature")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSlotTypeVersion where
  hashWithSalt _salt CreateSlotTypeVersion' {..} =
    _salt `Prelude.hashWithSalt` checksum
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateSlotTypeVersion where
  rnf CreateSlotTypeVersion' {..} =
    Prelude.rnf checksum `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateSlotTypeVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateSlotTypeVersion where
  toJSON CreateSlotTypeVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [("checksum" Core..=) Prelude.<$> checksum]
      )

instance Core.ToPath CreateSlotTypeVersion where
  toPath CreateSlotTypeVersion' {..} =
    Prelude.mconcat
      ["/slottypes/", Core.toBS name, "/versions"]

instance Core.ToQuery CreateSlotTypeVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSlotTypeVersionResponse' smart constructor.
data CreateSlotTypeVersionResponse = CreateSlotTypeVersionResponse'
  { -- | The name of the slot type.
    name :: Prelude.Maybe Prelude.Text,
    -- | The strategy that Amazon Lex uses to determine the value of the slot.
    -- For more information, see PutSlotType.
    valueSelectionStrategy :: Prelude.Maybe SlotValueSelectionStrategy,
    -- | The date that the slot type was updated. When you create a resource, the
    -- creation date and last update date are the same.
    lastUpdatedDate :: Prelude.Maybe Core.POSIX,
    -- | A description of the slot type.
    description :: Prelude.Maybe Prelude.Text,
    -- | Checksum of the @$LATEST@ version of the slot type.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | The date that the slot type was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | A list of @EnumerationValue@ objects that defines the values that the
    -- slot type can take.
    enumerationValues :: Prelude.Maybe [EnumerationValue],
    -- | Configuration information that extends the parent built-in slot type.
    slotTypeConfigurations :: Prelude.Maybe [SlotTypeConfiguration],
    -- | The built-in slot type used a the parent of the slot type.
    parentSlotTypeSignature :: Prelude.Maybe Prelude.Text,
    -- | The version assigned to the new slot type version.
    version :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSlotTypeVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createSlotTypeVersionResponse_name' - The name of the slot type.
--
-- 'valueSelectionStrategy', 'createSlotTypeVersionResponse_valueSelectionStrategy' - The strategy that Amazon Lex uses to determine the value of the slot.
-- For more information, see PutSlotType.
--
-- 'lastUpdatedDate', 'createSlotTypeVersionResponse_lastUpdatedDate' - The date that the slot type was updated. When you create a resource, the
-- creation date and last update date are the same.
--
-- 'description', 'createSlotTypeVersionResponse_description' - A description of the slot type.
--
-- 'checksum', 'createSlotTypeVersionResponse_checksum' - Checksum of the @$LATEST@ version of the slot type.
--
-- 'createdDate', 'createSlotTypeVersionResponse_createdDate' - The date that the slot type was created.
--
-- 'enumerationValues', 'createSlotTypeVersionResponse_enumerationValues' - A list of @EnumerationValue@ objects that defines the values that the
-- slot type can take.
--
-- 'slotTypeConfigurations', 'createSlotTypeVersionResponse_slotTypeConfigurations' - Configuration information that extends the parent built-in slot type.
--
-- 'parentSlotTypeSignature', 'createSlotTypeVersionResponse_parentSlotTypeSignature' - The built-in slot type used a the parent of the slot type.
--
-- 'version', 'createSlotTypeVersionResponse_version' - The version assigned to the new slot type version.
--
-- 'httpStatus', 'createSlotTypeVersionResponse_httpStatus' - The response's http status code.
newCreateSlotTypeVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSlotTypeVersionResponse
newCreateSlotTypeVersionResponse pHttpStatus_ =
  CreateSlotTypeVersionResponse'
    { name =
        Prelude.Nothing,
      valueSelectionStrategy = Prelude.Nothing,
      lastUpdatedDate = Prelude.Nothing,
      description = Prelude.Nothing,
      checksum = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      enumerationValues = Prelude.Nothing,
      slotTypeConfigurations = Prelude.Nothing,
      parentSlotTypeSignature = Prelude.Nothing,
      version = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the slot type.
createSlotTypeVersionResponse_name :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe Prelude.Text)
createSlotTypeVersionResponse_name = Lens.lens (\CreateSlotTypeVersionResponse' {name} -> name) (\s@CreateSlotTypeVersionResponse' {} a -> s {name = a} :: CreateSlotTypeVersionResponse)

-- | The strategy that Amazon Lex uses to determine the value of the slot.
-- For more information, see PutSlotType.
createSlotTypeVersionResponse_valueSelectionStrategy :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe SlotValueSelectionStrategy)
createSlotTypeVersionResponse_valueSelectionStrategy = Lens.lens (\CreateSlotTypeVersionResponse' {valueSelectionStrategy} -> valueSelectionStrategy) (\s@CreateSlotTypeVersionResponse' {} a -> s {valueSelectionStrategy = a} :: CreateSlotTypeVersionResponse)

-- | The date that the slot type was updated. When you create a resource, the
-- creation date and last update date are the same.
createSlotTypeVersionResponse_lastUpdatedDate :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe Prelude.UTCTime)
createSlotTypeVersionResponse_lastUpdatedDate = Lens.lens (\CreateSlotTypeVersionResponse' {lastUpdatedDate} -> lastUpdatedDate) (\s@CreateSlotTypeVersionResponse' {} a -> s {lastUpdatedDate = a} :: CreateSlotTypeVersionResponse) Prelude.. Lens.mapping Core._Time

-- | A description of the slot type.
createSlotTypeVersionResponse_description :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe Prelude.Text)
createSlotTypeVersionResponse_description = Lens.lens (\CreateSlotTypeVersionResponse' {description} -> description) (\s@CreateSlotTypeVersionResponse' {} a -> s {description = a} :: CreateSlotTypeVersionResponse)

-- | Checksum of the @$LATEST@ version of the slot type.
createSlotTypeVersionResponse_checksum :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe Prelude.Text)
createSlotTypeVersionResponse_checksum = Lens.lens (\CreateSlotTypeVersionResponse' {checksum} -> checksum) (\s@CreateSlotTypeVersionResponse' {} a -> s {checksum = a} :: CreateSlotTypeVersionResponse)

-- | The date that the slot type was created.
createSlotTypeVersionResponse_createdDate :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe Prelude.UTCTime)
createSlotTypeVersionResponse_createdDate = Lens.lens (\CreateSlotTypeVersionResponse' {createdDate} -> createdDate) (\s@CreateSlotTypeVersionResponse' {} a -> s {createdDate = a} :: CreateSlotTypeVersionResponse) Prelude.. Lens.mapping Core._Time

-- | A list of @EnumerationValue@ objects that defines the values that the
-- slot type can take.
createSlotTypeVersionResponse_enumerationValues :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe [EnumerationValue])
createSlotTypeVersionResponse_enumerationValues = Lens.lens (\CreateSlotTypeVersionResponse' {enumerationValues} -> enumerationValues) (\s@CreateSlotTypeVersionResponse' {} a -> s {enumerationValues = a} :: CreateSlotTypeVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | Configuration information that extends the parent built-in slot type.
createSlotTypeVersionResponse_slotTypeConfigurations :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe [SlotTypeConfiguration])
createSlotTypeVersionResponse_slotTypeConfigurations = Lens.lens (\CreateSlotTypeVersionResponse' {slotTypeConfigurations} -> slotTypeConfigurations) (\s@CreateSlotTypeVersionResponse' {} a -> s {slotTypeConfigurations = a} :: CreateSlotTypeVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The built-in slot type used a the parent of the slot type.
createSlotTypeVersionResponse_parentSlotTypeSignature :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe Prelude.Text)
createSlotTypeVersionResponse_parentSlotTypeSignature = Lens.lens (\CreateSlotTypeVersionResponse' {parentSlotTypeSignature} -> parentSlotTypeSignature) (\s@CreateSlotTypeVersionResponse' {} a -> s {parentSlotTypeSignature = a} :: CreateSlotTypeVersionResponse)

-- | The version assigned to the new slot type version.
createSlotTypeVersionResponse_version :: Lens.Lens' CreateSlotTypeVersionResponse (Prelude.Maybe Prelude.Text)
createSlotTypeVersionResponse_version = Lens.lens (\CreateSlotTypeVersionResponse' {version} -> version) (\s@CreateSlotTypeVersionResponse' {} a -> s {version = a} :: CreateSlotTypeVersionResponse)

-- | The response's http status code.
createSlotTypeVersionResponse_httpStatus :: Lens.Lens' CreateSlotTypeVersionResponse Prelude.Int
createSlotTypeVersionResponse_httpStatus = Lens.lens (\CreateSlotTypeVersionResponse' {httpStatus} -> httpStatus) (\s@CreateSlotTypeVersionResponse' {} a -> s {httpStatus = a} :: CreateSlotTypeVersionResponse)

instance Prelude.NFData CreateSlotTypeVersionResponse where
  rnf CreateSlotTypeVersionResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf valueSelectionStrategy
      `Prelude.seq` Prelude.rnf lastUpdatedDate
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf checksum
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf enumerationValues
      `Prelude.seq` Prelude.rnf slotTypeConfigurations
      `Prelude.seq` Prelude.rnf parentSlotTypeSignature
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf httpStatus
