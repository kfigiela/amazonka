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
-- Module      : Amazonka.CloudWatchEvents.DeletePartnerEventSource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation is used by SaaS partners to delete a partner event
-- source. This operation is not used by Amazon Web Services customers.
--
-- When you delete an event source, the status of the corresponding partner
-- event bus in the Amazon Web Services customer account becomes DELETED.
module Amazonka.CloudWatchEvents.DeletePartnerEventSource
  ( -- * Creating a Request
    DeletePartnerEventSource (..),
    newDeletePartnerEventSource,

    -- * Request Lenses
    deletePartnerEventSource_name,
    deletePartnerEventSource_account,

    -- * Destructuring the Response
    DeletePartnerEventSourceResponse (..),
    newDeletePartnerEventSourceResponse,
  )
where

import Amazonka.CloudWatchEvents.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeletePartnerEventSource' smart constructor.
data DeletePartnerEventSource = DeletePartnerEventSource'
  { -- | The name of the event source to delete.
    name :: Prelude.Text,
    -- | The Amazon Web Services account ID of the Amazon Web Services customer
    -- that the event source was created for.
    account :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePartnerEventSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deletePartnerEventSource_name' - The name of the event source to delete.
--
-- 'account', 'deletePartnerEventSource_account' - The Amazon Web Services account ID of the Amazon Web Services customer
-- that the event source was created for.
newDeletePartnerEventSource ::
  -- | 'name'
  Prelude.Text ->
  -- | 'account'
  Prelude.Text ->
  DeletePartnerEventSource
newDeletePartnerEventSource pName_ pAccount_ =
  DeletePartnerEventSource'
    { name = pName_,
      account = pAccount_
    }

-- | The name of the event source to delete.
deletePartnerEventSource_name :: Lens.Lens' DeletePartnerEventSource Prelude.Text
deletePartnerEventSource_name = Lens.lens (\DeletePartnerEventSource' {name} -> name) (\s@DeletePartnerEventSource' {} a -> s {name = a} :: DeletePartnerEventSource)

-- | The Amazon Web Services account ID of the Amazon Web Services customer
-- that the event source was created for.
deletePartnerEventSource_account :: Lens.Lens' DeletePartnerEventSource Prelude.Text
deletePartnerEventSource_account = Lens.lens (\DeletePartnerEventSource' {account} -> account) (\s@DeletePartnerEventSource' {} a -> s {account = a} :: DeletePartnerEventSource)

instance Core.AWSRequest DeletePartnerEventSource where
  type
    AWSResponse DeletePartnerEventSource =
      DeletePartnerEventSourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeletePartnerEventSourceResponse'

instance Prelude.Hashable DeletePartnerEventSource where
  hashWithSalt _salt DeletePartnerEventSource' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` account

instance Prelude.NFData DeletePartnerEventSource where
  rnf DeletePartnerEventSource' {..} =
    Prelude.rnf name `Prelude.seq` Prelude.rnf account

instance Core.ToHeaders DeletePartnerEventSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSEvents.DeletePartnerEventSource" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeletePartnerEventSource where
  toJSON DeletePartnerEventSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Account" Core..= account)
          ]
      )

instance Core.ToPath DeletePartnerEventSource where
  toPath = Prelude.const "/"

instance Core.ToQuery DeletePartnerEventSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeletePartnerEventSourceResponse' smart constructor.
data DeletePartnerEventSourceResponse = DeletePartnerEventSourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePartnerEventSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeletePartnerEventSourceResponse ::
  DeletePartnerEventSourceResponse
newDeletePartnerEventSourceResponse =
  DeletePartnerEventSourceResponse'

instance
  Prelude.NFData
    DeletePartnerEventSourceResponse
  where
  rnf _ = ()
