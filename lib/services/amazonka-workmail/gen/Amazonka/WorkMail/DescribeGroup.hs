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
-- Module      : Amazonka.WorkMail.DescribeGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the data available for the group.
module Amazonka.WorkMail.DescribeGroup
  ( -- * Creating a Request
    DescribeGroup (..),
    newDescribeGroup,

    -- * Request Lenses
    describeGroup_organizationId,
    describeGroup_groupId,

    -- * Destructuring the Response
    DescribeGroupResponse (..),
    newDescribeGroupResponse,

    -- * Response Lenses
    describeGroupResponse_name,
    describeGroupResponse_email,
    describeGroupResponse_state,
    describeGroupResponse_groupId,
    describeGroupResponse_enabledDate,
    describeGroupResponse_disabledDate,
    describeGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkMail.Types

-- | /See:/ 'newDescribeGroup' smart constructor.
data DescribeGroup = DescribeGroup'
  { -- | The identifier for the organization under which the group exists.
    organizationId :: Prelude.Text,
    -- | The identifier for the group to be described.
    groupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationId', 'describeGroup_organizationId' - The identifier for the organization under which the group exists.
--
-- 'groupId', 'describeGroup_groupId' - The identifier for the group to be described.
newDescribeGroup ::
  -- | 'organizationId'
  Prelude.Text ->
  -- | 'groupId'
  Prelude.Text ->
  DescribeGroup
newDescribeGroup pOrganizationId_ pGroupId_ =
  DescribeGroup'
    { organizationId = pOrganizationId_,
      groupId = pGroupId_
    }

-- | The identifier for the organization under which the group exists.
describeGroup_organizationId :: Lens.Lens' DescribeGroup Prelude.Text
describeGroup_organizationId = Lens.lens (\DescribeGroup' {organizationId} -> organizationId) (\s@DescribeGroup' {} a -> s {organizationId = a} :: DescribeGroup)

-- | The identifier for the group to be described.
describeGroup_groupId :: Lens.Lens' DescribeGroup Prelude.Text
describeGroup_groupId = Lens.lens (\DescribeGroup' {groupId} -> groupId) (\s@DescribeGroup' {} a -> s {groupId = a} :: DescribeGroup)

instance Core.AWSRequest DescribeGroup where
  type
    AWSResponse DescribeGroup =
      DescribeGroupResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeGroupResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "Email")
            Prelude.<*> (x Core..?> "State")
            Prelude.<*> (x Core..?> "GroupId")
            Prelude.<*> (x Core..?> "EnabledDate")
            Prelude.<*> (x Core..?> "DisabledDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeGroup where
  hashWithSalt _salt DescribeGroup' {..} =
    _salt `Prelude.hashWithSalt` organizationId
      `Prelude.hashWithSalt` groupId

instance Prelude.NFData DescribeGroup where
  rnf DescribeGroup' {..} =
    Prelude.rnf organizationId
      `Prelude.seq` Prelude.rnf groupId

instance Core.ToHeaders DescribeGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.DescribeGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeGroup where
  toJSON DescribeGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("OrganizationId" Core..= organizationId),
            Prelude.Just ("GroupId" Core..= groupId)
          ]
      )

instance Core.ToPath DescribeGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeGroupResponse' smart constructor.
data DescribeGroupResponse = DescribeGroupResponse'
  { -- | The name of the described group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The email of the described group.
    email :: Prelude.Maybe Prelude.Text,
    -- | The state of the user: enabled (registered to WorkMail) or disabled
    -- (deregistered or never registered to WorkMail).
    state :: Prelude.Maybe EntityState,
    -- | The identifier of the described group.
    groupId :: Prelude.Maybe Prelude.Text,
    -- | The date and time when a user was registered to WorkMail, in UNIX epoch
    -- time format.
    enabledDate :: Prelude.Maybe Core.POSIX,
    -- | The date and time when a user was deregistered from WorkMail, in UNIX
    -- epoch time format.
    disabledDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'describeGroupResponse_name' - The name of the described group.
--
-- 'email', 'describeGroupResponse_email' - The email of the described group.
--
-- 'state', 'describeGroupResponse_state' - The state of the user: enabled (registered to WorkMail) or disabled
-- (deregistered or never registered to WorkMail).
--
-- 'groupId', 'describeGroupResponse_groupId' - The identifier of the described group.
--
-- 'enabledDate', 'describeGroupResponse_enabledDate' - The date and time when a user was registered to WorkMail, in UNIX epoch
-- time format.
--
-- 'disabledDate', 'describeGroupResponse_disabledDate' - The date and time when a user was deregistered from WorkMail, in UNIX
-- epoch time format.
--
-- 'httpStatus', 'describeGroupResponse_httpStatus' - The response's http status code.
newDescribeGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeGroupResponse
newDescribeGroupResponse pHttpStatus_ =
  DescribeGroupResponse'
    { name = Prelude.Nothing,
      email = Prelude.Nothing,
      state = Prelude.Nothing,
      groupId = Prelude.Nothing,
      enabledDate = Prelude.Nothing,
      disabledDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the described group.
describeGroupResponse_name :: Lens.Lens' DescribeGroupResponse (Prelude.Maybe Prelude.Text)
describeGroupResponse_name = Lens.lens (\DescribeGroupResponse' {name} -> name) (\s@DescribeGroupResponse' {} a -> s {name = a} :: DescribeGroupResponse)

-- | The email of the described group.
describeGroupResponse_email :: Lens.Lens' DescribeGroupResponse (Prelude.Maybe Prelude.Text)
describeGroupResponse_email = Lens.lens (\DescribeGroupResponse' {email} -> email) (\s@DescribeGroupResponse' {} a -> s {email = a} :: DescribeGroupResponse)

-- | The state of the user: enabled (registered to WorkMail) or disabled
-- (deregistered or never registered to WorkMail).
describeGroupResponse_state :: Lens.Lens' DescribeGroupResponse (Prelude.Maybe EntityState)
describeGroupResponse_state = Lens.lens (\DescribeGroupResponse' {state} -> state) (\s@DescribeGroupResponse' {} a -> s {state = a} :: DescribeGroupResponse)

-- | The identifier of the described group.
describeGroupResponse_groupId :: Lens.Lens' DescribeGroupResponse (Prelude.Maybe Prelude.Text)
describeGroupResponse_groupId = Lens.lens (\DescribeGroupResponse' {groupId} -> groupId) (\s@DescribeGroupResponse' {} a -> s {groupId = a} :: DescribeGroupResponse)

-- | The date and time when a user was registered to WorkMail, in UNIX epoch
-- time format.
describeGroupResponse_enabledDate :: Lens.Lens' DescribeGroupResponse (Prelude.Maybe Prelude.UTCTime)
describeGroupResponse_enabledDate = Lens.lens (\DescribeGroupResponse' {enabledDate} -> enabledDate) (\s@DescribeGroupResponse' {} a -> s {enabledDate = a} :: DescribeGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The date and time when a user was deregistered from WorkMail, in UNIX
-- epoch time format.
describeGroupResponse_disabledDate :: Lens.Lens' DescribeGroupResponse (Prelude.Maybe Prelude.UTCTime)
describeGroupResponse_disabledDate = Lens.lens (\DescribeGroupResponse' {disabledDate} -> disabledDate) (\s@DescribeGroupResponse' {} a -> s {disabledDate = a} :: DescribeGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeGroupResponse_httpStatus :: Lens.Lens' DescribeGroupResponse Prelude.Int
describeGroupResponse_httpStatus = Lens.lens (\DescribeGroupResponse' {httpStatus} -> httpStatus) (\s@DescribeGroupResponse' {} a -> s {httpStatus = a} :: DescribeGroupResponse)

instance Prelude.NFData DescribeGroupResponse where
  rnf DescribeGroupResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf email
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf groupId
      `Prelude.seq` Prelude.rnf enabledDate
      `Prelude.seq` Prelude.rnf disabledDate
      `Prelude.seq` Prelude.rnf httpStatus
