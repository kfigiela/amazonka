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
-- Module      : Amazonka.IoTWireless.GetMulticastGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a multicast group.
module Amazonka.IoTWireless.GetMulticastGroup
  ( -- * Creating a Request
    GetMulticastGroup (..),
    newGetMulticastGroup,

    -- * Request Lenses
    getMulticastGroup_id,

    -- * Destructuring the Response
    GetMulticastGroupResponse (..),
    newGetMulticastGroupResponse,

    -- * Response Lenses
    getMulticastGroupResponse_name,
    getMulticastGroupResponse_loRaWAN,
    getMulticastGroupResponse_arn,
    getMulticastGroupResponse_status,
    getMulticastGroupResponse_id,
    getMulticastGroupResponse_description,
    getMulticastGroupResponse_createdAt,
    getMulticastGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetMulticastGroup' smart constructor.
data GetMulticastGroup = GetMulticastGroup'
  { id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMulticastGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'getMulticastGroup_id' - Undocumented member.
newGetMulticastGroup ::
  -- | 'id'
  Prelude.Text ->
  GetMulticastGroup
newGetMulticastGroup pId_ =
  GetMulticastGroup' {id = pId_}

-- | Undocumented member.
getMulticastGroup_id :: Lens.Lens' GetMulticastGroup Prelude.Text
getMulticastGroup_id = Lens.lens (\GetMulticastGroup' {id} -> id) (\s@GetMulticastGroup' {} a -> s {id = a} :: GetMulticastGroup)

instance Core.AWSRequest GetMulticastGroup where
  type
    AWSResponse GetMulticastGroup =
      GetMulticastGroupResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMulticastGroupResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "LoRaWAN")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "CreatedAt")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMulticastGroup where
  hashWithSalt _salt GetMulticastGroup' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData GetMulticastGroup where
  rnf GetMulticastGroup' {..} = Prelude.rnf id

instance Core.ToHeaders GetMulticastGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetMulticastGroup where
  toPath GetMulticastGroup' {..} =
    Prelude.mconcat
      ["/multicast-groups/", Core.toBS id]

instance Core.ToQuery GetMulticastGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMulticastGroupResponse' smart constructor.
data GetMulticastGroupResponse = GetMulticastGroupResponse'
  { name :: Prelude.Maybe Prelude.Text,
    loRaWAN :: Prelude.Maybe LoRaWANMulticastGet,
    arn :: Prelude.Maybe Prelude.Text,
    status :: Prelude.Maybe Prelude.Text,
    id :: Prelude.Maybe Prelude.Text,
    description :: Prelude.Maybe Prelude.Text,
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMulticastGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getMulticastGroupResponse_name' - Undocumented member.
--
-- 'loRaWAN', 'getMulticastGroupResponse_loRaWAN' - Undocumented member.
--
-- 'arn', 'getMulticastGroupResponse_arn' - Undocumented member.
--
-- 'status', 'getMulticastGroupResponse_status' - Undocumented member.
--
-- 'id', 'getMulticastGroupResponse_id' - Undocumented member.
--
-- 'description', 'getMulticastGroupResponse_description' - Undocumented member.
--
-- 'createdAt', 'getMulticastGroupResponse_createdAt' - Undocumented member.
--
-- 'httpStatus', 'getMulticastGroupResponse_httpStatus' - The response's http status code.
newGetMulticastGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMulticastGroupResponse
newGetMulticastGroupResponse pHttpStatus_ =
  GetMulticastGroupResponse'
    { name = Prelude.Nothing,
      loRaWAN = Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      id = Prelude.Nothing,
      description = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
getMulticastGroupResponse_name :: Lens.Lens' GetMulticastGroupResponse (Prelude.Maybe Prelude.Text)
getMulticastGroupResponse_name = Lens.lens (\GetMulticastGroupResponse' {name} -> name) (\s@GetMulticastGroupResponse' {} a -> s {name = a} :: GetMulticastGroupResponse)

-- | Undocumented member.
getMulticastGroupResponse_loRaWAN :: Lens.Lens' GetMulticastGroupResponse (Prelude.Maybe LoRaWANMulticastGet)
getMulticastGroupResponse_loRaWAN = Lens.lens (\GetMulticastGroupResponse' {loRaWAN} -> loRaWAN) (\s@GetMulticastGroupResponse' {} a -> s {loRaWAN = a} :: GetMulticastGroupResponse)

-- | Undocumented member.
getMulticastGroupResponse_arn :: Lens.Lens' GetMulticastGroupResponse (Prelude.Maybe Prelude.Text)
getMulticastGroupResponse_arn = Lens.lens (\GetMulticastGroupResponse' {arn} -> arn) (\s@GetMulticastGroupResponse' {} a -> s {arn = a} :: GetMulticastGroupResponse)

-- | Undocumented member.
getMulticastGroupResponse_status :: Lens.Lens' GetMulticastGroupResponse (Prelude.Maybe Prelude.Text)
getMulticastGroupResponse_status = Lens.lens (\GetMulticastGroupResponse' {status} -> status) (\s@GetMulticastGroupResponse' {} a -> s {status = a} :: GetMulticastGroupResponse)

-- | Undocumented member.
getMulticastGroupResponse_id :: Lens.Lens' GetMulticastGroupResponse (Prelude.Maybe Prelude.Text)
getMulticastGroupResponse_id = Lens.lens (\GetMulticastGroupResponse' {id} -> id) (\s@GetMulticastGroupResponse' {} a -> s {id = a} :: GetMulticastGroupResponse)

-- | Undocumented member.
getMulticastGroupResponse_description :: Lens.Lens' GetMulticastGroupResponse (Prelude.Maybe Prelude.Text)
getMulticastGroupResponse_description = Lens.lens (\GetMulticastGroupResponse' {description} -> description) (\s@GetMulticastGroupResponse' {} a -> s {description = a} :: GetMulticastGroupResponse)

-- | Undocumented member.
getMulticastGroupResponse_createdAt :: Lens.Lens' GetMulticastGroupResponse (Prelude.Maybe Prelude.UTCTime)
getMulticastGroupResponse_createdAt = Lens.lens (\GetMulticastGroupResponse' {createdAt} -> createdAt) (\s@GetMulticastGroupResponse' {} a -> s {createdAt = a} :: GetMulticastGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getMulticastGroupResponse_httpStatus :: Lens.Lens' GetMulticastGroupResponse Prelude.Int
getMulticastGroupResponse_httpStatus = Lens.lens (\GetMulticastGroupResponse' {httpStatus} -> httpStatus) (\s@GetMulticastGroupResponse' {} a -> s {httpStatus = a} :: GetMulticastGroupResponse)

instance Prelude.NFData GetMulticastGroupResponse where
  rnf GetMulticastGroupResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf loRaWAN
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf httpStatus
