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
-- Module      : Amazonka.ConnectCases.CreateCase
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a case in the specified Cases domain. Case system and custom
-- fields are taken as an array id\/value pairs with a declared data types.
--
-- @customer_id@ is a required field when creating a case.
module Amazonka.ConnectCases.CreateCase
  ( -- * Creating a Request
    CreateCase (..),
    newCreateCase,

    -- * Request Lenses
    createCase_clientToken,
    createCase_domainId,
    createCase_fields,
    createCase_templateId,

    -- * Destructuring the Response
    CreateCaseResponse (..),
    newCreateCaseResponse,

    -- * Response Lenses
    createCaseResponse_httpStatus,
    createCaseResponse_caseArn,
    createCaseResponse_caseId,
  )
where

import Amazonka.ConnectCases.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateCase' smart constructor.
data CreateCase = CreateCase'
  { -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the Cases domain.
    domainId :: Prelude.Text,
    -- | An array of objects with field ID (matching ListFields\/DescribeField)
    -- and value union data.
    fields :: [FieldValue],
    -- | A unique identifier of a template.
    templateId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createCase_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'domainId', 'createCase_domainId' - The unique identifier of the Cases domain.
--
-- 'fields', 'createCase_fields' - An array of objects with field ID (matching ListFields\/DescribeField)
-- and value union data.
--
-- 'templateId', 'createCase_templateId' - A unique identifier of a template.
newCreateCase ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'templateId'
  Prelude.Text ->
  CreateCase
newCreateCase pDomainId_ pTemplateId_ =
  CreateCase'
    { clientToken = Prelude.Nothing,
      domainId = pDomainId_,
      fields = Prelude.mempty,
      templateId = pTemplateId_
    }

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createCase_clientToken :: Lens.Lens' CreateCase (Prelude.Maybe Prelude.Text)
createCase_clientToken = Lens.lens (\CreateCase' {clientToken} -> clientToken) (\s@CreateCase' {} a -> s {clientToken = a} :: CreateCase)

-- | The unique identifier of the Cases domain.
createCase_domainId :: Lens.Lens' CreateCase Prelude.Text
createCase_domainId = Lens.lens (\CreateCase' {domainId} -> domainId) (\s@CreateCase' {} a -> s {domainId = a} :: CreateCase)

-- | An array of objects with field ID (matching ListFields\/DescribeField)
-- and value union data.
createCase_fields :: Lens.Lens' CreateCase [FieldValue]
createCase_fields = Lens.lens (\CreateCase' {fields} -> fields) (\s@CreateCase' {} a -> s {fields = a} :: CreateCase) Prelude.. Lens.coerced

-- | A unique identifier of a template.
createCase_templateId :: Lens.Lens' CreateCase Prelude.Text
createCase_templateId = Lens.lens (\CreateCase' {templateId} -> templateId) (\s@CreateCase' {} a -> s {templateId = a} :: CreateCase)

instance Core.AWSRequest CreateCase where
  type AWSResponse CreateCase = CreateCaseResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCaseResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "caseArn")
            Prelude.<*> (x Core..:> "caseId")
      )

instance Prelude.Hashable CreateCase where
  hashWithSalt _salt CreateCase' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` domainId
      `Prelude.hashWithSalt` fields
      `Prelude.hashWithSalt` templateId

instance Prelude.NFData CreateCase where
  rnf CreateCase' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf fields
      `Prelude.seq` Prelude.rnf templateId

instance Core.ToHeaders CreateCase where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCase where
  toJSON CreateCase' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("fields" Core..= fields),
            Prelude.Just ("templateId" Core..= templateId)
          ]
      )

instance Core.ToPath CreateCase where
  toPath CreateCase' {..} =
    Prelude.mconcat
      ["/domains/", Core.toBS domainId, "/cases"]

instance Core.ToQuery CreateCase where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateCaseResponse' smart constructor.
data CreateCaseResponse = CreateCaseResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the case.
    caseArn :: Prelude.Text,
    -- | A unique identifier of the case.
    caseId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCaseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createCaseResponse_httpStatus' - The response's http status code.
--
-- 'caseArn', 'createCaseResponse_caseArn' - The Amazon Resource Name (ARN) of the case.
--
-- 'caseId', 'createCaseResponse_caseId' - A unique identifier of the case.
newCreateCaseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'caseArn'
  Prelude.Text ->
  -- | 'caseId'
  Prelude.Text ->
  CreateCaseResponse
newCreateCaseResponse pHttpStatus_ pCaseArn_ pCaseId_ =
  CreateCaseResponse'
    { httpStatus = pHttpStatus_,
      caseArn = pCaseArn_,
      caseId = pCaseId_
    }

-- | The response's http status code.
createCaseResponse_httpStatus :: Lens.Lens' CreateCaseResponse Prelude.Int
createCaseResponse_httpStatus = Lens.lens (\CreateCaseResponse' {httpStatus} -> httpStatus) (\s@CreateCaseResponse' {} a -> s {httpStatus = a} :: CreateCaseResponse)

-- | The Amazon Resource Name (ARN) of the case.
createCaseResponse_caseArn :: Lens.Lens' CreateCaseResponse Prelude.Text
createCaseResponse_caseArn = Lens.lens (\CreateCaseResponse' {caseArn} -> caseArn) (\s@CreateCaseResponse' {} a -> s {caseArn = a} :: CreateCaseResponse)

-- | A unique identifier of the case.
createCaseResponse_caseId :: Lens.Lens' CreateCaseResponse Prelude.Text
createCaseResponse_caseId = Lens.lens (\CreateCaseResponse' {caseId} -> caseId) (\s@CreateCaseResponse' {} a -> s {caseId = a} :: CreateCaseResponse)

instance Prelude.NFData CreateCaseResponse where
  rnf CreateCaseResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf caseArn
      `Prelude.seq` Prelude.rnf caseId
