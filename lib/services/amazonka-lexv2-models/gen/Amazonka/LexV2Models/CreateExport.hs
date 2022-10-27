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
-- Module      : Amazonka.LexV2Models.CreateExport
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a zip archive containing the contents of a bot or a bot locale.
-- The archive contains a directory structure that contains JSON files that
-- define the bot.
--
-- You can create an archive that contains the complete definition of a
-- bot, or you can specify that the archive contain only the definition of
-- a single bot locale.
--
-- For more information about exporting bots, and about the structure of
-- the export archive, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html Importing and exporting bots>
module Amazonka.LexV2Models.CreateExport
  ( -- * Creating a Request
    CreateExport (..),
    newCreateExport,

    -- * Request Lenses
    createExport_filePassword,
    createExport_resourceSpecification,
    createExport_fileFormat,

    -- * Destructuring the Response
    CreateExportResponse (..),
    newCreateExportResponse,

    -- * Response Lenses
    createExportResponse_creationDateTime,
    createExportResponse_resourceSpecification,
    createExportResponse_exportStatus,
    createExportResponse_exportId,
    createExportResponse_fileFormat,
    createExportResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexV2Models.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateExport' smart constructor.
data CreateExport = CreateExport'
  { -- | An password to use to encrypt the exported archive. Using a password is
    -- optional, but you should encrypt the archive to protect the data in
    -- transit between Amazon Lex and your local computer.
    filePassword :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Specifies the type of resource to export, either a bot or a bot locale.
    -- You can only specify one type of resource to export.
    resourceSpecification :: ExportResourceSpecification,
    -- | The file format of the bot or bot locale definition files.
    fileFormat :: ImportExportFileFormat
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateExport' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filePassword', 'createExport_filePassword' - An password to use to encrypt the exported archive. Using a password is
-- optional, but you should encrypt the archive to protect the data in
-- transit between Amazon Lex and your local computer.
--
-- 'resourceSpecification', 'createExport_resourceSpecification' - Specifies the type of resource to export, either a bot or a bot locale.
-- You can only specify one type of resource to export.
--
-- 'fileFormat', 'createExport_fileFormat' - The file format of the bot or bot locale definition files.
newCreateExport ::
  -- | 'resourceSpecification'
  ExportResourceSpecification ->
  -- | 'fileFormat'
  ImportExportFileFormat ->
  CreateExport
newCreateExport pResourceSpecification_ pFileFormat_ =
  CreateExport'
    { filePassword = Prelude.Nothing,
      resourceSpecification = pResourceSpecification_,
      fileFormat = pFileFormat_
    }

-- | An password to use to encrypt the exported archive. Using a password is
-- optional, but you should encrypt the archive to protect the data in
-- transit between Amazon Lex and your local computer.
createExport_filePassword :: Lens.Lens' CreateExport (Prelude.Maybe Prelude.Text)
createExport_filePassword = Lens.lens (\CreateExport' {filePassword} -> filePassword) (\s@CreateExport' {} a -> s {filePassword = a} :: CreateExport) Prelude.. Lens.mapping Core._Sensitive

-- | Specifies the type of resource to export, either a bot or a bot locale.
-- You can only specify one type of resource to export.
createExport_resourceSpecification :: Lens.Lens' CreateExport ExportResourceSpecification
createExport_resourceSpecification = Lens.lens (\CreateExport' {resourceSpecification} -> resourceSpecification) (\s@CreateExport' {} a -> s {resourceSpecification = a} :: CreateExport)

-- | The file format of the bot or bot locale definition files.
createExport_fileFormat :: Lens.Lens' CreateExport ImportExportFileFormat
createExport_fileFormat = Lens.lens (\CreateExport' {fileFormat} -> fileFormat) (\s@CreateExport' {} a -> s {fileFormat = a} :: CreateExport)

instance Core.AWSRequest CreateExport where
  type AWSResponse CreateExport = CreateExportResponse
  service _ = defaultService
  request srv = Request.putJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateExportResponse'
            Prelude.<$> (x Core..?> "creationDateTime")
            Prelude.<*> (x Core..?> "resourceSpecification")
            Prelude.<*> (x Core..?> "exportStatus")
            Prelude.<*> (x Core..?> "exportId")
            Prelude.<*> (x Core..?> "fileFormat")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateExport where
  hashWithSalt _salt CreateExport' {..} =
    _salt `Prelude.hashWithSalt` filePassword
      `Prelude.hashWithSalt` resourceSpecification
      `Prelude.hashWithSalt` fileFormat

instance Prelude.NFData CreateExport where
  rnf CreateExport' {..} =
    Prelude.rnf filePassword
      `Prelude.seq` Prelude.rnf resourceSpecification
      `Prelude.seq` Prelude.rnf fileFormat

instance Core.ToHeaders CreateExport where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateExport where
  toJSON CreateExport' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("filePassword" Core..=) Prelude.<$> filePassword,
            Prelude.Just
              ( "resourceSpecification"
                  Core..= resourceSpecification
              ),
            Prelude.Just ("fileFormat" Core..= fileFormat)
          ]
      )

instance Core.ToPath CreateExport where
  toPath = Prelude.const "/exports/"

instance Core.ToQuery CreateExport where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateExportResponse' smart constructor.
data CreateExportResponse = CreateExportResponse'
  { -- | The date and time that the request to export a bot was created.
    creationDateTime :: Prelude.Maybe Core.POSIX,
    -- | A description of the type of resource that was exported, either a bot or
    -- a bot locale.
    resourceSpecification :: Prelude.Maybe ExportResourceSpecification,
    -- | The status of the export. When the status is @Completed@, you can use
    -- the
    -- <https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeExport.html DescribeExport>
    -- operation to get the pre-signed S3 URL link to your exported bot or bot
    -- locale.
    exportStatus :: Prelude.Maybe ExportStatus,
    -- | An identifier for a specific request to create an export.
    exportId :: Prelude.Maybe Prelude.Text,
    -- | The file format used for the bot or bot locale definition files.
    fileFormat :: Prelude.Maybe ImportExportFileFormat,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateExportResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationDateTime', 'createExportResponse_creationDateTime' - The date and time that the request to export a bot was created.
--
-- 'resourceSpecification', 'createExportResponse_resourceSpecification' - A description of the type of resource that was exported, either a bot or
-- a bot locale.
--
-- 'exportStatus', 'createExportResponse_exportStatus' - The status of the export. When the status is @Completed@, you can use
-- the
-- <https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeExport.html DescribeExport>
-- operation to get the pre-signed S3 URL link to your exported bot or bot
-- locale.
--
-- 'exportId', 'createExportResponse_exportId' - An identifier for a specific request to create an export.
--
-- 'fileFormat', 'createExportResponse_fileFormat' - The file format used for the bot or bot locale definition files.
--
-- 'httpStatus', 'createExportResponse_httpStatus' - The response's http status code.
newCreateExportResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateExportResponse
newCreateExportResponse pHttpStatus_ =
  CreateExportResponse'
    { creationDateTime =
        Prelude.Nothing,
      resourceSpecification = Prelude.Nothing,
      exportStatus = Prelude.Nothing,
      exportId = Prelude.Nothing,
      fileFormat = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The date and time that the request to export a bot was created.
createExportResponse_creationDateTime :: Lens.Lens' CreateExportResponse (Prelude.Maybe Prelude.UTCTime)
createExportResponse_creationDateTime = Lens.lens (\CreateExportResponse' {creationDateTime} -> creationDateTime) (\s@CreateExportResponse' {} a -> s {creationDateTime = a} :: CreateExportResponse) Prelude.. Lens.mapping Core._Time

-- | A description of the type of resource that was exported, either a bot or
-- a bot locale.
createExportResponse_resourceSpecification :: Lens.Lens' CreateExportResponse (Prelude.Maybe ExportResourceSpecification)
createExportResponse_resourceSpecification = Lens.lens (\CreateExportResponse' {resourceSpecification} -> resourceSpecification) (\s@CreateExportResponse' {} a -> s {resourceSpecification = a} :: CreateExportResponse)

-- | The status of the export. When the status is @Completed@, you can use
-- the
-- <https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeExport.html DescribeExport>
-- operation to get the pre-signed S3 URL link to your exported bot or bot
-- locale.
createExportResponse_exportStatus :: Lens.Lens' CreateExportResponse (Prelude.Maybe ExportStatus)
createExportResponse_exportStatus = Lens.lens (\CreateExportResponse' {exportStatus} -> exportStatus) (\s@CreateExportResponse' {} a -> s {exportStatus = a} :: CreateExportResponse)

-- | An identifier for a specific request to create an export.
createExportResponse_exportId :: Lens.Lens' CreateExportResponse (Prelude.Maybe Prelude.Text)
createExportResponse_exportId = Lens.lens (\CreateExportResponse' {exportId} -> exportId) (\s@CreateExportResponse' {} a -> s {exportId = a} :: CreateExportResponse)

-- | The file format used for the bot or bot locale definition files.
createExportResponse_fileFormat :: Lens.Lens' CreateExportResponse (Prelude.Maybe ImportExportFileFormat)
createExportResponse_fileFormat = Lens.lens (\CreateExportResponse' {fileFormat} -> fileFormat) (\s@CreateExportResponse' {} a -> s {fileFormat = a} :: CreateExportResponse)

-- | The response's http status code.
createExportResponse_httpStatus :: Lens.Lens' CreateExportResponse Prelude.Int
createExportResponse_httpStatus = Lens.lens (\CreateExportResponse' {httpStatus} -> httpStatus) (\s@CreateExportResponse' {} a -> s {httpStatus = a} :: CreateExportResponse)

instance Prelude.NFData CreateExportResponse where
  rnf CreateExportResponse' {..} =
    Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf resourceSpecification
      `Prelude.seq` Prelude.rnf exportStatus
      `Prelude.seq` Prelude.rnf exportId
      `Prelude.seq` Prelude.rnf fileFormat
      `Prelude.seq` Prelude.rnf httpStatus
