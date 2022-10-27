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
-- Module      : Amazonka.FraudDetector.PutEventType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates an event type. An event is a business activity that
-- is evaluated for fraud risk. With Amazon Fraud Detector, you generate
-- fraud predictions for events. An event type defines the structure for an
-- event sent to Amazon Fraud Detector. This includes the variables sent as
-- part of the event, the entity performing the event (such as a customer),
-- and the labels that classify the event. Example event types include
-- online payment transactions, account registrations, and authentications.
module Amazonka.FraudDetector.PutEventType
  ( -- * Creating a Request
    PutEventType (..),
    newPutEventType,

    -- * Request Lenses
    putEventType_tags,
    putEventType_description,
    putEventType_labels,
    putEventType_eventIngestion,
    putEventType_name,
    putEventType_eventVariables,
    putEventType_entityTypes,

    -- * Destructuring the Response
    PutEventTypeResponse (..),
    newPutEventTypeResponse,

    -- * Response Lenses
    putEventTypeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutEventType' smart constructor.
data PutEventType = PutEventType'
  { -- | A collection of key and value pairs.
    tags :: Prelude.Maybe [Tag],
    -- | The description of the event type.
    description :: Prelude.Maybe Prelude.Text,
    -- | The event type labels.
    labels :: Prelude.Maybe [Prelude.Text],
    -- | Specifies if ingenstion is enabled or disabled.
    eventIngestion :: Prelude.Maybe EventIngestion,
    -- | The name.
    name :: Prelude.Text,
    -- | The event type variables.
    eventVariables :: Prelude.NonEmpty Prelude.Text,
    -- | The entity type for the event type. Example entity types: customer,
    -- merchant, account.
    entityTypes :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEventType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'putEventType_tags' - A collection of key and value pairs.
--
-- 'description', 'putEventType_description' - The description of the event type.
--
-- 'labels', 'putEventType_labels' - The event type labels.
--
-- 'eventIngestion', 'putEventType_eventIngestion' - Specifies if ingenstion is enabled or disabled.
--
-- 'name', 'putEventType_name' - The name.
--
-- 'eventVariables', 'putEventType_eventVariables' - The event type variables.
--
-- 'entityTypes', 'putEventType_entityTypes' - The entity type for the event type. Example entity types: customer,
-- merchant, account.
newPutEventType ::
  -- | 'name'
  Prelude.Text ->
  -- | 'eventVariables'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'entityTypes'
  Prelude.NonEmpty Prelude.Text ->
  PutEventType
newPutEventType pName_ pEventVariables_ pEntityTypes_ =
  PutEventType'
    { tags = Prelude.Nothing,
      description = Prelude.Nothing,
      labels = Prelude.Nothing,
      eventIngestion = Prelude.Nothing,
      name = pName_,
      eventVariables =
        Lens.coerced Lens.# pEventVariables_,
      entityTypes = Lens.coerced Lens.# pEntityTypes_
    }

-- | A collection of key and value pairs.
putEventType_tags :: Lens.Lens' PutEventType (Prelude.Maybe [Tag])
putEventType_tags = Lens.lens (\PutEventType' {tags} -> tags) (\s@PutEventType' {} a -> s {tags = a} :: PutEventType) Prelude.. Lens.mapping Lens.coerced

-- | The description of the event type.
putEventType_description :: Lens.Lens' PutEventType (Prelude.Maybe Prelude.Text)
putEventType_description = Lens.lens (\PutEventType' {description} -> description) (\s@PutEventType' {} a -> s {description = a} :: PutEventType)

-- | The event type labels.
putEventType_labels :: Lens.Lens' PutEventType (Prelude.Maybe [Prelude.Text])
putEventType_labels = Lens.lens (\PutEventType' {labels} -> labels) (\s@PutEventType' {} a -> s {labels = a} :: PutEventType) Prelude.. Lens.mapping Lens.coerced

-- | Specifies if ingenstion is enabled or disabled.
putEventType_eventIngestion :: Lens.Lens' PutEventType (Prelude.Maybe EventIngestion)
putEventType_eventIngestion = Lens.lens (\PutEventType' {eventIngestion} -> eventIngestion) (\s@PutEventType' {} a -> s {eventIngestion = a} :: PutEventType)

-- | The name.
putEventType_name :: Lens.Lens' PutEventType Prelude.Text
putEventType_name = Lens.lens (\PutEventType' {name} -> name) (\s@PutEventType' {} a -> s {name = a} :: PutEventType)

-- | The event type variables.
putEventType_eventVariables :: Lens.Lens' PutEventType (Prelude.NonEmpty Prelude.Text)
putEventType_eventVariables = Lens.lens (\PutEventType' {eventVariables} -> eventVariables) (\s@PutEventType' {} a -> s {eventVariables = a} :: PutEventType) Prelude.. Lens.coerced

-- | The entity type for the event type. Example entity types: customer,
-- merchant, account.
putEventType_entityTypes :: Lens.Lens' PutEventType (Prelude.NonEmpty Prelude.Text)
putEventType_entityTypes = Lens.lens (\PutEventType' {entityTypes} -> entityTypes) (\s@PutEventType' {} a -> s {entityTypes = a} :: PutEventType) Prelude.. Lens.coerced

instance Core.AWSRequest PutEventType where
  type AWSResponse PutEventType = PutEventTypeResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutEventTypeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutEventType where
  hashWithSalt _salt PutEventType' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` labels
      `Prelude.hashWithSalt` eventIngestion
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` eventVariables
      `Prelude.hashWithSalt` entityTypes

instance Prelude.NFData PutEventType where
  rnf PutEventType' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf labels
      `Prelude.seq` Prelude.rnf eventIngestion
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf eventVariables
      `Prelude.seq` Prelude.rnf entityTypes

instance Core.ToHeaders PutEventType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.PutEventType" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutEventType where
  toJSON PutEventType' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("description" Core..=) Prelude.<$> description,
            ("labels" Core..=) Prelude.<$> labels,
            ("eventIngestion" Core..=)
              Prelude.<$> eventIngestion,
            Prelude.Just ("name" Core..= name),
            Prelude.Just
              ("eventVariables" Core..= eventVariables),
            Prelude.Just ("entityTypes" Core..= entityTypes)
          ]
      )

instance Core.ToPath PutEventType where
  toPath = Prelude.const "/"

instance Core.ToQuery PutEventType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutEventTypeResponse' smart constructor.
data PutEventTypeResponse = PutEventTypeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEventTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putEventTypeResponse_httpStatus' - The response's http status code.
newPutEventTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutEventTypeResponse
newPutEventTypeResponse pHttpStatus_ =
  PutEventTypeResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
putEventTypeResponse_httpStatus :: Lens.Lens' PutEventTypeResponse Prelude.Int
putEventTypeResponse_httpStatus = Lens.lens (\PutEventTypeResponse' {httpStatus} -> httpStatus) (\s@PutEventTypeResponse' {} a -> s {httpStatus = a} :: PutEventTypeResponse)

instance Prelude.NFData PutEventTypeResponse where
  rnf PutEventTypeResponse' {..} =
    Prelude.rnf httpStatus
