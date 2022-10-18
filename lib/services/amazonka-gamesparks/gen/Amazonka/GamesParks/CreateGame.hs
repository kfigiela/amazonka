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
-- Module      : Amazonka.GamesParks.CreateGame
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new game with an empty configuration. After creating your
-- game, you can update the configuration using @UpdateGameConfiguration@
-- or @ImportGameConfiguration@.
module Amazonka.GamesParks.CreateGame
  ( -- * Creating a Request
    CreateGame (..),
    newCreateGame,

    -- * Request Lenses
    createGame_tags,
    createGame_clientToken,
    createGame_description,
    createGame_gameName,

    -- * Destructuring the Response
    CreateGameResponse (..),
    newCreateGameResponse,

    -- * Response Lenses
    createGameResponse_game,
    createGameResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GamesParks.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateGame' smart constructor.
data CreateGame = CreateGame'
  { -- | The list of tags to apply to the game.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A client-defined token. With an active client token in the request, this
    -- action is idempotent.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The description of the game.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the game.
    gameName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGame' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createGame_tags' - The list of tags to apply to the game.
--
-- 'clientToken', 'createGame_clientToken' - A client-defined token. With an active client token in the request, this
-- action is idempotent.
--
-- 'description', 'createGame_description' - The description of the game.
--
-- 'gameName', 'createGame_gameName' - The name of the game.
newCreateGame ::
  -- | 'gameName'
  Prelude.Text ->
  CreateGame
newCreateGame pGameName_ =
  CreateGame'
    { tags = Prelude.Nothing,
      clientToken = Prelude.Nothing,
      description = Prelude.Nothing,
      gameName = pGameName_
    }

-- | The list of tags to apply to the game.
createGame_tags :: Lens.Lens' CreateGame (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createGame_tags = Lens.lens (\CreateGame' {tags} -> tags) (\s@CreateGame' {} a -> s {tags = a} :: CreateGame) Prelude.. Lens.mapping Lens.coerced

-- | A client-defined token. With an active client token in the request, this
-- action is idempotent.
createGame_clientToken :: Lens.Lens' CreateGame (Prelude.Maybe Prelude.Text)
createGame_clientToken = Lens.lens (\CreateGame' {clientToken} -> clientToken) (\s@CreateGame' {} a -> s {clientToken = a} :: CreateGame)

-- | The description of the game.
createGame_description :: Lens.Lens' CreateGame (Prelude.Maybe Prelude.Text)
createGame_description = Lens.lens (\CreateGame' {description} -> description) (\s@CreateGame' {} a -> s {description = a} :: CreateGame)

-- | The name of the game.
createGame_gameName :: Lens.Lens' CreateGame Prelude.Text
createGame_gameName = Lens.lens (\CreateGame' {gameName} -> gameName) (\s@CreateGame' {} a -> s {gameName = a} :: CreateGame)

instance Core.AWSRequest CreateGame where
  type AWSResponse CreateGame = CreateGameResponse
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGameResponse'
            Prelude.<$> (x Core..?> "Game")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.AWSService CreateGame where
  service _proxy = defaultService

instance Prelude.Hashable CreateGame where
  hashWithSalt _salt CreateGame' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` gameName

instance Prelude.NFData CreateGame where
  rnf CreateGame' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf gameName

instance Core.ToHeaders CreateGame where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateGame where
  toJSON CreateGame' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ClientToken" Core..=) Prelude.<$> clientToken,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("GameName" Core..= gameName)
          ]
      )

instance Core.ToPath CreateGame where
  toPath = Prelude.const "/game"

instance Core.ToQuery CreateGame where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateGameResponse' smart constructor.
data CreateGameResponse = CreateGameResponse'
  { -- | Details about the game that was created.
    game :: Prelude.Maybe GameDetails,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGameResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'game', 'createGameResponse_game' - Details about the game that was created.
--
-- 'httpStatus', 'createGameResponse_httpStatus' - The response's http status code.
newCreateGameResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateGameResponse
newCreateGameResponse pHttpStatus_ =
  CreateGameResponse'
    { game = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Details about the game that was created.
createGameResponse_game :: Lens.Lens' CreateGameResponse (Prelude.Maybe GameDetails)
createGameResponse_game = Lens.lens (\CreateGameResponse' {game} -> game) (\s@CreateGameResponse' {} a -> s {game = a} :: CreateGameResponse)

-- | The response's http status code.
createGameResponse_httpStatus :: Lens.Lens' CreateGameResponse Prelude.Int
createGameResponse_httpStatus = Lens.lens (\CreateGameResponse' {httpStatus} -> httpStatus) (\s@CreateGameResponse' {} a -> s {httpStatus = a} :: CreateGameResponse)

instance Prelude.NFData CreateGameResponse where
  rnf CreateGameResponse' {..} =
    Prelude.rnf game
      `Prelude.seq` Prelude.rnf httpStatus
