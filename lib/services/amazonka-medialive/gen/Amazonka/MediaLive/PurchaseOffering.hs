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
-- Module      : Amazonka.MediaLive.PurchaseOffering
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Purchase an offering and create a reservation.
module Amazonka.MediaLive.PurchaseOffering
  ( -- * Creating a Request
    PurchaseOffering' (..),
    newPurchaseOffering',

    -- * Request Lenses
    purchaseOffering'_tags,
    purchaseOffering'_name,
    purchaseOffering'_renewalSettings,
    purchaseOffering'_start,
    purchaseOffering'_requestId,
    purchaseOffering'_offeringId,
    purchaseOffering'_count,

    -- * Destructuring the Response
    PurchaseOfferingResponse (..),
    newPurchaseOfferingResponse,

    -- * Response Lenses
    purchaseOfferingResponse_reservation,
    purchaseOfferingResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Placeholder documentation for PurchaseOfferingRequest
--
-- /See:/ 'newPurchaseOffering'' smart constructor.
data PurchaseOffering' = PurchaseOffering''
  { -- | A collection of key-value pairs
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Name for the new reservation
    name :: Prelude.Maybe Prelude.Text,
    -- | Renewal settings for the reservation
    renewalSettings :: Prelude.Maybe RenewalSettings,
    -- | Requested reservation start time (UTC) in ISO-8601 format. The specified
    -- time must be between the first day of the current month and one year
    -- from now. If no value is given, the default is now.
    start :: Prelude.Maybe Prelude.Text,
    -- | Unique request ID to be specified. This is needed to prevent retries
    -- from creating multiple resources.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Offering to purchase, e.g. \'87654321\'
    offeringId :: Prelude.Text,
    -- | Number of resources
    count :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PurchaseOffering'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'purchaseOffering'_tags' - A collection of key-value pairs
--
-- 'name', 'purchaseOffering'_name' - Name for the new reservation
--
-- 'renewalSettings', 'purchaseOffering'_renewalSettings' - Renewal settings for the reservation
--
-- 'start', 'purchaseOffering'_start' - Requested reservation start time (UTC) in ISO-8601 format. The specified
-- time must be between the first day of the current month and one year
-- from now. If no value is given, the default is now.
--
-- 'requestId', 'purchaseOffering'_requestId' - Unique request ID to be specified. This is needed to prevent retries
-- from creating multiple resources.
--
-- 'offeringId', 'purchaseOffering'_offeringId' - Offering to purchase, e.g. \'87654321\'
--
-- 'count', 'purchaseOffering'_count' - Number of resources
newPurchaseOffering' ::
  -- | 'offeringId'
  Prelude.Text ->
  -- | 'count'
  Prelude.Natural ->
  PurchaseOffering'
newPurchaseOffering' pOfferingId_ pCount_ =
  PurchaseOffering''
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      renewalSettings = Prelude.Nothing,
      start = Prelude.Nothing,
      requestId = Prelude.Nothing,
      offeringId = pOfferingId_,
      count = pCount_
    }

-- | A collection of key-value pairs
purchaseOffering'_tags :: Lens.Lens' PurchaseOffering' (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
purchaseOffering'_tags = Lens.lens (\PurchaseOffering'' {tags} -> tags) (\s@PurchaseOffering'' {} a -> s {tags = a} :: PurchaseOffering') Prelude.. Lens.mapping Lens.coerced

-- | Name for the new reservation
purchaseOffering'_name :: Lens.Lens' PurchaseOffering' (Prelude.Maybe Prelude.Text)
purchaseOffering'_name = Lens.lens (\PurchaseOffering'' {name} -> name) (\s@PurchaseOffering'' {} a -> s {name = a} :: PurchaseOffering')

-- | Renewal settings for the reservation
purchaseOffering'_renewalSettings :: Lens.Lens' PurchaseOffering' (Prelude.Maybe RenewalSettings)
purchaseOffering'_renewalSettings = Lens.lens (\PurchaseOffering'' {renewalSettings} -> renewalSettings) (\s@PurchaseOffering'' {} a -> s {renewalSettings = a} :: PurchaseOffering')

-- | Requested reservation start time (UTC) in ISO-8601 format. The specified
-- time must be between the first day of the current month and one year
-- from now. If no value is given, the default is now.
purchaseOffering'_start :: Lens.Lens' PurchaseOffering' (Prelude.Maybe Prelude.Text)
purchaseOffering'_start = Lens.lens (\PurchaseOffering'' {start} -> start) (\s@PurchaseOffering'' {} a -> s {start = a} :: PurchaseOffering')

-- | Unique request ID to be specified. This is needed to prevent retries
-- from creating multiple resources.
purchaseOffering'_requestId :: Lens.Lens' PurchaseOffering' (Prelude.Maybe Prelude.Text)
purchaseOffering'_requestId = Lens.lens (\PurchaseOffering'' {requestId} -> requestId) (\s@PurchaseOffering'' {} a -> s {requestId = a} :: PurchaseOffering')

-- | Offering to purchase, e.g. \'87654321\'
purchaseOffering'_offeringId :: Lens.Lens' PurchaseOffering' Prelude.Text
purchaseOffering'_offeringId = Lens.lens (\PurchaseOffering'' {offeringId} -> offeringId) (\s@PurchaseOffering'' {} a -> s {offeringId = a} :: PurchaseOffering')

-- | Number of resources
purchaseOffering'_count :: Lens.Lens' PurchaseOffering' Prelude.Natural
purchaseOffering'_count = Lens.lens (\PurchaseOffering'' {count} -> count) (\s@PurchaseOffering'' {} a -> s {count = a} :: PurchaseOffering')

instance Core.AWSRequest PurchaseOffering' where
  type
    AWSResponse PurchaseOffering' =
      PurchaseOfferingResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          PurchaseOfferingResponse'
            Prelude.<$> (x Core..?> "reservation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PurchaseOffering' where
  hashWithSalt _salt PurchaseOffering'' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` renewalSettings
      `Prelude.hashWithSalt` start
      `Prelude.hashWithSalt` requestId
      `Prelude.hashWithSalt` offeringId
      `Prelude.hashWithSalt` count

instance Prelude.NFData PurchaseOffering' where
  rnf PurchaseOffering'' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf renewalSettings
      `Prelude.seq` Prelude.rnf start
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf offeringId
      `Prelude.seq` Prelude.rnf count

instance Core.ToHeaders PurchaseOffering' where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PurchaseOffering' where
  toJSON PurchaseOffering'' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("name" Core..=) Prelude.<$> name,
            ("renewalSettings" Core..=)
              Prelude.<$> renewalSettings,
            ("start" Core..=) Prelude.<$> start,
            ("requestId" Core..=) Prelude.<$> requestId,
            Prelude.Just ("count" Core..= count)
          ]
      )

instance Core.ToPath PurchaseOffering' where
  toPath PurchaseOffering'' {..} =
    Prelude.mconcat
      [ "/prod/offerings/",
        Core.toBS offeringId,
        "/purchase"
      ]

instance Core.ToQuery PurchaseOffering' where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for PurchaseOfferingResponse
--
-- /See:/ 'newPurchaseOfferingResponse' smart constructor.
data PurchaseOfferingResponse = PurchaseOfferingResponse'
  { reservation :: Prelude.Maybe Reservation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PurchaseOfferingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservation', 'purchaseOfferingResponse_reservation' - Undocumented member.
--
-- 'httpStatus', 'purchaseOfferingResponse_httpStatus' - The response's http status code.
newPurchaseOfferingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PurchaseOfferingResponse
newPurchaseOfferingResponse pHttpStatus_ =
  PurchaseOfferingResponse'
    { reservation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
purchaseOfferingResponse_reservation :: Lens.Lens' PurchaseOfferingResponse (Prelude.Maybe Reservation)
purchaseOfferingResponse_reservation = Lens.lens (\PurchaseOfferingResponse' {reservation} -> reservation) (\s@PurchaseOfferingResponse' {} a -> s {reservation = a} :: PurchaseOfferingResponse)

-- | The response's http status code.
purchaseOfferingResponse_httpStatus :: Lens.Lens' PurchaseOfferingResponse Prelude.Int
purchaseOfferingResponse_httpStatus = Lens.lens (\PurchaseOfferingResponse' {httpStatus} -> httpStatus) (\s@PurchaseOfferingResponse' {} a -> s {httpStatus = a} :: PurchaseOfferingResponse)

instance Prelude.NFData PurchaseOfferingResponse where
  rnf PurchaseOfferingResponse' {..} =
    Prelude.rnf reservation
      `Prelude.seq` Prelude.rnf httpStatus
