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
-- Module      : Amazonka.QuickSight.CreateIAMPolicyAssignment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an assignment with one specified IAM policy, identified by its
-- Amazon Resource Name (ARN). This policy assignment is attached to the
-- specified groups or users of Amazon QuickSight. Assignment names are
-- unique per Amazon Web Services account. To avoid overwriting rules in
-- other namespaces, use assignment names that are unique.
module Amazonka.QuickSight.CreateIAMPolicyAssignment
  ( -- * Creating a Request
    CreateIAMPolicyAssignment (..),
    newCreateIAMPolicyAssignment,

    -- * Request Lenses
    createIAMPolicyAssignment_identities,
    createIAMPolicyAssignment_policyArn,
    createIAMPolicyAssignment_awsAccountId,
    createIAMPolicyAssignment_assignmentName,
    createIAMPolicyAssignment_assignmentStatus,
    createIAMPolicyAssignment_namespace,

    -- * Destructuring the Response
    CreateIAMPolicyAssignmentResponse (..),
    newCreateIAMPolicyAssignmentResponse,

    -- * Response Lenses
    createIAMPolicyAssignmentResponse_requestId,
    createIAMPolicyAssignmentResponse_identities,
    createIAMPolicyAssignmentResponse_policyArn,
    createIAMPolicyAssignmentResponse_assignmentName,
    createIAMPolicyAssignmentResponse_assignmentId,
    createIAMPolicyAssignmentResponse_assignmentStatus,
    createIAMPolicyAssignmentResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateIAMPolicyAssignment' smart constructor.
data CreateIAMPolicyAssignment = CreateIAMPolicyAssignment'
  { -- | The Amazon QuickSight users, groups, or both that you want to assign the
    -- policy to.
    identities :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | The ARN for the IAM policy to apply to the Amazon QuickSight users and
    -- groups specified in this assignment.
    policyArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Web Services account where you want to assign an
    -- IAM policy to Amazon QuickSight users or groups.
    awsAccountId :: Prelude.Text,
    -- | The name of the assignment, also called a rule. It must be unique within
    -- an Amazon Web Services account.
    assignmentName :: Prelude.Text,
    -- | The status of the assignment. Possible values are as follows:
    --
    -- -   @ENABLED@ - Anything specified in this assignment is used when
    --     creating the data source.
    --
    -- -   @DISABLED@ - This assignment isn\'t used when creating the data
    --     source.
    --
    -- -   @DRAFT@ - This assignment is an unfinished draft and isn\'t used
    --     when creating the data source.
    assignmentStatus :: AssignmentStatus,
    -- | The namespace that contains the assignment.
    namespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateIAMPolicyAssignment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identities', 'createIAMPolicyAssignment_identities' - The Amazon QuickSight users, groups, or both that you want to assign the
-- policy to.
--
-- 'policyArn', 'createIAMPolicyAssignment_policyArn' - The ARN for the IAM policy to apply to the Amazon QuickSight users and
-- groups specified in this assignment.
--
-- 'awsAccountId', 'createIAMPolicyAssignment_awsAccountId' - The ID of the Amazon Web Services account where you want to assign an
-- IAM policy to Amazon QuickSight users or groups.
--
-- 'assignmentName', 'createIAMPolicyAssignment_assignmentName' - The name of the assignment, also called a rule. It must be unique within
-- an Amazon Web Services account.
--
-- 'assignmentStatus', 'createIAMPolicyAssignment_assignmentStatus' - The status of the assignment. Possible values are as follows:
--
-- -   @ENABLED@ - Anything specified in this assignment is used when
--     creating the data source.
--
-- -   @DISABLED@ - This assignment isn\'t used when creating the data
--     source.
--
-- -   @DRAFT@ - This assignment is an unfinished draft and isn\'t used
--     when creating the data source.
--
-- 'namespace', 'createIAMPolicyAssignment_namespace' - The namespace that contains the assignment.
newCreateIAMPolicyAssignment ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'assignmentName'
  Prelude.Text ->
  -- | 'assignmentStatus'
  AssignmentStatus ->
  -- | 'namespace'
  Prelude.Text ->
  CreateIAMPolicyAssignment
newCreateIAMPolicyAssignment
  pAwsAccountId_
  pAssignmentName_
  pAssignmentStatus_
  pNamespace_ =
    CreateIAMPolicyAssignment'
      { identities =
          Prelude.Nothing,
        policyArn = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        assignmentName = pAssignmentName_,
        assignmentStatus = pAssignmentStatus_,
        namespace = pNamespace_
      }

-- | The Amazon QuickSight users, groups, or both that you want to assign the
-- policy to.
createIAMPolicyAssignment_identities :: Lens.Lens' CreateIAMPolicyAssignment (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
createIAMPolicyAssignment_identities = Lens.lens (\CreateIAMPolicyAssignment' {identities} -> identities) (\s@CreateIAMPolicyAssignment' {} a -> s {identities = a} :: CreateIAMPolicyAssignment) Prelude.. Lens.mapping Lens.coerced

-- | The ARN for the IAM policy to apply to the Amazon QuickSight users and
-- groups specified in this assignment.
createIAMPolicyAssignment_policyArn :: Lens.Lens' CreateIAMPolicyAssignment (Prelude.Maybe Prelude.Text)
createIAMPolicyAssignment_policyArn = Lens.lens (\CreateIAMPolicyAssignment' {policyArn} -> policyArn) (\s@CreateIAMPolicyAssignment' {} a -> s {policyArn = a} :: CreateIAMPolicyAssignment)

-- | The ID of the Amazon Web Services account where you want to assign an
-- IAM policy to Amazon QuickSight users or groups.
createIAMPolicyAssignment_awsAccountId :: Lens.Lens' CreateIAMPolicyAssignment Prelude.Text
createIAMPolicyAssignment_awsAccountId = Lens.lens (\CreateIAMPolicyAssignment' {awsAccountId} -> awsAccountId) (\s@CreateIAMPolicyAssignment' {} a -> s {awsAccountId = a} :: CreateIAMPolicyAssignment)

-- | The name of the assignment, also called a rule. It must be unique within
-- an Amazon Web Services account.
createIAMPolicyAssignment_assignmentName :: Lens.Lens' CreateIAMPolicyAssignment Prelude.Text
createIAMPolicyAssignment_assignmentName = Lens.lens (\CreateIAMPolicyAssignment' {assignmentName} -> assignmentName) (\s@CreateIAMPolicyAssignment' {} a -> s {assignmentName = a} :: CreateIAMPolicyAssignment)

-- | The status of the assignment. Possible values are as follows:
--
-- -   @ENABLED@ - Anything specified in this assignment is used when
--     creating the data source.
--
-- -   @DISABLED@ - This assignment isn\'t used when creating the data
--     source.
--
-- -   @DRAFT@ - This assignment is an unfinished draft and isn\'t used
--     when creating the data source.
createIAMPolicyAssignment_assignmentStatus :: Lens.Lens' CreateIAMPolicyAssignment AssignmentStatus
createIAMPolicyAssignment_assignmentStatus = Lens.lens (\CreateIAMPolicyAssignment' {assignmentStatus} -> assignmentStatus) (\s@CreateIAMPolicyAssignment' {} a -> s {assignmentStatus = a} :: CreateIAMPolicyAssignment)

-- | The namespace that contains the assignment.
createIAMPolicyAssignment_namespace :: Lens.Lens' CreateIAMPolicyAssignment Prelude.Text
createIAMPolicyAssignment_namespace = Lens.lens (\CreateIAMPolicyAssignment' {namespace} -> namespace) (\s@CreateIAMPolicyAssignment' {} a -> s {namespace = a} :: CreateIAMPolicyAssignment)

instance Core.AWSRequest CreateIAMPolicyAssignment where
  type
    AWSResponse CreateIAMPolicyAssignment =
      CreateIAMPolicyAssignmentResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateIAMPolicyAssignmentResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Identities" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "PolicyArn")
            Prelude.<*> (x Core..?> "AssignmentName")
            Prelude.<*> (x Core..?> "AssignmentId")
            Prelude.<*> (x Core..?> "AssignmentStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService CreateIAMPolicyAssignment where
  service _proxy = defaultService

instance Prelude.Hashable CreateIAMPolicyAssignment where
  hashWithSalt _salt CreateIAMPolicyAssignment' {..} =
    _salt `Prelude.hashWithSalt` identities
      `Prelude.hashWithSalt` policyArn
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` assignmentName
      `Prelude.hashWithSalt` assignmentStatus
      `Prelude.hashWithSalt` namespace

instance Prelude.NFData CreateIAMPolicyAssignment where
  rnf CreateIAMPolicyAssignment' {..} =
    Prelude.rnf identities
      `Prelude.seq` Prelude.rnf policyArn
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf assignmentName
      `Prelude.seq` Prelude.rnf assignmentStatus
      `Prelude.seq` Prelude.rnf namespace

instance Core.ToHeaders CreateIAMPolicyAssignment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateIAMPolicyAssignment where
  toJSON CreateIAMPolicyAssignment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Identities" Core..=) Prelude.<$> identities,
            ("PolicyArn" Core..=) Prelude.<$> policyArn,
            Prelude.Just
              ("AssignmentName" Core..= assignmentName),
            Prelude.Just
              ("AssignmentStatus" Core..= assignmentStatus)
          ]
      )

instance Core.ToPath CreateIAMPolicyAssignment where
  toPath CreateIAMPolicyAssignment' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/namespaces/",
        Core.toBS namespace,
        "/iam-policy-assignments/"
      ]

instance Core.ToQuery CreateIAMPolicyAssignment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateIAMPolicyAssignmentResponse' smart constructor.
data CreateIAMPolicyAssignmentResponse = CreateIAMPolicyAssignmentResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon QuickSight users, groups, or both that the IAM policy is
    -- assigned to.
    identities :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | The ARN for the IAM policy that is applied to the Amazon QuickSight
    -- users and groups specified in this assignment.
    policyArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the assignment. This name must be unique within the Amazon
    -- Web Services account.
    assignmentName :: Prelude.Maybe Prelude.Text,
    -- | The ID for the assignment.
    assignmentId :: Prelude.Maybe Prelude.Text,
    -- | The status of the assignment. Possible values are as follows:
    --
    -- -   @ENABLED@ - Anything specified in this assignment is used when
    --     creating the data source.
    --
    -- -   @DISABLED@ - This assignment isn\'t used when creating the data
    --     source.
    --
    -- -   @DRAFT@ - This assignment is an unfinished draft and isn\'t used
    --     when creating the data source.
    assignmentStatus :: Prelude.Maybe AssignmentStatus,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateIAMPolicyAssignmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'createIAMPolicyAssignmentResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'identities', 'createIAMPolicyAssignmentResponse_identities' - The Amazon QuickSight users, groups, or both that the IAM policy is
-- assigned to.
--
-- 'policyArn', 'createIAMPolicyAssignmentResponse_policyArn' - The ARN for the IAM policy that is applied to the Amazon QuickSight
-- users and groups specified in this assignment.
--
-- 'assignmentName', 'createIAMPolicyAssignmentResponse_assignmentName' - The name of the assignment. This name must be unique within the Amazon
-- Web Services account.
--
-- 'assignmentId', 'createIAMPolicyAssignmentResponse_assignmentId' - The ID for the assignment.
--
-- 'assignmentStatus', 'createIAMPolicyAssignmentResponse_assignmentStatus' - The status of the assignment. Possible values are as follows:
--
-- -   @ENABLED@ - Anything specified in this assignment is used when
--     creating the data source.
--
-- -   @DISABLED@ - This assignment isn\'t used when creating the data
--     source.
--
-- -   @DRAFT@ - This assignment is an unfinished draft and isn\'t used
--     when creating the data source.
--
-- 'status', 'createIAMPolicyAssignmentResponse_status' - The HTTP status of the request.
newCreateIAMPolicyAssignmentResponse ::
  -- | 'status'
  Prelude.Int ->
  CreateIAMPolicyAssignmentResponse
newCreateIAMPolicyAssignmentResponse pStatus_ =
  CreateIAMPolicyAssignmentResponse'
    { requestId =
        Prelude.Nothing,
      identities = Prelude.Nothing,
      policyArn = Prelude.Nothing,
      assignmentName = Prelude.Nothing,
      assignmentId = Prelude.Nothing,
      assignmentStatus = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
createIAMPolicyAssignmentResponse_requestId :: Lens.Lens' CreateIAMPolicyAssignmentResponse (Prelude.Maybe Prelude.Text)
createIAMPolicyAssignmentResponse_requestId = Lens.lens (\CreateIAMPolicyAssignmentResponse' {requestId} -> requestId) (\s@CreateIAMPolicyAssignmentResponse' {} a -> s {requestId = a} :: CreateIAMPolicyAssignmentResponse)

-- | The Amazon QuickSight users, groups, or both that the IAM policy is
-- assigned to.
createIAMPolicyAssignmentResponse_identities :: Lens.Lens' CreateIAMPolicyAssignmentResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
createIAMPolicyAssignmentResponse_identities = Lens.lens (\CreateIAMPolicyAssignmentResponse' {identities} -> identities) (\s@CreateIAMPolicyAssignmentResponse' {} a -> s {identities = a} :: CreateIAMPolicyAssignmentResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN for the IAM policy that is applied to the Amazon QuickSight
-- users and groups specified in this assignment.
createIAMPolicyAssignmentResponse_policyArn :: Lens.Lens' CreateIAMPolicyAssignmentResponse (Prelude.Maybe Prelude.Text)
createIAMPolicyAssignmentResponse_policyArn = Lens.lens (\CreateIAMPolicyAssignmentResponse' {policyArn} -> policyArn) (\s@CreateIAMPolicyAssignmentResponse' {} a -> s {policyArn = a} :: CreateIAMPolicyAssignmentResponse)

-- | The name of the assignment. This name must be unique within the Amazon
-- Web Services account.
createIAMPolicyAssignmentResponse_assignmentName :: Lens.Lens' CreateIAMPolicyAssignmentResponse (Prelude.Maybe Prelude.Text)
createIAMPolicyAssignmentResponse_assignmentName = Lens.lens (\CreateIAMPolicyAssignmentResponse' {assignmentName} -> assignmentName) (\s@CreateIAMPolicyAssignmentResponse' {} a -> s {assignmentName = a} :: CreateIAMPolicyAssignmentResponse)

-- | The ID for the assignment.
createIAMPolicyAssignmentResponse_assignmentId :: Lens.Lens' CreateIAMPolicyAssignmentResponse (Prelude.Maybe Prelude.Text)
createIAMPolicyAssignmentResponse_assignmentId = Lens.lens (\CreateIAMPolicyAssignmentResponse' {assignmentId} -> assignmentId) (\s@CreateIAMPolicyAssignmentResponse' {} a -> s {assignmentId = a} :: CreateIAMPolicyAssignmentResponse)

-- | The status of the assignment. Possible values are as follows:
--
-- -   @ENABLED@ - Anything specified in this assignment is used when
--     creating the data source.
--
-- -   @DISABLED@ - This assignment isn\'t used when creating the data
--     source.
--
-- -   @DRAFT@ - This assignment is an unfinished draft and isn\'t used
--     when creating the data source.
createIAMPolicyAssignmentResponse_assignmentStatus :: Lens.Lens' CreateIAMPolicyAssignmentResponse (Prelude.Maybe AssignmentStatus)
createIAMPolicyAssignmentResponse_assignmentStatus = Lens.lens (\CreateIAMPolicyAssignmentResponse' {assignmentStatus} -> assignmentStatus) (\s@CreateIAMPolicyAssignmentResponse' {} a -> s {assignmentStatus = a} :: CreateIAMPolicyAssignmentResponse)

-- | The HTTP status of the request.
createIAMPolicyAssignmentResponse_status :: Lens.Lens' CreateIAMPolicyAssignmentResponse Prelude.Int
createIAMPolicyAssignmentResponse_status = Lens.lens (\CreateIAMPolicyAssignmentResponse' {status} -> status) (\s@CreateIAMPolicyAssignmentResponse' {} a -> s {status = a} :: CreateIAMPolicyAssignmentResponse)

instance
  Prelude.NFData
    CreateIAMPolicyAssignmentResponse
  where
  rnf CreateIAMPolicyAssignmentResponse' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf identities
      `Prelude.seq` Prelude.rnf policyArn
      `Prelude.seq` Prelude.rnf assignmentName
      `Prelude.seq` Prelude.rnf assignmentId
      `Prelude.seq` Prelude.rnf assignmentStatus
      `Prelude.seq` Prelude.rnf status
