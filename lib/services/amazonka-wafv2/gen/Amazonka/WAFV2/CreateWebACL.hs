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
-- Module      : Amazonka.WAFV2.CreateWebACL
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a WebACL per the specifications provided.
--
-- A web ACL defines a collection of rules to use to inspect and control
-- web requests. Each rule has an action defined (allow, block, or count)
-- for requests that match the statement of the rule. In the web ACL, you
-- assign a default action to take (allow, block) for any request that does
-- not match any of the rules. The rules in a web ACL can be a combination
-- of the types Rule, RuleGroup, and managed rule group. You can associate
-- a web ACL with one or more Amazon Web Services resources to protect. The
-- resources can be an Amazon CloudFront distribution, an Amazon API
-- Gateway REST API, an Application Load Balancer, an AppSync GraphQL API,
-- or an Amazon Cognito user pool.
module Amazonka.WAFV2.CreateWebACL
  ( -- * Creating a Request
    CreateWebACL (..),
    newCreateWebACL,

    -- * Request Lenses
    createWebACL_tags,
    createWebACL_captchaConfig,
    createWebACL_rules,
    createWebACL_description,
    createWebACL_customResponseBodies,
    createWebACL_name,
    createWebACL_scope,
    createWebACL_defaultAction,
    createWebACL_visibilityConfig,

    -- * Destructuring the Response
    CreateWebACLResponse (..),
    newCreateWebACLResponse,

    -- * Response Lenses
    createWebACLResponse_summary,
    createWebACLResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WAFV2.Types

-- | /See:/ 'newCreateWebACL' smart constructor.
data CreateWebACL = CreateWebACL'
  { -- | An array of key:value pairs to associate with the resource.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | Specifies how WAF should handle @CAPTCHA@ evaluations for rules that
    -- don\'t have their own @CaptchaConfig@ settings. If you don\'t specify
    -- this, WAF uses its default settings for @CaptchaConfig@.
    captchaConfig :: Prelude.Maybe CaptchaConfig,
    -- | The Rule statements used to identify the web requests that you want to
    -- allow, block, or count. Each rule includes one top-level statement that
    -- WAF uses to identify matching web requests, and parameters that govern
    -- how WAF handles them.
    rules :: Prelude.Maybe [Rule],
    -- | A description of the web ACL that helps with identification.
    description :: Prelude.Maybe Prelude.Text,
    -- | A map of custom response keys and content bodies. When you create a rule
    -- with a block action, you can send a custom response to the web request.
    -- You define these for the web ACL, and then use them in the rules and
    -- default actions that you define in the web ACL.
    --
    -- For information about customizing web requests and responses, see
    -- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html Customizing web requests and responses in WAF>
    -- in the
    -- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html WAF Developer Guide>.
    --
    -- For information about the limits on count and size for custom request
    -- and response settings, see
    -- <https://docs.aws.amazon.com/waf/latest/developerguide/limits.html WAF quotas>
    -- in the
    -- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html WAF Developer Guide>.
    customResponseBodies :: Prelude.Maybe (Prelude.HashMap Prelude.Text CustomResponseBody),
    -- | The name of the web ACL. You cannot change the name of a web ACL after
    -- you create it.
    name :: Prelude.Text,
    -- | Specifies whether this is for an Amazon CloudFront distribution or for a
    -- regional application. A regional application can be an Application Load
    -- Balancer (ALB), an Amazon API Gateway REST API, an AppSync GraphQL API,
    -- or an Amazon Cognito user pool.
    --
    -- To work with CloudFront, you must also specify the Region US East (N.
    -- Virginia) as follows:
    --
    -- -   CLI - Specify the Region when you use the CloudFront scope:
    --     @--scope=CLOUDFRONT --region=us-east-1@.
    --
    -- -   API and SDKs - For all calls, use the Region endpoint us-east-1.
    scope :: Scope,
    -- | The action to perform if none of the @Rules@ contained in the @WebACL@
    -- match.
    defaultAction :: DefaultAction,
    -- | Defines and enables Amazon CloudWatch metrics and web request sample
    -- collection.
    visibilityConfig :: VisibilityConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWebACL' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createWebACL_tags' - An array of key:value pairs to associate with the resource.
--
-- 'captchaConfig', 'createWebACL_captchaConfig' - Specifies how WAF should handle @CAPTCHA@ evaluations for rules that
-- don\'t have their own @CaptchaConfig@ settings. If you don\'t specify
-- this, WAF uses its default settings for @CaptchaConfig@.
--
-- 'rules', 'createWebACL_rules' - The Rule statements used to identify the web requests that you want to
-- allow, block, or count. Each rule includes one top-level statement that
-- WAF uses to identify matching web requests, and parameters that govern
-- how WAF handles them.
--
-- 'description', 'createWebACL_description' - A description of the web ACL that helps with identification.
--
-- 'customResponseBodies', 'createWebACL_customResponseBodies' - A map of custom response keys and content bodies. When you create a rule
-- with a block action, you can send a custom response to the web request.
-- You define these for the web ACL, and then use them in the rules and
-- default actions that you define in the web ACL.
--
-- For information about customizing web requests and responses, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html Customizing web requests and responses in WAF>
-- in the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html WAF Developer Guide>.
--
-- For information about the limits on count and size for custom request
-- and response settings, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/limits.html WAF quotas>
-- in the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html WAF Developer Guide>.
--
-- 'name', 'createWebACL_name' - The name of the web ACL. You cannot change the name of a web ACL after
-- you create it.
--
-- 'scope', 'createWebACL_scope' - Specifies whether this is for an Amazon CloudFront distribution or for a
-- regional application. A regional application can be an Application Load
-- Balancer (ALB), an Amazon API Gateway REST API, an AppSync GraphQL API,
-- or an Amazon Cognito user pool.
--
-- To work with CloudFront, you must also specify the Region US East (N.
-- Virginia) as follows:
--
-- -   CLI - Specify the Region when you use the CloudFront scope:
--     @--scope=CLOUDFRONT --region=us-east-1@.
--
-- -   API and SDKs - For all calls, use the Region endpoint us-east-1.
--
-- 'defaultAction', 'createWebACL_defaultAction' - The action to perform if none of the @Rules@ contained in the @WebACL@
-- match.
--
-- 'visibilityConfig', 'createWebACL_visibilityConfig' - Defines and enables Amazon CloudWatch metrics and web request sample
-- collection.
newCreateWebACL ::
  -- | 'name'
  Prelude.Text ->
  -- | 'scope'
  Scope ->
  -- | 'defaultAction'
  DefaultAction ->
  -- | 'visibilityConfig'
  VisibilityConfig ->
  CreateWebACL
newCreateWebACL
  pName_
  pScope_
  pDefaultAction_
  pVisibilityConfig_ =
    CreateWebACL'
      { tags = Prelude.Nothing,
        captchaConfig = Prelude.Nothing,
        rules = Prelude.Nothing,
        description = Prelude.Nothing,
        customResponseBodies = Prelude.Nothing,
        name = pName_,
        scope = pScope_,
        defaultAction = pDefaultAction_,
        visibilityConfig = pVisibilityConfig_
      }

-- | An array of key:value pairs to associate with the resource.
createWebACL_tags :: Lens.Lens' CreateWebACL (Prelude.Maybe (Prelude.NonEmpty Tag))
createWebACL_tags = Lens.lens (\CreateWebACL' {tags} -> tags) (\s@CreateWebACL' {} a -> s {tags = a} :: CreateWebACL) Prelude.. Lens.mapping Lens.coerced

-- | Specifies how WAF should handle @CAPTCHA@ evaluations for rules that
-- don\'t have their own @CaptchaConfig@ settings. If you don\'t specify
-- this, WAF uses its default settings for @CaptchaConfig@.
createWebACL_captchaConfig :: Lens.Lens' CreateWebACL (Prelude.Maybe CaptchaConfig)
createWebACL_captchaConfig = Lens.lens (\CreateWebACL' {captchaConfig} -> captchaConfig) (\s@CreateWebACL' {} a -> s {captchaConfig = a} :: CreateWebACL)

-- | The Rule statements used to identify the web requests that you want to
-- allow, block, or count. Each rule includes one top-level statement that
-- WAF uses to identify matching web requests, and parameters that govern
-- how WAF handles them.
createWebACL_rules :: Lens.Lens' CreateWebACL (Prelude.Maybe [Rule])
createWebACL_rules = Lens.lens (\CreateWebACL' {rules} -> rules) (\s@CreateWebACL' {} a -> s {rules = a} :: CreateWebACL) Prelude.. Lens.mapping Lens.coerced

-- | A description of the web ACL that helps with identification.
createWebACL_description :: Lens.Lens' CreateWebACL (Prelude.Maybe Prelude.Text)
createWebACL_description = Lens.lens (\CreateWebACL' {description} -> description) (\s@CreateWebACL' {} a -> s {description = a} :: CreateWebACL)

-- | A map of custom response keys and content bodies. When you create a rule
-- with a block action, you can send a custom response to the web request.
-- You define these for the web ACL, and then use them in the rules and
-- default actions that you define in the web ACL.
--
-- For information about customizing web requests and responses, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html Customizing web requests and responses in WAF>
-- in the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html WAF Developer Guide>.
--
-- For information about the limits on count and size for custom request
-- and response settings, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/limits.html WAF quotas>
-- in the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html WAF Developer Guide>.
createWebACL_customResponseBodies :: Lens.Lens' CreateWebACL (Prelude.Maybe (Prelude.HashMap Prelude.Text CustomResponseBody))
createWebACL_customResponseBodies = Lens.lens (\CreateWebACL' {customResponseBodies} -> customResponseBodies) (\s@CreateWebACL' {} a -> s {customResponseBodies = a} :: CreateWebACL) Prelude.. Lens.mapping Lens.coerced

-- | The name of the web ACL. You cannot change the name of a web ACL after
-- you create it.
createWebACL_name :: Lens.Lens' CreateWebACL Prelude.Text
createWebACL_name = Lens.lens (\CreateWebACL' {name} -> name) (\s@CreateWebACL' {} a -> s {name = a} :: CreateWebACL)

-- | Specifies whether this is for an Amazon CloudFront distribution or for a
-- regional application. A regional application can be an Application Load
-- Balancer (ALB), an Amazon API Gateway REST API, an AppSync GraphQL API,
-- or an Amazon Cognito user pool.
--
-- To work with CloudFront, you must also specify the Region US East (N.
-- Virginia) as follows:
--
-- -   CLI - Specify the Region when you use the CloudFront scope:
--     @--scope=CLOUDFRONT --region=us-east-1@.
--
-- -   API and SDKs - For all calls, use the Region endpoint us-east-1.
createWebACL_scope :: Lens.Lens' CreateWebACL Scope
createWebACL_scope = Lens.lens (\CreateWebACL' {scope} -> scope) (\s@CreateWebACL' {} a -> s {scope = a} :: CreateWebACL)

-- | The action to perform if none of the @Rules@ contained in the @WebACL@
-- match.
createWebACL_defaultAction :: Lens.Lens' CreateWebACL DefaultAction
createWebACL_defaultAction = Lens.lens (\CreateWebACL' {defaultAction} -> defaultAction) (\s@CreateWebACL' {} a -> s {defaultAction = a} :: CreateWebACL)

-- | Defines and enables Amazon CloudWatch metrics and web request sample
-- collection.
createWebACL_visibilityConfig :: Lens.Lens' CreateWebACL VisibilityConfig
createWebACL_visibilityConfig = Lens.lens (\CreateWebACL' {visibilityConfig} -> visibilityConfig) (\s@CreateWebACL' {} a -> s {visibilityConfig = a} :: CreateWebACL)

instance Core.AWSRequest CreateWebACL where
  type AWSResponse CreateWebACL = CreateWebACLResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWebACLResponse'
            Prelude.<$> (x Core..?> "Summary")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWebACL where
  hashWithSalt _salt CreateWebACL' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` captchaConfig
      `Prelude.hashWithSalt` rules
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` customResponseBodies
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` scope
      `Prelude.hashWithSalt` defaultAction
      `Prelude.hashWithSalt` visibilityConfig

instance Prelude.NFData CreateWebACL where
  rnf CreateWebACL' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf captchaConfig
      `Prelude.seq` Prelude.rnf rules
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf customResponseBodies
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf scope
      `Prelude.seq` Prelude.rnf defaultAction
      `Prelude.seq` Prelude.rnf visibilityConfig

instance Core.ToHeaders CreateWebACL where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSWAF_20190729.CreateWebACL" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWebACL where
  toJSON CreateWebACL' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("CaptchaConfig" Core..=) Prelude.<$> captchaConfig,
            ("Rules" Core..=) Prelude.<$> rules,
            ("Description" Core..=) Prelude.<$> description,
            ("CustomResponseBodies" Core..=)
              Prelude.<$> customResponseBodies,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Scope" Core..= scope),
            Prelude.Just ("DefaultAction" Core..= defaultAction),
            Prelude.Just
              ("VisibilityConfig" Core..= visibilityConfig)
          ]
      )

instance Core.ToPath CreateWebACL where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateWebACL where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWebACLResponse' smart constructor.
data CreateWebACLResponse = CreateWebACLResponse'
  { -- | High-level information about a WebACL, returned by operations like
    -- create and list. This provides information like the ID, that you can use
    -- to retrieve and manage a @WebACL@, and the ARN, that you provide to
    -- operations like AssociateWebACL.
    summary :: Prelude.Maybe WebACLSummary,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWebACLResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'summary', 'createWebACLResponse_summary' - High-level information about a WebACL, returned by operations like
-- create and list. This provides information like the ID, that you can use
-- to retrieve and manage a @WebACL@, and the ARN, that you provide to
-- operations like AssociateWebACL.
--
-- 'httpStatus', 'createWebACLResponse_httpStatus' - The response's http status code.
newCreateWebACLResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWebACLResponse
newCreateWebACLResponse pHttpStatus_ =
  CreateWebACLResponse'
    { summary = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | High-level information about a WebACL, returned by operations like
-- create and list. This provides information like the ID, that you can use
-- to retrieve and manage a @WebACL@, and the ARN, that you provide to
-- operations like AssociateWebACL.
createWebACLResponse_summary :: Lens.Lens' CreateWebACLResponse (Prelude.Maybe WebACLSummary)
createWebACLResponse_summary = Lens.lens (\CreateWebACLResponse' {summary} -> summary) (\s@CreateWebACLResponse' {} a -> s {summary = a} :: CreateWebACLResponse)

-- | The response's http status code.
createWebACLResponse_httpStatus :: Lens.Lens' CreateWebACLResponse Prelude.Int
createWebACLResponse_httpStatus = Lens.lens (\CreateWebACLResponse' {httpStatus} -> httpStatus) (\s@CreateWebACLResponse' {} a -> s {httpStatus = a} :: CreateWebACLResponse)

instance Prelude.NFData CreateWebACLResponse where
  rnf CreateWebACLResponse' {..} =
    Prelude.rnf summary
      `Prelude.seq` Prelude.rnf httpStatus
