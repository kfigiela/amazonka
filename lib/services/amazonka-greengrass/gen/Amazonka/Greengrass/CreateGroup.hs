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
-- Module      : Amazonka.Greengrass.CreateGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group. You may provide the initial version of the group or use
-- \'\'CreateGroupVersion\'\' at a later time. Tip: You can use the
-- \'\'gg_group_setup\'\' package
-- (https:\/\/github.com\/awslabs\/aws-greengrass-group-setup) as a library
-- or command-line application to create and deploy Greengrass groups.
module Amazonka.Greengrass.CreateGroup
  ( -- * Creating a Request
    CreateGroup (..),
    newCreateGroup,

    -- * Request Lenses
    createGroup_tags,
    createGroup_initialVersion,
    createGroup_amznClientToken,
    createGroup_name,

    -- * Destructuring the Response
    CreateGroupResponse (..),
    newCreateGroupResponse,

    -- * Response Lenses
    createGroupResponse_lastUpdatedTimestamp,
    createGroupResponse_name,
    createGroupResponse_arn,
    createGroupResponse_latestVersion,
    createGroupResponse_id,
    createGroupResponse_creationTimestamp,
    createGroupResponse_latestVersionArn,
    createGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Greengrass.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateGroup' smart constructor.
data CreateGroup = CreateGroup'
  { -- | Tag(s) to add to the new resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Information about the initial version of the group.
    initialVersion :: Prelude.Maybe GroupVersion,
    -- | A client token used to correlate requests and responses.
    amznClientToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the group.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createGroup_tags' - Tag(s) to add to the new resource.
--
-- 'initialVersion', 'createGroup_initialVersion' - Information about the initial version of the group.
--
-- 'amznClientToken', 'createGroup_amznClientToken' - A client token used to correlate requests and responses.
--
-- 'name', 'createGroup_name' - The name of the group.
newCreateGroup ::
  -- | 'name'
  Prelude.Text ->
  CreateGroup
newCreateGroup pName_ =
  CreateGroup'
    { tags = Prelude.Nothing,
      initialVersion = Prelude.Nothing,
      amznClientToken = Prelude.Nothing,
      name = pName_
    }

-- | Tag(s) to add to the new resource.
createGroup_tags :: Lens.Lens' CreateGroup (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createGroup_tags = Lens.lens (\CreateGroup' {tags} -> tags) (\s@CreateGroup' {} a -> s {tags = a} :: CreateGroup) Prelude.. Lens.mapping Lens.coerced

-- | Information about the initial version of the group.
createGroup_initialVersion :: Lens.Lens' CreateGroup (Prelude.Maybe GroupVersion)
createGroup_initialVersion = Lens.lens (\CreateGroup' {initialVersion} -> initialVersion) (\s@CreateGroup' {} a -> s {initialVersion = a} :: CreateGroup)

-- | A client token used to correlate requests and responses.
createGroup_amznClientToken :: Lens.Lens' CreateGroup (Prelude.Maybe Prelude.Text)
createGroup_amznClientToken = Lens.lens (\CreateGroup' {amznClientToken} -> amznClientToken) (\s@CreateGroup' {} a -> s {amznClientToken = a} :: CreateGroup)

-- | The name of the group.
createGroup_name :: Lens.Lens' CreateGroup Prelude.Text
createGroup_name = Lens.lens (\CreateGroup' {name} -> name) (\s@CreateGroup' {} a -> s {name = a} :: CreateGroup)

instance Core.AWSRequest CreateGroup where
  type AWSResponse CreateGroup = CreateGroupResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGroupResponse'
            Prelude.<$> (x Core..?> "LastUpdatedTimestamp")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "LatestVersion")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (x Core..?> "CreationTimestamp")
            Prelude.<*> (x Core..?> "LatestVersionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateGroup where
  hashWithSalt _salt CreateGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` initialVersion
      `Prelude.hashWithSalt` amznClientToken
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateGroup where
  rnf CreateGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf initialVersion
      `Prelude.seq` Prelude.rnf amznClientToken
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateGroup where
  toHeaders CreateGroup' {..} =
    Prelude.mconcat
      [ "X-Amzn-Client-Token" Core.=# amznClientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON CreateGroup where
  toJSON CreateGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("InitialVersion" Core..=)
              Prelude.<$> initialVersion,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateGroup where
  toPath = Prelude.const "/greengrass/groups"

instance Core.ToQuery CreateGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateGroupResponse' smart constructor.
data CreateGroupResponse = CreateGroupResponse'
  { -- | The time, in milliseconds since the epoch, when the definition was last
    -- updated.
    lastUpdatedTimestamp :: Prelude.Maybe Prelude.Text,
    -- | The name of the definition.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the definition.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the latest version associated with the definition.
    latestVersion :: Prelude.Maybe Prelude.Text,
    -- | The ID of the definition.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the definition was
    -- created.
    creationTimestamp :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the latest version associated with the definition.
    latestVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimestamp', 'createGroupResponse_lastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last
-- updated.
--
-- 'name', 'createGroupResponse_name' - The name of the definition.
--
-- 'arn', 'createGroupResponse_arn' - The ARN of the definition.
--
-- 'latestVersion', 'createGroupResponse_latestVersion' - The ID of the latest version associated with the definition.
--
-- 'id', 'createGroupResponse_id' - The ID of the definition.
--
-- 'creationTimestamp', 'createGroupResponse_creationTimestamp' - The time, in milliseconds since the epoch, when the definition was
-- created.
--
-- 'latestVersionArn', 'createGroupResponse_latestVersionArn' - The ARN of the latest version associated with the definition.
--
-- 'httpStatus', 'createGroupResponse_httpStatus' - The response's http status code.
newCreateGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateGroupResponse
newCreateGroupResponse pHttpStatus_ =
  CreateGroupResponse'
    { lastUpdatedTimestamp =
        Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing,
      latestVersion = Prelude.Nothing,
      id = Prelude.Nothing,
      creationTimestamp = Prelude.Nothing,
      latestVersionArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was last
-- updated.
createGroupResponse_lastUpdatedTimestamp :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_lastUpdatedTimestamp = Lens.lens (\CreateGroupResponse' {lastUpdatedTimestamp} -> lastUpdatedTimestamp) (\s@CreateGroupResponse' {} a -> s {lastUpdatedTimestamp = a} :: CreateGroupResponse)

-- | The name of the definition.
createGroupResponse_name :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_name = Lens.lens (\CreateGroupResponse' {name} -> name) (\s@CreateGroupResponse' {} a -> s {name = a} :: CreateGroupResponse)

-- | The ARN of the definition.
createGroupResponse_arn :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_arn = Lens.lens (\CreateGroupResponse' {arn} -> arn) (\s@CreateGroupResponse' {} a -> s {arn = a} :: CreateGroupResponse)

-- | The ID of the latest version associated with the definition.
createGroupResponse_latestVersion :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_latestVersion = Lens.lens (\CreateGroupResponse' {latestVersion} -> latestVersion) (\s@CreateGroupResponse' {} a -> s {latestVersion = a} :: CreateGroupResponse)

-- | The ID of the definition.
createGroupResponse_id :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_id = Lens.lens (\CreateGroupResponse' {id} -> id) (\s@CreateGroupResponse' {} a -> s {id = a} :: CreateGroupResponse)

-- | The time, in milliseconds since the epoch, when the definition was
-- created.
createGroupResponse_creationTimestamp :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_creationTimestamp = Lens.lens (\CreateGroupResponse' {creationTimestamp} -> creationTimestamp) (\s@CreateGroupResponse' {} a -> s {creationTimestamp = a} :: CreateGroupResponse)

-- | The ARN of the latest version associated with the definition.
createGroupResponse_latestVersionArn :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_latestVersionArn = Lens.lens (\CreateGroupResponse' {latestVersionArn} -> latestVersionArn) (\s@CreateGroupResponse' {} a -> s {latestVersionArn = a} :: CreateGroupResponse)

-- | The response's http status code.
createGroupResponse_httpStatus :: Lens.Lens' CreateGroupResponse Prelude.Int
createGroupResponse_httpStatus = Lens.lens (\CreateGroupResponse' {httpStatus} -> httpStatus) (\s@CreateGroupResponse' {} a -> s {httpStatus = a} :: CreateGroupResponse)

instance Prelude.NFData CreateGroupResponse where
  rnf CreateGroupResponse' {..} =
    Prelude.rnf lastUpdatedTimestamp
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf latestVersion
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf creationTimestamp
      `Prelude.seq` Prelude.rnf latestVersionArn
      `Prelude.seq` Prelude.rnf httpStatus
