+++
date = '2026-07-15T09:09:46+08:00'
title = 'API 设计基础知识'
categories = ['阅读']
tags = []
+++

[什么是 DNS？ | DNS 的工作方式](https://www.cloudflare.com/zh-cn/learning/dns/what-is-dns/)

这篇文章介绍了 DNS（域名系统）的基本概念和工作机制，讲解域名解析的流程、DNS 查询的类型、DNS 记录的种类，以及递归解析器、根域名服务器、顶级域名服务器和权威域名服务器在解析过程中的作用。

[什么是 TCP/IP？](https://www.cloudflare.com/zh-cn/learning/ddos/glossary/tcp-ip/)

这篇文章介绍了 TCP/IP 协议族的基本概念和工作方式，讲解 TCP 与 IP 的职责、数据在网络中的传输过程、TCP/IP 分层模型，以及各层协议在互联网通信中的作用和协作关系。

[什么是传输控制协议 TCP/IP？](https://www.fortinet.com/cn/resources/cyberglossary/tcp-ip)

这篇文章介绍了 TCP/IP 协议族的组成及工作机制，讲解 TCP 与 IP 的职责分工、TCP/IP 四层模型、数据传输流程，以及 TCP 与 UDP 的区别，并说明 TCP/IP 在互联网通信中的作用。

[内容协商](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Guides/Content_negotiation)

这篇文章介绍了 HTTP 内容协商（Content Negotiation）机制，讲解客户端与服务器如何通过请求头和响应头协商资源的表示形式，包括媒体类型、语言、字符集和内容编码等，并说明服务器驱动协商、代理协商及相关 HTTP 请求头的作用。

[理解 HTTP 请求中的路径变量和查询参数](https://medium.com/@averydcs/understanding-path-variables-and-query-parameters-in-http-requests-232248b71a8)

这篇文章介绍了 HTTP 请求中的路径参数（Path Variables）和查询参数（Query Parameters），说明两者在 URL 中的表示方式、用途和区别，并结合 RESTful API 示例说明它们分别适用于资源定位、资源筛选、排序、分页等不同场景。

[什么是 API？](https://www.postman.com/what-is-an-api/)

这篇文章介绍了 API 的基本概念及其在软件系统中的作用，讲解 API 的工作方式、请求与响应模型、常见 API 类型（如 REST、SOAP、GraphQL）以及 API 在不同系统之间实现数据交换和功能调用的方式。

[缓存 REST API 响应](https://restfulapi.net/caching/)

这篇文章介绍了 REST API 中的 HTTP 缓存机制，讲解缓存的工作原理及其在提升性能、降低服务器负载方面的作用，并说明 Cache-Control、ETag、Last-Modified、Expires 等缓存相关请求头，以及缓存验证和缓存失效的实现方式。

[什么是跨源资源共享？](https://aws.amazon.com/what-is/cross-origin-resource-sharing/)

这篇文章介绍了跨源资源共享（CORS）的概念和工作机制，讲解浏览器同源策略带来的限制，以及 CORS 如何通过 HTTP 请求头允许或限制跨源访问，并说明简单请求、预检请求（Preflight）和常见响应头的作用。

[使用 HTTP cookie](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Cookies)

这篇文章系统介绍了 HTTP Cookie 的工作机制，讲解 Cookie 的创建、更新、存储和发送过程，以及生命周期、作用域、安全属性（如 Secure、HttpOnly、SameSite）等内容，并介绍 Cookie 在会话管理、个性化设置和状态保持等场景中的应用。

[什么是 API Cookies？怎么发送？](https://apidog.com/articles/what-are-api-cookies/)

这篇文章介绍了 Cookie 在 API 中的作用及工作机制，讲解 Cookie 的存储与传递方式、与 Session 的关系，以及 Cookie 在身份认证、会话管理和状态保持中的应用，并说明其安全属性（如 HttpOnly、Secure、SameSite）及使用注意事项。

[HTTP 请求方法](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Methods)

这篇文章介绍了 HTTP 请求方法（HTTP Methods）的作用和语义，概述 GET、POST、PUT、DELETE、PATCH、HEAD、OPTIONS 等常见方法的用途，并说明安全性（Safe）、幂等性（Idempotent）和可缓存性（Cacheable）等特性，以及不同请求方法适用的场景。

[HTTP 概述](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Overview)

这篇文章从 Web 通信的整体视角介绍 HTTP，围绕客户端与服务器的请求—响应模型，讲解 HTTP 的核心特性、通信流程、消息结构，以及代理、缓存、Cookie、认证等机制，概述 HTTP 在现代 Web 架构中的工作方式。

[什么是 HTTP？](https://www.cloudflare.com/en-gb/learning/ddos/glossary/hypertext-transfer-protocol-http/)

一篇 HTTP 入门文章，围绕 HTTP 的请求—响应模型，介绍了请求与响应的组成、常见方法、状态码、Header 等基础概念，并简述 HTTP 的无状态特性及其与 DDoS 攻击的关系。

[关于 HTTP 你需要了解的一切](https://cs.fyi/guide/http-in-depth)

这篇文章系统介绍了 HTTP 协议的基础知识与发展历程。从 HTTP 的工作方式开始，逐步讲解请求与响应、连接管理、缓存、HTTPS 等核心机制，并按照 HTTP/0.9、1.0、1.1、2、3 的演进顺序，说明每个版本产生的背景、解决的问题及其设计思路，帮助读者建立对现代 Web 通信协议的整体认识。