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
-- Module      : Amazonka.CloudFormation.DescribePublisher
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a CloudFormation extension publisher.
--
-- If you don\'t supply a @PublisherId@, and you have registered as an
-- extension publisher, @DescribePublisher@ returns information about your
-- own publisher account.
--
-- For more information about registering as a publisher, see:
--
-- -   <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html RegisterPublisher>
--
-- -   <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html Publishing extensions to make them available for public use>
--     in the /CloudFormation CLI User Guide/
module Amazonka.CloudFormation.DescribePublisher
  ( -- * Creating a Request
    DescribePublisher (..),
    newDescribePublisher,

    -- * Request Lenses
    describePublisher_publisherId,

    -- * Destructuring the Response
    DescribePublisherResponse (..),
    newDescribePublisherResponse,

    -- * Response Lenses
    describePublisherResponse_publisherId,
    describePublisherResponse_publisherStatus,
    describePublisherResponse_publisherProfile,
    describePublisherResponse_identityProvider,
    describePublisherResponse_httpStatus,
  )
where

import Amazonka.CloudFormation.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribePublisher' smart constructor.
data DescribePublisher = DescribePublisher'
  { -- | The ID of the extension publisher.
    --
    -- If you don\'t supply a @PublisherId@, and you have registered as an
    -- extension publisher, @DescribePublisher@ returns information about your
    -- own publisher account.
    publisherId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePublisher' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publisherId', 'describePublisher_publisherId' - The ID of the extension publisher.
--
-- If you don\'t supply a @PublisherId@, and you have registered as an
-- extension publisher, @DescribePublisher@ returns information about your
-- own publisher account.
newDescribePublisher ::
  DescribePublisher
newDescribePublisher =
  DescribePublisher' {publisherId = Prelude.Nothing}

-- | The ID of the extension publisher.
--
-- If you don\'t supply a @PublisherId@, and you have registered as an
-- extension publisher, @DescribePublisher@ returns information about your
-- own publisher account.
describePublisher_publisherId :: Lens.Lens' DescribePublisher (Prelude.Maybe Prelude.Text)
describePublisher_publisherId = Lens.lens (\DescribePublisher' {publisherId} -> publisherId) (\s@DescribePublisher' {} a -> s {publisherId = a} :: DescribePublisher)

instance Core.AWSRequest DescribePublisher where
  type
    AWSResponse DescribePublisher =
      DescribePublisherResponse
  service _ = defaultService
  request srv = Request.postQuery srv
  response =
    Response.receiveXMLWrapper
      "DescribePublisherResult"
      ( \s h x ->
          DescribePublisherResponse'
            Prelude.<$> (x Core..@? "PublisherId")
            Prelude.<*> (x Core..@? "PublisherStatus")
            Prelude.<*> (x Core..@? "PublisherProfile")
            Prelude.<*> (x Core..@? "IdentityProvider")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribePublisher where
  hashWithSalt _salt DescribePublisher' {..} =
    _salt `Prelude.hashWithSalt` publisherId

instance Prelude.NFData DescribePublisher where
  rnf DescribePublisher' {..} = Prelude.rnf publisherId

instance Core.ToHeaders DescribePublisher where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribePublisher where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribePublisher where
  toQuery DescribePublisher' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribePublisher" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-15" :: Prelude.ByteString),
        "PublisherId" Core.=: publisherId
      ]

-- | /See:/ 'newDescribePublisherResponse' smart constructor.
data DescribePublisherResponse = DescribePublisherResponse'
  { -- | The ID of the extension publisher.
    publisherId :: Prelude.Maybe Prelude.Text,
    -- | Whether the publisher is verified. Currently, all registered publishers
    -- are verified.
    publisherStatus :: Prelude.Maybe PublisherStatus,
    -- | The URL to the publisher\'s profile with the identity provider.
    publisherProfile :: Prelude.Maybe Prelude.Text,
    -- | The type of account used as the identity provider when registering this
    -- publisher with CloudFormation.
    identityProvider :: Prelude.Maybe IdentityProvider,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePublisherResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publisherId', 'describePublisherResponse_publisherId' - The ID of the extension publisher.
--
-- 'publisherStatus', 'describePublisherResponse_publisherStatus' - Whether the publisher is verified. Currently, all registered publishers
-- are verified.
--
-- 'publisherProfile', 'describePublisherResponse_publisherProfile' - The URL to the publisher\'s profile with the identity provider.
--
-- 'identityProvider', 'describePublisherResponse_identityProvider' - The type of account used as the identity provider when registering this
-- publisher with CloudFormation.
--
-- 'httpStatus', 'describePublisherResponse_httpStatus' - The response's http status code.
newDescribePublisherResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribePublisherResponse
newDescribePublisherResponse pHttpStatus_ =
  DescribePublisherResponse'
    { publisherId =
        Prelude.Nothing,
      publisherStatus = Prelude.Nothing,
      publisherProfile = Prelude.Nothing,
      identityProvider = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the extension publisher.
describePublisherResponse_publisherId :: Lens.Lens' DescribePublisherResponse (Prelude.Maybe Prelude.Text)
describePublisherResponse_publisherId = Lens.lens (\DescribePublisherResponse' {publisherId} -> publisherId) (\s@DescribePublisherResponse' {} a -> s {publisherId = a} :: DescribePublisherResponse)

-- | Whether the publisher is verified. Currently, all registered publishers
-- are verified.
describePublisherResponse_publisherStatus :: Lens.Lens' DescribePublisherResponse (Prelude.Maybe PublisherStatus)
describePublisherResponse_publisherStatus = Lens.lens (\DescribePublisherResponse' {publisherStatus} -> publisherStatus) (\s@DescribePublisherResponse' {} a -> s {publisherStatus = a} :: DescribePublisherResponse)

-- | The URL to the publisher\'s profile with the identity provider.
describePublisherResponse_publisherProfile :: Lens.Lens' DescribePublisherResponse (Prelude.Maybe Prelude.Text)
describePublisherResponse_publisherProfile = Lens.lens (\DescribePublisherResponse' {publisherProfile} -> publisherProfile) (\s@DescribePublisherResponse' {} a -> s {publisherProfile = a} :: DescribePublisherResponse)

-- | The type of account used as the identity provider when registering this
-- publisher with CloudFormation.
describePublisherResponse_identityProvider :: Lens.Lens' DescribePublisherResponse (Prelude.Maybe IdentityProvider)
describePublisherResponse_identityProvider = Lens.lens (\DescribePublisherResponse' {identityProvider} -> identityProvider) (\s@DescribePublisherResponse' {} a -> s {identityProvider = a} :: DescribePublisherResponse)

-- | The response's http status code.
describePublisherResponse_httpStatus :: Lens.Lens' DescribePublisherResponse Prelude.Int
describePublisherResponse_httpStatus = Lens.lens (\DescribePublisherResponse' {httpStatus} -> httpStatus) (\s@DescribePublisherResponse' {} a -> s {httpStatus = a} :: DescribePublisherResponse)

instance Prelude.NFData DescribePublisherResponse where
  rnf DescribePublisherResponse' {..} =
    Prelude.rnf publisherId
      `Prelude.seq` Prelude.rnf publisherStatus
      `Prelude.seq` Prelude.rnf publisherProfile
      `Prelude.seq` Prelude.rnf identityProvider
      `Prelude.seq` Prelude.rnf httpStatus
