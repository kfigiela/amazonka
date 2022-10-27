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
-- Module      : Amazonka.SESV2.UpdateContact
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a contact\'s preferences for a list. It is not necessary to
-- specify all existing topic preferences in the TopicPreferences object,
-- just the ones that need updating.
module Amazonka.SESV2.UpdateContact
  ( -- * Creating a Request
    UpdateContact (..),
    newUpdateContact,

    -- * Request Lenses
    updateContact_unsubscribeAll,
    updateContact_topicPreferences,
    updateContact_attributesData,
    updateContact_contactListName,
    updateContact_emailAddress,

    -- * Destructuring the Response
    UpdateContactResponse (..),
    newUpdateContactResponse,

    -- * Response Lenses
    updateContactResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SESV2.Types

-- | /See:/ 'newUpdateContact' smart constructor.
data UpdateContact = UpdateContact'
  { -- | A boolean value status noting if the contact is unsubscribed from all
    -- contact list topics.
    unsubscribeAll :: Prelude.Maybe Prelude.Bool,
    -- | The contact\'s preference for being opted-in to or opted-out of a topic.
    topicPreferences :: Prelude.Maybe [TopicPreference],
    -- | The attribute data attached to a contact.
    attributesData :: Prelude.Maybe Prelude.Text,
    -- | The name of the contact list.
    contactListName :: Prelude.Text,
    -- | The contact\'s email addres.
    emailAddress :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateContact' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unsubscribeAll', 'updateContact_unsubscribeAll' - A boolean value status noting if the contact is unsubscribed from all
-- contact list topics.
--
-- 'topicPreferences', 'updateContact_topicPreferences' - The contact\'s preference for being opted-in to or opted-out of a topic.
--
-- 'attributesData', 'updateContact_attributesData' - The attribute data attached to a contact.
--
-- 'contactListName', 'updateContact_contactListName' - The name of the contact list.
--
-- 'emailAddress', 'updateContact_emailAddress' - The contact\'s email addres.
newUpdateContact ::
  -- | 'contactListName'
  Prelude.Text ->
  -- | 'emailAddress'
  Prelude.Text ->
  UpdateContact
newUpdateContact pContactListName_ pEmailAddress_ =
  UpdateContact'
    { unsubscribeAll = Prelude.Nothing,
      topicPreferences = Prelude.Nothing,
      attributesData = Prelude.Nothing,
      contactListName = pContactListName_,
      emailAddress = pEmailAddress_
    }

-- | A boolean value status noting if the contact is unsubscribed from all
-- contact list topics.
updateContact_unsubscribeAll :: Lens.Lens' UpdateContact (Prelude.Maybe Prelude.Bool)
updateContact_unsubscribeAll = Lens.lens (\UpdateContact' {unsubscribeAll} -> unsubscribeAll) (\s@UpdateContact' {} a -> s {unsubscribeAll = a} :: UpdateContact)

-- | The contact\'s preference for being opted-in to or opted-out of a topic.
updateContact_topicPreferences :: Lens.Lens' UpdateContact (Prelude.Maybe [TopicPreference])
updateContact_topicPreferences = Lens.lens (\UpdateContact' {topicPreferences} -> topicPreferences) (\s@UpdateContact' {} a -> s {topicPreferences = a} :: UpdateContact) Prelude.. Lens.mapping Lens.coerced

-- | The attribute data attached to a contact.
updateContact_attributesData :: Lens.Lens' UpdateContact (Prelude.Maybe Prelude.Text)
updateContact_attributesData = Lens.lens (\UpdateContact' {attributesData} -> attributesData) (\s@UpdateContact' {} a -> s {attributesData = a} :: UpdateContact)

-- | The name of the contact list.
updateContact_contactListName :: Lens.Lens' UpdateContact Prelude.Text
updateContact_contactListName = Lens.lens (\UpdateContact' {contactListName} -> contactListName) (\s@UpdateContact' {} a -> s {contactListName = a} :: UpdateContact)

-- | The contact\'s email addres.
updateContact_emailAddress :: Lens.Lens' UpdateContact Prelude.Text
updateContact_emailAddress = Lens.lens (\UpdateContact' {emailAddress} -> emailAddress) (\s@UpdateContact' {} a -> s {emailAddress = a} :: UpdateContact)

instance Core.AWSRequest UpdateContact where
  type
    AWSResponse UpdateContact =
      UpdateContactResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateContactResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateContact where
  hashWithSalt _salt UpdateContact' {..} =
    _salt `Prelude.hashWithSalt` unsubscribeAll
      `Prelude.hashWithSalt` topicPreferences
      `Prelude.hashWithSalt` attributesData
      `Prelude.hashWithSalt` contactListName
      `Prelude.hashWithSalt` emailAddress

instance Prelude.NFData UpdateContact where
  rnf UpdateContact' {..} =
    Prelude.rnf unsubscribeAll
      `Prelude.seq` Prelude.rnf topicPreferences
      `Prelude.seq` Prelude.rnf attributesData
      `Prelude.seq` Prelude.rnf contactListName
      `Prelude.seq` Prelude.rnf emailAddress

instance Core.ToHeaders UpdateContact where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateContact where
  toJSON UpdateContact' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("UnsubscribeAll" Core..=)
              Prelude.<$> unsubscribeAll,
            ("TopicPreferences" Core..=)
              Prelude.<$> topicPreferences,
            ("AttributesData" Core..=)
              Prelude.<$> attributesData
          ]
      )

instance Core.ToPath UpdateContact where
  toPath UpdateContact' {..} =
    Prelude.mconcat
      [ "/v2/email/contact-lists/",
        Core.toBS contactListName,
        "/contacts/",
        Core.toBS emailAddress
      ]

instance Core.ToQuery UpdateContact where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateContactResponse' smart constructor.
data UpdateContactResponse = UpdateContactResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateContactResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateContactResponse_httpStatus' - The response's http status code.
newUpdateContactResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateContactResponse
newUpdateContactResponse pHttpStatus_ =
  UpdateContactResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateContactResponse_httpStatus :: Lens.Lens' UpdateContactResponse Prelude.Int
updateContactResponse_httpStatus = Lens.lens (\UpdateContactResponse' {httpStatus} -> httpStatus) (\s@UpdateContactResponse' {} a -> s {httpStatus = a} :: UpdateContactResponse)

instance Prelude.NFData UpdateContactResponse where
  rnf UpdateContactResponse' {..} =
    Prelude.rnf httpStatus
