+++
date = '2026-07-17T10:33:06+08:00'
title = 'Authentication Methods'
categories = ['阅读']
tags = []
+++

[会话认证与令牌认证：你应该选择哪一种？](https://www.authgear.com/post/session-vs-token-authentication/)

Session Authentication 和 Token Authentication 经常被拿来比较，但文章想表达的是：**它们并不是谁取代谁，而是在不同架构下管理登录状态的两种方案。** Session 将用户状态保存在服务器，由 Cookie 携带 Session ID；Token 则把认证凭据交给客户端保存，每次请求携带 Token，由服务端验证即可。两者的区别，本质上是 **状态保存在服务器还是客户端**。

文章进一步从扩展性、安全性、跨域支持、注销机制等方面比较两种方案的取舍。真正需要记住的是，**Session 更适合传统 Web 应用，Token 更适合 API、移动端和分布式系统**。选择的关键不是 Token 比 Session 更先进，而是谁更符合应用的架构和业务需求。

[什么是 OAuth 2.0？](https://auth0.com/intro-to-iam/what-is-oauth-2)

OAuth 2.0 容易被误解成一种登录协议，但它真正解决的是 **授权（Authorization）**，即用户如何在 **不暴露账号密码** 的前提下，允许第三方应用访问自己在其他服务中的资源。文章围绕这一核心展开，解释了 Resource Owner、Client、Authorization Server、Resource Server 等角色，以及 Authorization Code、Client Credentials 等常见授权流程，说明 Access Token 是如何在这些角色之间流转并承载授权结果的。

读完后最应该记住的是，**OAuth 2.0 关心的是“你能访问什么”，而不是“你是谁”**。身份认证只是很多 OAuth 流程的前置步骤，真正的目标是安全地委托访问权限，而不是让第三方应用代替用户保存账号和密码。

[什么是基于令牌的认证？](https://www.okta.com/en-gb/identity-101/what-is-token-based-authentication/)

Token-Based Authentication 真正改变的不是认证方式，而是**认证状态的管理方式**。文章把它与传统的 Session 认证进行对比：用户仍然需要先登录验证身份，但验证成功后，服务端不再保存会话，而是签发一个 Token，客户端之后只需携带 Token 即可访问资源，从而减轻服务器状态管理的负担，也更适合分布式系统和移动应用。

文章进一步介绍了 Token 的生命周期、不同类型的认证 Token，并以 JWT 为例说明现代 Token 的实现方式。不过真正需要记住的是，**Token 不是用来替代用户名和密码，而是用来替代后续反复验证用户名和密码的过程**；它解决的是无状态认证和跨服务身份传递的问题，而不是让系统变得天然更安全。

[JSON Web Tokens](https://auth0.com/docs/secure/tokens/json-web-tokens)

JWT 经常被当成一种“登录 Token”，但文章强调，它首先是一种**传递可信声明（Claims）的标准格式**。JWT 之所以适合认证、授权和信息交换，不是因为它体积小或容易传输，而是因为**数字签名让接收方无需回源即可验证数据是否被篡改**，因此能够在分布式系统中高效传递身份和权限信息。

文章还特别澄清了 JWT 的安全边界：**签名保证完整性，不保证保密性**。Auth0 默认使用的是签名（JWS）而不是加密（JWE），因此 Payload 中的数据仍然是可读的，不应该存放敏感信息；真正需要验证的是签名和 Claims，并通过 HTTPS、防止 Token 泄露等措施保障安全。读完后最值得记住的是，**JWT 的价值在于“可信”，而不是“保密”**。

[JWT 简介](https://www.jwt.io/introduction#difference-decoding-encoding-jwt)

JWT 最容易混淆的一点，是很多人把 **Encoding（编码）** 和 **Decoding（解码）** 当成了安全机制。文章专门澄清了这两个概念：编码只是将 Header、Payload 和 Signature 组织成 JWT 格式，解码也只是把 Header 和 Payload 还原出来，**任何人都可以完成这两件事**；真正保证 JWT 可信的是**数字签名的验证（Verification）**，而不是编码或解码本身。

读完后应该记住的是，**JWT 可以被任何人读取，但不能被任意篡改**。因此不要把敏感信息放进 Payload，也不要把“能解码 JWT”误解为“破解了 JWT”——JWT 的安全性来自签名校验，而不是 Base64URL 编码。

```text
Authorization: Bearer <token>
```

[Basic Authentication](https://www.twilio.com/docs/glossary/what-is-basic-authentication)

很多人把 Basic Authentication 理解成一种完整的认证方案，但它其实只是 **HTTP 请求携带用户名和密码的一种约定**。文章用最简单的方式拆解了整个过程：客户端将 `username:password` 进行 Base64 编码，放入 `Authorization: Basic` 请求头，服务器收到后解码并验证身份。

真正需要记住的是，**Basic Auth 本身几乎没有安全能力**。Base64 只是编码，不是加密，每个请求都会携带凭据，因此必须配合 HTTPS 使用。它适合简单场景或服务器之间的调用，而不是依赖它来提供安全保障。

[基础认证头生成器](https://www.debugbear.com/basic-auth-header-generator)

**HTTP Basic Authentication 最容易被误解的地方在于，很多人觉得它是一种认证机制，其实真正需要理解的是 Authorization Header 的生成过程。**

文章花了大部分篇幅解释 Basic Auth Header 是如何组成的：用户名和密码先拼接，再经过 Base64 编码，最终放入 Authorization 请求头中。浏览器之所以能够弹出用户名和密码输入框，也是因为服务器先返回 401 Unauthorized 和 WWW-Authenticate 发起认证挑战。文章借助一个在线生成工具，把这个原本容易被工具隐藏的过程展示出来。读完之后应该记住的是，Base64 只是编码格式，不提供任何安全性，Basic Auth 的安全性完全依赖 HTTPS。


```text
Authorization: Basic base64(username:password)
```

[API 认证](https://www.postman.com/api-platform/api-authentication/)

这篇文章围绕 API Authentication（API 身份认证） 展开。作者认为，API 身份认证的重点并不是介绍各种认证机制本身，而是帮助开发者理解不同认证方式各自解决什么问题、适用于什么场景，以及如何在安全性、易用性和扩展性之间做出选择。因此，文章围绕 HTTP Basic、API Key、JWT、OAuth 等主流认证方式，分析它们的工作原理、优缺点和适用场景，同时区分了 Authentication（身份认证）与 Authorization（权限授权）的职责，并进一步总结了 API 身份认证的最佳实践，例如始终使用 HTTPS、避免暴露凭据、合理管理 Token 生命周期以及遵循最小权限原则。