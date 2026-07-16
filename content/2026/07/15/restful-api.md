+++
date = '2026-07-15T17:18:01+08:00'
title = 'Restful Api'
categories = ['阅读']
tags = []
+++

[API 错误处理的最佳实践](https://blog.postman.com/best-practices-for-api-error-handling/)

这篇文章认为，API 错误处理的目标不仅是告诉客户端“请求失败了”，更重要的是帮助客户端理解问题并采取正确的处理方式。作者围绕这一观点，从服务端和客户端两个角度总结错误处理的设计原则，重点讨论如何设计一致且易于理解的错误响应，包括 HTTP 状态码的使用、统一的错误响应结构、错误信息的表达、日志与可观测性等内容，并进一步介绍这些原则在 REST、GraphQL 和 gRPC 中的具体实践。

```json
{
  "status": "error", // This can be ‘error’ or ‘success’
  "statusCode": 404,
  "error": {
    "code": "RESOURCE_NOT_FOUND",
    "message": "The requested resource was not found.",
    "details": "The user with the ID '12345' does not exist in our records.",
    "timestamp": "2023-12-08T12:30:45Z",
    "path": "/api/v1/users/12345",
    "suggestion": "Please check if the user ID is correct or refer to our documentation at https://api.example.com/docs/errors#RESOURCE_NOT_FOUND for more information."
  },
  "requestId": "a1b2c3d4-e5f6-7890-g1h2-i3j4k5l6m7n8",
  "documentation_url": "https://api.example.com/docs/errors"
}
```

[防抖](https://developer.mozilla.org/zh-CN/docs/Glossary/Debounce) 和 [节流](https://developer.mozilla.org/zh-CN/docs/Glossary/Throttle) 的定义。

[理解 API 中的幂零性](https://blog.dreamfactory.com/what-is-idempotency)

这篇文章围绕 API 幂等性（Idempotency）展开，从幂等性的基本概念和重要性出发，介绍网络重试、重复请求等场景下幂等性如何保证系统状态的一致性。文章重点分析 HTTP 方法的幂等性与安全性（Safety），逐一说明 GET、PUT、DELETE、POST、PATCH 等方法的幂等特性及区别，并结合请求重试、数据一致性和分布式系统中的典型案例，说明幂等性在 API 设计中的作用和实现思路。

[解锁 API 分页的力量：最佳实践与策略](https://dev.to/pragativerma18/unlocking-the-power-of-api-pagination-best-practices-and-strategies-4b49)

这篇文章围绕 API 分页（Pagination）的设计与最佳实践展开，首先介绍分页的作用及其对性能、资源利用和用户体验的影响，随后对比 Offset/Limit、Page-based、Cursor、Keyset、Time-based 等常见分页策略的实现方式、优缺点及适用场景。

[关于 API 分页你需要知道的一切](https://nordicapis.com/everything-you-need-to-know-about-api-pagination/)

这篇文章围绕 REST API 分页（Pagination）展开，从分页的作用和性能优化需求出发，介绍 Offset、Keyset 和 Seek（Cursor）等常见分页方案，对比它们的实现方式、优缺点及适用场景。随后结合 REST API 示例说明分页接口的设计，包括分页参数、导航链接（HATEOAS）、响应结构以及在实际 API 中的实现方式，并总结不同分页策略的设计考量和最佳实践。

[如何在 REST API 中实现过滤和排序](https://oneuptime.com/blog/post/2026-01-26-rest-api-filtering-sorting/view)

这篇文章围绕 REST API 中过滤（Filtering）和排序（Sorting）的设计与实现展开，从查询参数的设计模式出发，介绍等值过滤、范围查询、模糊匹配、列表过滤和排序等常见查询方式，并结合 Node.js 和 Express 示例实现可复用的过滤解析器和排序逻辑。文章还重点讨论字段白名单、SQL 注入防护、分页集成、数据库查询构建和性能优化等工程实践，说明如何设计灵活且安全的查询接口。

[重新思考 REST API 设计中的 CRUD](https://blog.palantir.com/rethinking-crud-for-rest-api-designs-a2a8287dc2af)

这篇文章围绕“CRUD 是否适合作为 REST API 的设计模型”展开，指出将业务操作简单映射为 Create、Read、Update、Delete 会导致 API 无法准确表达业务语义。文章通过订单、审批等业务场景分析 CRUD 模型的局限性，重点讨论如何围绕领域行为（Domain Behavior）而非数据库操作设计资源和接口，并介绍 Action Endpoint、状态迁移、领域事件等建模方式，以更自然地表达复杂业务流程。

[CRUD API 专家指南：设计一个稳健的 API](https://forest.app/blog/an-experts-guide-to-crud-apis-designing-a-robust-one)

这篇文章围绕如何设计健壮的 CRUD API 展开，从 CRUD API 的基本概念和请求/响应模型开始，介绍接口开发的完整流程，包括框架选型、路由设计、请求校验、数据库集成等实现内容。随后重点总结 CRUD API 的设计实践，如统一资源命名、正确使用 HTTP 方法和状态码、保持接口一致性、围绕资源设计 API、版本管理以及 API 文档规范，并讨论可扩展性、可维护性、安全性和性能等设计考虑。

[HATEOAS 驱动的 REST API](https://restfulapi.net/hateoas/)

这篇文章围绕 HATEOAS（Hypermedia as the Engine of Application State）展开，介绍其作为 REST 架构约束的作用和设计思想，讲解超媒体链接（Hypermedia Links）如何引导客户端发现和操作资源，并通过示例说明链接关系（Relation）、状态迁移（State Transition）和资源导航的实现方式，以及 HATEOAS 在 REST API 中的优势与局限。

[2023 年 API 版本控制最佳实践](https://kodekloud.com/blog/api-versioning-best-practices/)

这篇文章围绕 API 版本管理（API Versioning）展开，介绍 API 为什么需要版本管理以及何时应该发布新版本，重点讨论破坏性变更（Breaking Changes）的识别、URL、请求头、查询参数和消费者绑定等常见版本控制策略，对比语义化版本（Semantic Versioning）和日期版本（Date-based Versioning），并结合 API 生命周期介绍版本发布、弃用（Deprecation）和兼容性维护等实践。

[API 版本管理](https://www.postman.com/api-platform/api-versioning/)

这篇文章围绕 API 版本管理（API Versioning）展开，介绍 API 为什么需要版本管理以及何时应该发布新版本，重点讨论破坏性变更（Breaking Changes）的识别、URL、请求头、查询参数和消费者绑定等常见版本控制策略，对比语义化版本（Semantic Versioning）和日期版本（Date-based Versioning），并结合 API 生命周期介绍版本发布、弃用（Deprecation）和兼容性维护等实践。

[REST API URI 命名规范与最佳实践](https://restfulapi.net/resource-naming/)

这篇文章围绕 REST API 的资源命名（Resource Naming）展开，从 REST 中资源（Resource）的概念出发，介绍集合资源、单个资源和子资源的 URI 表示方式，重点讲解 URI 命名规范，包括使用名词而非动词、统一命名风格、路径层级设计、复数命名、连字符与小写命名、避免文件扩展名和 CRUD 动词，以及利用查询参数实现筛选、排序和分页等资源设计实践。

[资源建模：开始编码前三思](https://medium.com/abn-amro-developer/resource-modelling-think-before-you-start-coding-a421357e9756)

这篇文章围绕 REST API 的资源建模（Resource Modeling）展开，强调在编码之前先完成资源设计。文章从业务领域分析出发，介绍如何识别资源、划分资源边界、定义资源关系以及规划 URI 结构，重点讨论资源粒度、聚合与拆分、嵌套资源和生命周期管理等设计问题，并通过银行业务案例说明资源模型如何影响 API 的可维护性和扩展性。

[REST API 资源建模实用指南](https://www.advancedcustomfields.com/blog/rest-api-resource/)

这篇文章围绕 REST API 的资源建模（Resource Modeling）展开，介绍如何定义合理的资源边界、设计资源之间的关系以及组织 URI 和 HTTP 方法，重点讨论资源独立性、集合资源、嵌套资源、查询参数、分页、字段选择和缓存等设计原则，并结合 WordPress ACF 展示如何通过 REST API 暴露和管理资源及其字段。

[URI 设计指南](https://css-tricks.com/guidelines-for-uri-design/)

这篇文章围绕 RESTful API 中的 URI 设计展开，从资源导向的设计理念出发，介绍 URI 的命名规范、层级结构、资源关系和查询参数的使用方式，重点讨论使用名词表示资源、保持 URI 的一致性与可读性、避免暴露实现细节等设计原则，并通过大量正反示例对比不同 URI 设计方案的优劣。

[REST API 原则 |全面概述](https://blog.dreamfactory.com/rest-apis-an-overview-of-basic-principles)

这篇文章围绕 REST API 的基本原则展开，从 REST 架构风格和资源导向设计出发，介绍客户端—服务器分离、无状态、统一接口、可缓存、分层系统等核心约束，随后讨论 HTTP 方法、状态码、URI 设计、安全性等 REST API 的常见设计实践，并概述 REST API 的优势及适用场景。

[如何制作 REST API](https://www.integrate.io/blog/how-to-make-a-rest-api/)

这篇文章介绍了 REST API 的设计与开发流程，讲解资源建模、URI 设计、HTTP 方法、状态码、请求与响应格式等基础内容，并结合 REST 设计原则说明构建 REST API 的常见实践和注意事项。