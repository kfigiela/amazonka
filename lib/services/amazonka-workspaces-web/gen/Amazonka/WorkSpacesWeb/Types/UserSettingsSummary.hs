{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.WorkSpacesWeb.Types.UserSettingsSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkSpacesWeb.Types.UserSettingsSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WorkSpacesWeb.Types.EnabledType

-- | The summary of user settings.
--
-- /See:/ 'newUserSettingsSummary' smart constructor.
data UserSettingsSummary = UserSettingsSummary'
  { -- | Specifies whether the user can print to the local device.
    printAllowed :: Prelude.Maybe EnabledType,
    -- | The amount of time that users can be idle (inactive) before they are
    -- disconnected from their streaming session and the disconnect timeout
    -- interval begins.
    idleDisconnectTimeoutInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The amount of time that a streaming session remains active after users
    -- disconnect.
    disconnectTimeoutInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | Specifies whether the user can copy text from the streaming session to
    -- the local device.
    copyAllowed :: Prelude.Maybe EnabledType,
    -- | The ARN of the user settings.
    userSettingsArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the user can download files from the streaming session
    -- to the local device.
    downloadAllowed :: Prelude.Maybe EnabledType,
    -- | Specifies whether the user can paste text from the local device to the
    -- streaming session.
    pasteAllowed :: Prelude.Maybe EnabledType,
    -- | Specifies whether the user can upload files from the local device to the
    -- streaming session.
    uploadAllowed :: Prelude.Maybe EnabledType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UserSettingsSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'printAllowed', 'userSettingsSummary_printAllowed' - Specifies whether the user can print to the local device.
--
-- 'idleDisconnectTimeoutInMinutes', 'userSettingsSummary_idleDisconnectTimeoutInMinutes' - The amount of time that users can be idle (inactive) before they are
-- disconnected from their streaming session and the disconnect timeout
-- interval begins.
--
-- 'disconnectTimeoutInMinutes', 'userSettingsSummary_disconnectTimeoutInMinutes' - The amount of time that a streaming session remains active after users
-- disconnect.
--
-- 'copyAllowed', 'userSettingsSummary_copyAllowed' - Specifies whether the user can copy text from the streaming session to
-- the local device.
--
-- 'userSettingsArn', 'userSettingsSummary_userSettingsArn' - The ARN of the user settings.
--
-- 'downloadAllowed', 'userSettingsSummary_downloadAllowed' - Specifies whether the user can download files from the streaming session
-- to the local device.
--
-- 'pasteAllowed', 'userSettingsSummary_pasteAllowed' - Specifies whether the user can paste text from the local device to the
-- streaming session.
--
-- 'uploadAllowed', 'userSettingsSummary_uploadAllowed' - Specifies whether the user can upload files from the local device to the
-- streaming session.
newUserSettingsSummary ::
  UserSettingsSummary
newUserSettingsSummary =
  UserSettingsSummary'
    { printAllowed =
        Prelude.Nothing,
      idleDisconnectTimeoutInMinutes = Prelude.Nothing,
      disconnectTimeoutInMinutes = Prelude.Nothing,
      copyAllowed = Prelude.Nothing,
      userSettingsArn = Prelude.Nothing,
      downloadAllowed = Prelude.Nothing,
      pasteAllowed = Prelude.Nothing,
      uploadAllowed = Prelude.Nothing
    }

-- | Specifies whether the user can print to the local device.
userSettingsSummary_printAllowed :: Lens.Lens' UserSettingsSummary (Prelude.Maybe EnabledType)
userSettingsSummary_printAllowed = Lens.lens (\UserSettingsSummary' {printAllowed} -> printAllowed) (\s@UserSettingsSummary' {} a -> s {printAllowed = a} :: UserSettingsSummary)

-- | The amount of time that users can be idle (inactive) before they are
-- disconnected from their streaming session and the disconnect timeout
-- interval begins.
userSettingsSummary_idleDisconnectTimeoutInMinutes :: Lens.Lens' UserSettingsSummary (Prelude.Maybe Prelude.Natural)
userSettingsSummary_idleDisconnectTimeoutInMinutes = Lens.lens (\UserSettingsSummary' {idleDisconnectTimeoutInMinutes} -> idleDisconnectTimeoutInMinutes) (\s@UserSettingsSummary' {} a -> s {idleDisconnectTimeoutInMinutes = a} :: UserSettingsSummary)

-- | The amount of time that a streaming session remains active after users
-- disconnect.
userSettingsSummary_disconnectTimeoutInMinutes :: Lens.Lens' UserSettingsSummary (Prelude.Maybe Prelude.Natural)
userSettingsSummary_disconnectTimeoutInMinutes = Lens.lens (\UserSettingsSummary' {disconnectTimeoutInMinutes} -> disconnectTimeoutInMinutes) (\s@UserSettingsSummary' {} a -> s {disconnectTimeoutInMinutes = a} :: UserSettingsSummary)

-- | Specifies whether the user can copy text from the streaming session to
-- the local device.
userSettingsSummary_copyAllowed :: Lens.Lens' UserSettingsSummary (Prelude.Maybe EnabledType)
userSettingsSummary_copyAllowed = Lens.lens (\UserSettingsSummary' {copyAllowed} -> copyAllowed) (\s@UserSettingsSummary' {} a -> s {copyAllowed = a} :: UserSettingsSummary)

-- | The ARN of the user settings.
userSettingsSummary_userSettingsArn :: Lens.Lens' UserSettingsSummary (Prelude.Maybe Prelude.Text)
userSettingsSummary_userSettingsArn = Lens.lens (\UserSettingsSummary' {userSettingsArn} -> userSettingsArn) (\s@UserSettingsSummary' {} a -> s {userSettingsArn = a} :: UserSettingsSummary)

-- | Specifies whether the user can download files from the streaming session
-- to the local device.
userSettingsSummary_downloadAllowed :: Lens.Lens' UserSettingsSummary (Prelude.Maybe EnabledType)
userSettingsSummary_downloadAllowed = Lens.lens (\UserSettingsSummary' {downloadAllowed} -> downloadAllowed) (\s@UserSettingsSummary' {} a -> s {downloadAllowed = a} :: UserSettingsSummary)

-- | Specifies whether the user can paste text from the local device to the
-- streaming session.
userSettingsSummary_pasteAllowed :: Lens.Lens' UserSettingsSummary (Prelude.Maybe EnabledType)
userSettingsSummary_pasteAllowed = Lens.lens (\UserSettingsSummary' {pasteAllowed} -> pasteAllowed) (\s@UserSettingsSummary' {} a -> s {pasteAllowed = a} :: UserSettingsSummary)

-- | Specifies whether the user can upload files from the local device to the
-- streaming session.
userSettingsSummary_uploadAllowed :: Lens.Lens' UserSettingsSummary (Prelude.Maybe EnabledType)
userSettingsSummary_uploadAllowed = Lens.lens (\UserSettingsSummary' {uploadAllowed} -> uploadAllowed) (\s@UserSettingsSummary' {} a -> s {uploadAllowed = a} :: UserSettingsSummary)

instance Core.FromJSON UserSettingsSummary where
  parseJSON =
    Core.withObject
      "UserSettingsSummary"
      ( \x ->
          UserSettingsSummary'
            Prelude.<$> (x Core..:? "printAllowed")
            Prelude.<*> (x Core..:? "idleDisconnectTimeoutInMinutes")
            Prelude.<*> (x Core..:? "disconnectTimeoutInMinutes")
            Prelude.<*> (x Core..:? "copyAllowed")
            Prelude.<*> (x Core..:? "userSettingsArn")
            Prelude.<*> (x Core..:? "downloadAllowed")
            Prelude.<*> (x Core..:? "pasteAllowed")
            Prelude.<*> (x Core..:? "uploadAllowed")
      )

instance Prelude.Hashable UserSettingsSummary where
  hashWithSalt _salt UserSettingsSummary' {..} =
    _salt `Prelude.hashWithSalt` printAllowed
      `Prelude.hashWithSalt` idleDisconnectTimeoutInMinutes
      `Prelude.hashWithSalt` disconnectTimeoutInMinutes
      `Prelude.hashWithSalt` copyAllowed
      `Prelude.hashWithSalt` userSettingsArn
      `Prelude.hashWithSalt` downloadAllowed
      `Prelude.hashWithSalt` pasteAllowed
      `Prelude.hashWithSalt` uploadAllowed

instance Prelude.NFData UserSettingsSummary where
  rnf UserSettingsSummary' {..} =
    Prelude.rnf printAllowed
      `Prelude.seq` Prelude.rnf idleDisconnectTimeoutInMinutes
      `Prelude.seq` Prelude.rnf disconnectTimeoutInMinutes
      `Prelude.seq` Prelude.rnf copyAllowed
      `Prelude.seq` Prelude.rnf userSettingsArn
      `Prelude.seq` Prelude.rnf downloadAllowed
      `Prelude.seq` Prelude.rnf pasteAllowed
      `Prelude.seq` Prelude.rnf uploadAllowed
