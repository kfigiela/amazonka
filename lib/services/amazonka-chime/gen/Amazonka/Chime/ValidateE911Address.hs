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
-- Module      : Amazonka.Chime.ValidateE911Address
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates an address to be used for 911 calls made with Amazon Chime
-- Voice Connectors. You can use validated addresses in a Presence
-- Information Data Format Location Object file that you include in SIP
-- requests. That helps ensure that addresses are routed to the appropriate
-- Public Safety Answering Point.
module Amazonka.Chime.ValidateE911Address
  ( -- * Creating a Request
    ValidateE911Address (..),
    newValidateE911Address,

    -- * Request Lenses
    validateE911Address_awsAccountId,
    validateE911Address_streetNumber,
    validateE911Address_streetInfo,
    validateE911Address_city,
    validateE911Address_state,
    validateE911Address_country,
    validateE911Address_postalCode,

    -- * Destructuring the Response
    ValidateE911AddressResponse (..),
    newValidateE911AddressResponse,

    -- * Response Lenses
    validateE911AddressResponse_validationResult,
    validateE911AddressResponse_candidateAddressList,
    validateE911AddressResponse_address,
    validateE911AddressResponse_addressExternalId,
    validateE911AddressResponse_httpStatus,
  )
where

import Amazonka.Chime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newValidateE911Address' smart constructor.
data ValidateE911Address = ValidateE911Address'
  { -- | The AWS account ID.
    awsAccountId :: Prelude.Text,
    -- | The address street number, such as @200@ or @2121@.
    streetNumber :: Core.Sensitive Prelude.Text,
    -- | The address street information, such as @8th Avenue@.
    streetInfo :: Core.Sensitive Prelude.Text,
    -- | The address city, such as @Portland@.
    city :: Core.Sensitive Prelude.Text,
    -- | The address state, such as @ME@.
    state :: Core.Sensitive Prelude.Text,
    -- | The address country, such as @US@.
    country :: Core.Sensitive Prelude.Text,
    -- | The address postal code, such as @04352@.
    postalCode :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ValidateE911Address' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'validateE911Address_awsAccountId' - The AWS account ID.
--
-- 'streetNumber', 'validateE911Address_streetNumber' - The address street number, such as @200@ or @2121@.
--
-- 'streetInfo', 'validateE911Address_streetInfo' - The address street information, such as @8th Avenue@.
--
-- 'city', 'validateE911Address_city' - The address city, such as @Portland@.
--
-- 'state', 'validateE911Address_state' - The address state, such as @ME@.
--
-- 'country', 'validateE911Address_country' - The address country, such as @US@.
--
-- 'postalCode', 'validateE911Address_postalCode' - The address postal code, such as @04352@.
newValidateE911Address ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'streetNumber'
  Prelude.Text ->
  -- | 'streetInfo'
  Prelude.Text ->
  -- | 'city'
  Prelude.Text ->
  -- | 'state'
  Prelude.Text ->
  -- | 'country'
  Prelude.Text ->
  -- | 'postalCode'
  Prelude.Text ->
  ValidateE911Address
newValidateE911Address
  pAwsAccountId_
  pStreetNumber_
  pStreetInfo_
  pCity_
  pState_
  pCountry_
  pPostalCode_ =
    ValidateE911Address'
      { awsAccountId = pAwsAccountId_,
        streetNumber = Core._Sensitive Lens.# pStreetNumber_,
        streetInfo = Core._Sensitive Lens.# pStreetInfo_,
        city = Core._Sensitive Lens.# pCity_,
        state = Core._Sensitive Lens.# pState_,
        country = Core._Sensitive Lens.# pCountry_,
        postalCode = Core._Sensitive Lens.# pPostalCode_
      }

-- | The AWS account ID.
validateE911Address_awsAccountId :: Lens.Lens' ValidateE911Address Prelude.Text
validateE911Address_awsAccountId = Lens.lens (\ValidateE911Address' {awsAccountId} -> awsAccountId) (\s@ValidateE911Address' {} a -> s {awsAccountId = a} :: ValidateE911Address)

-- | The address street number, such as @200@ or @2121@.
validateE911Address_streetNumber :: Lens.Lens' ValidateE911Address Prelude.Text
validateE911Address_streetNumber = Lens.lens (\ValidateE911Address' {streetNumber} -> streetNumber) (\s@ValidateE911Address' {} a -> s {streetNumber = a} :: ValidateE911Address) Prelude.. Core._Sensitive

-- | The address street information, such as @8th Avenue@.
validateE911Address_streetInfo :: Lens.Lens' ValidateE911Address Prelude.Text
validateE911Address_streetInfo = Lens.lens (\ValidateE911Address' {streetInfo} -> streetInfo) (\s@ValidateE911Address' {} a -> s {streetInfo = a} :: ValidateE911Address) Prelude.. Core._Sensitive

-- | The address city, such as @Portland@.
validateE911Address_city :: Lens.Lens' ValidateE911Address Prelude.Text
validateE911Address_city = Lens.lens (\ValidateE911Address' {city} -> city) (\s@ValidateE911Address' {} a -> s {city = a} :: ValidateE911Address) Prelude.. Core._Sensitive

-- | The address state, such as @ME@.
validateE911Address_state :: Lens.Lens' ValidateE911Address Prelude.Text
validateE911Address_state = Lens.lens (\ValidateE911Address' {state} -> state) (\s@ValidateE911Address' {} a -> s {state = a} :: ValidateE911Address) Prelude.. Core._Sensitive

-- | The address country, such as @US@.
validateE911Address_country :: Lens.Lens' ValidateE911Address Prelude.Text
validateE911Address_country = Lens.lens (\ValidateE911Address' {country} -> country) (\s@ValidateE911Address' {} a -> s {country = a} :: ValidateE911Address) Prelude.. Core._Sensitive

-- | The address postal code, such as @04352@.
validateE911Address_postalCode :: Lens.Lens' ValidateE911Address Prelude.Text
validateE911Address_postalCode = Lens.lens (\ValidateE911Address' {postalCode} -> postalCode) (\s@ValidateE911Address' {} a -> s {postalCode = a} :: ValidateE911Address) Prelude.. Core._Sensitive

instance Core.AWSRequest ValidateE911Address where
  type
    AWSResponse ValidateE911Address =
      ValidateE911AddressResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ValidateE911AddressResponse'
            Prelude.<$> (x Core..?> "ValidationResult")
            Prelude.<*> ( x Core..?> "CandidateAddressList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "Address")
            Prelude.<*> (x Core..?> "AddressExternalId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ValidateE911Address where
  hashWithSalt _salt ValidateE911Address' {..} =
    _salt `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` streetNumber
      `Prelude.hashWithSalt` streetInfo
      `Prelude.hashWithSalt` city
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` country
      `Prelude.hashWithSalt` postalCode

instance Prelude.NFData ValidateE911Address where
  rnf ValidateE911Address' {..} =
    Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf streetNumber
      `Prelude.seq` Prelude.rnf streetInfo
      `Prelude.seq` Prelude.rnf city
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf country
      `Prelude.seq` Prelude.rnf postalCode

instance Core.ToHeaders ValidateE911Address where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON ValidateE911Address where
  toJSON ValidateE911Address' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("AwsAccountId" Core..= awsAccountId),
            Prelude.Just ("StreetNumber" Core..= streetNumber),
            Prelude.Just ("StreetInfo" Core..= streetInfo),
            Prelude.Just ("City" Core..= city),
            Prelude.Just ("State" Core..= state),
            Prelude.Just ("Country" Core..= country),
            Prelude.Just ("PostalCode" Core..= postalCode)
          ]
      )

instance Core.ToPath ValidateE911Address where
  toPath = Prelude.const "/emergency-calling/address"

instance Core.ToQuery ValidateE911Address where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newValidateE911AddressResponse' smart constructor.
data ValidateE911AddressResponse = ValidateE911AddressResponse'
  { -- | Number indicating the result of address validation. @0@ means the
    -- address was perfect as is and successfully validated. @1@ means the
    -- address was corrected. @2@ means the address sent was not close enough
    -- and was not validated.
    validationResult :: Prelude.Maybe Prelude.Natural,
    -- | The list of address suggestions.
    candidateAddressList :: Prelude.Maybe [CandidateAddress],
    -- | The validated address.
    address :: Prelude.Maybe Address,
    -- | The ID that represents the address.
    addressExternalId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ValidateE911AddressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'validationResult', 'validateE911AddressResponse_validationResult' - Number indicating the result of address validation. @0@ means the
-- address was perfect as is and successfully validated. @1@ means the
-- address was corrected. @2@ means the address sent was not close enough
-- and was not validated.
--
-- 'candidateAddressList', 'validateE911AddressResponse_candidateAddressList' - The list of address suggestions.
--
-- 'address', 'validateE911AddressResponse_address' - The validated address.
--
-- 'addressExternalId', 'validateE911AddressResponse_addressExternalId' - The ID that represents the address.
--
-- 'httpStatus', 'validateE911AddressResponse_httpStatus' - The response's http status code.
newValidateE911AddressResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ValidateE911AddressResponse
newValidateE911AddressResponse pHttpStatus_ =
  ValidateE911AddressResponse'
    { validationResult =
        Prelude.Nothing,
      candidateAddressList = Prelude.Nothing,
      address = Prelude.Nothing,
      addressExternalId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Number indicating the result of address validation. @0@ means the
-- address was perfect as is and successfully validated. @1@ means the
-- address was corrected. @2@ means the address sent was not close enough
-- and was not validated.
validateE911AddressResponse_validationResult :: Lens.Lens' ValidateE911AddressResponse (Prelude.Maybe Prelude.Natural)
validateE911AddressResponse_validationResult = Lens.lens (\ValidateE911AddressResponse' {validationResult} -> validationResult) (\s@ValidateE911AddressResponse' {} a -> s {validationResult = a} :: ValidateE911AddressResponse)

-- | The list of address suggestions.
validateE911AddressResponse_candidateAddressList :: Lens.Lens' ValidateE911AddressResponse (Prelude.Maybe [CandidateAddress])
validateE911AddressResponse_candidateAddressList = Lens.lens (\ValidateE911AddressResponse' {candidateAddressList} -> candidateAddressList) (\s@ValidateE911AddressResponse' {} a -> s {candidateAddressList = a} :: ValidateE911AddressResponse) Prelude.. Lens.mapping Lens.coerced

-- | The validated address.
validateE911AddressResponse_address :: Lens.Lens' ValidateE911AddressResponse (Prelude.Maybe Address)
validateE911AddressResponse_address = Lens.lens (\ValidateE911AddressResponse' {address} -> address) (\s@ValidateE911AddressResponse' {} a -> s {address = a} :: ValidateE911AddressResponse)

-- | The ID that represents the address.
validateE911AddressResponse_addressExternalId :: Lens.Lens' ValidateE911AddressResponse (Prelude.Maybe Prelude.Text)
validateE911AddressResponse_addressExternalId = Lens.lens (\ValidateE911AddressResponse' {addressExternalId} -> addressExternalId) (\s@ValidateE911AddressResponse' {} a -> s {addressExternalId = a} :: ValidateE911AddressResponse)

-- | The response's http status code.
validateE911AddressResponse_httpStatus :: Lens.Lens' ValidateE911AddressResponse Prelude.Int
validateE911AddressResponse_httpStatus = Lens.lens (\ValidateE911AddressResponse' {httpStatus} -> httpStatus) (\s@ValidateE911AddressResponse' {} a -> s {httpStatus = a} :: ValidateE911AddressResponse)

instance Prelude.NFData ValidateE911AddressResponse where
  rnf ValidateE911AddressResponse' {..} =
    Prelude.rnf validationResult
      `Prelude.seq` Prelude.rnf candidateAddressList
      `Prelude.seq` Prelude.rnf address
      `Prelude.seq` Prelude.rnf addressExternalId
      `Prelude.seq` Prelude.rnf httpStatus
