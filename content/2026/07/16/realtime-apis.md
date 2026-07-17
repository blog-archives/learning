+++
date = '2026-07-16T16:42:26+08:00'
title = 'Realtime Apis'
categories = ['阅读']
tags = []
+++

[什么是 WebSockets](https://www.pubnub.com/guides/websockets/)

这篇文章围绕 WebSocket 展开，重点不是介绍协议规范，而是解释 WebSocket 为什么能够实现实时通信，以及它与 HTTP、轮询（Polling）和长轮询（Long Polling）的本质区别。

[什么是实时 API？](https://ably.com/topic/what-is-a-realtime-api)

这篇文章试图回答“什么是真正的实时 API”这一问题。作者认为，实时 API 不只是使用 WebSocket 或推送技术，而是一种能够让客户端持续感知数据变化的通信模式。文章围绕这一观点，介绍实时 API 与 REST API 的区别、实时数据流的工作方式，以及发布/订阅（Pub/Sub）、事件驱动、状态同步等核心机制，并讨论延迟、消息可靠性、扩展性和连接管理等构建实时系统需要面对的挑战。

[什么是实时 API？](https://www.pubnub.com/guides/realtime-api/)

这篇文章从“什么是实时 API（Realtime API）”出发，讨论实时通信与传统请求-响应 API 的区别，认为实时性的核心在于服务器主动推送数据，而不是客户端持续轮询。文章围绕实时 API 的组成展开，介绍发布/订阅（Pub/Sub）、WebSocket、事件驱动、消息同步、状态同步等核心概念，并结合聊天、协同编辑、物联网、实时监控等场景说明实时 API 的设计思路，以及可扩展性、可靠性、安全性和性能等实现挑战。