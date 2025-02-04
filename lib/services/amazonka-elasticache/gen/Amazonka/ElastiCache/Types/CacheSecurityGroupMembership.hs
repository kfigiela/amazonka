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
-- Module      : Amazonka.ElastiCache.Types.CacheSecurityGroupMembership
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElastiCache.Types.CacheSecurityGroupMembership where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a cluster\'s status within a particular cache security group.
--
-- /See:/ 'newCacheSecurityGroupMembership' smart constructor.
data CacheSecurityGroupMembership = CacheSecurityGroupMembership'
  { -- | The membership status in the cache security group. The status changes
    -- when a cache security group is modified, or when the cache security
    -- groups assigned to a cluster are modified.
    status :: Prelude.Maybe Prelude.Text,
    -- | The name of the cache security group.
    cacheSecurityGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CacheSecurityGroupMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'cacheSecurityGroupMembership_status' - The membership status in the cache security group. The status changes
-- when a cache security group is modified, or when the cache security
-- groups assigned to a cluster are modified.
--
-- 'cacheSecurityGroupName', 'cacheSecurityGroupMembership_cacheSecurityGroupName' - The name of the cache security group.
newCacheSecurityGroupMembership ::
  CacheSecurityGroupMembership
newCacheSecurityGroupMembership =
  CacheSecurityGroupMembership'
    { status =
        Prelude.Nothing,
      cacheSecurityGroupName = Prelude.Nothing
    }

-- | The membership status in the cache security group. The status changes
-- when a cache security group is modified, or when the cache security
-- groups assigned to a cluster are modified.
cacheSecurityGroupMembership_status :: Lens.Lens' CacheSecurityGroupMembership (Prelude.Maybe Prelude.Text)
cacheSecurityGroupMembership_status = Lens.lens (\CacheSecurityGroupMembership' {status} -> status) (\s@CacheSecurityGroupMembership' {} a -> s {status = a} :: CacheSecurityGroupMembership)

-- | The name of the cache security group.
cacheSecurityGroupMembership_cacheSecurityGroupName :: Lens.Lens' CacheSecurityGroupMembership (Prelude.Maybe Prelude.Text)
cacheSecurityGroupMembership_cacheSecurityGroupName = Lens.lens (\CacheSecurityGroupMembership' {cacheSecurityGroupName} -> cacheSecurityGroupName) (\s@CacheSecurityGroupMembership' {} a -> s {cacheSecurityGroupName = a} :: CacheSecurityGroupMembership)

instance Core.FromXML CacheSecurityGroupMembership where
  parseXML x =
    CacheSecurityGroupMembership'
      Prelude.<$> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "CacheSecurityGroupName")

instance
  Prelude.Hashable
    CacheSecurityGroupMembership
  where
  hashWithSalt _salt CacheSecurityGroupMembership' {..} =
    _salt `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` cacheSecurityGroupName

instance Prelude.NFData CacheSecurityGroupMembership where
  rnf CacheSecurityGroupMembership' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf cacheSecurityGroupName
