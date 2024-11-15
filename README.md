# 💬 웹 소켓을 활용한 Chat 어플
## 프로젝트 소개

- 웹 소켓을 활용한 Chat 앱
- html 클라이언트 구현 + node.js 서버 구현 (Total 2 Cleient, 1 Server)

<br>

## 팀원 구성

<div align="center">

| **신승욱** |
| :------: |
| [<img src="https://avatars.githubusercontent.com/u/69791286?v=4" height=150 width=150> <br/> @shinseunguk](https://github.com/shinseunguk) |

</div>

<br>

## 1. 개발 환경

- **프론트엔드**: iOS (SwiftUI + Combine)
- **백엔드**: node.js (https://github.com/shinseunguk/WebSocket-Server)
- **버전 및 이슈 관리**: Github
- **협업 툴**: N/A
- **라이브러리**: WebSocket
- **서비스 배포 환경**: 로컬 구동

<br>

## 2. 채택한 개발 기술과 문제 해결 (Trouble Shooting)

### 채택한 개발 기술
#### SwiftUI + Combine
- **SwiftUI**와 **Combine**을 조합하여 iOS 앱에서 리액티브한 화면 구성을 구현했습니다. Combine을 통해 데이터 흐름을 관리하고 비동기 작업을 처리했으며, 이를 통해 상태 변경이 UI에 즉각 반영되어 사용자 경험을 향상시켰습니다.
  
#### Node.js
- **Node.js**를 백엔드 기술로 채택하여 비동기 처리를 통해 성능을 높였습니다. 서버에서 실시간 데이터를 효율적으로 처리하여 클라이언트와의 데이터 통신이 원활하게 이루어지도록 했습니다.

#### WebSocket
- **WebSocket**을 통해 클라이언트와 서버 간 실시간 양방향 통신을 구현했습니다. 이를 통해 채팅 메시지나 알림이 즉시 반영되도록 하여 사용자에게 실시간 경험을 제공합니다.

#### HTML & JavaScript
- 정확한 테스트를 위해 HTML & JavaScript를 통해 클라이언트를 하나 더 구현하였습니다.
  
<br><br>

### 버전 관리 및 협업

#### GitFlow
- **GitFlow**를 채택하여 버전 관리를 체계적으로 진행했습니다. **master** 브랜치는 안정 버전으로 유지하고, **develop** 브랜치를 통해 새로운 기능을 개발, **feature** 브랜치를 통해 기능별 작업을 분리했습니다. 배포 전에는 **release** 브랜치에서 안정화 과정을 거쳤으며, 긴급 업데이트는 **hotfix** 브랜치를 통해 신속히 대응하여 버전의 일관성과 안정성을 유지했습니다.

---

이 구조를 통해 협업 시 효율적으로 기능을 분리하고 통합할 수 있었으며, 문제 발생 시 신속히 대응할 수 있었습니다.

## Trouble Shooting
- N/A


<br>

## 3. 프로젝트 구조 
1. iOS
```
.
├── WebSocket-iOS
│   ├── Assets.xcassets
│   │   ├── AccentColor.colorset
│   │   │   └── Contents.json
│   │   ├── AppIcon.appiconset
│   │   │   └── Contents.json
│   │   └── Contents.json
│   ├── Info.plist
│   ├── MessageInfo.swift
│   ├── Preview Content
│   │   └── Preview Assets.xcassets
│   │       └── Contents.json
│   ├── WebSocketClient.swift
│   ├── WebSocketView.swift
│   └── WebSocket_iOSApp.swift
└── WebSocket-iOS.xcodeproj
    ├── project.pbxproj
    ├── project.xcworkspace
    │   ├── contents.xcworkspacedata
    │   ├── xcshareddata
    │   │   ├── IDEWorkspaceChecks.plist
    │   │   └── swiftpm
    │   │       └── configuration
    │   └── xcuserdata
    │       └── incross0915.xcuserdatad
    │           └── UserInterfaceState.xcuserstate
    └── xcuserdata
        └── incross0915.xcuserdatad
            └── xcschemes
                └── xcschememanagement.plist
```

<br><br>

2. Server & Client(HTML)


```
.
├── html
│   └── client.html
├── js
│   └── server.js
├── node_modules
│   ├── asynckit
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── bench.js
│   │   ├── index.js
│   │   ├── lib
│   │   │   ├── abort.js
│   │   │   ├── async.js
│   │   │   ├── defer.js
│   │   │   ├── iterate.js
│   │   │   ├── readable_asynckit.js
│   │   │   ├── readable_parallel.js
│   │   │   ├── readable_serial.js
│   │   │   ├── readable_serial_ordered.js
│   │   │   ├── state.js
│   │   │   ├── streamify.js
│   │   │   └── terminator.js
│   │   ├── package.json
│   │   ├── parallel.js
│   │   ├── serial.js
│   │   ├── serialOrdered.js
│   │   └── stream.js
│   ├── axios
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── MIGRATION_GUIDE.md
│   │   ├── README.md
│   │   ├── SECURITY.md
│   │   ├── dist
│   │   │   ├── axios.js
│   │   │   ├── axios.js.map
│   │   │   ├── axios.min.js
│   │   │   ├── axios.min.js.map
│   │   │   ├── browser
│   │   │   │   ├── axios.cjs
│   │   │   │   └── axios.cjs.map
│   │   │   ├── esm
│   │   │   │   ├── axios.js
│   │   │   │   ├── axios.js.map
│   │   │   │   ├── axios.min.js
│   │   │   │   └── axios.min.js.map
│   │   │   └── node
│   │   │       ├── axios.cjs
│   │   │       └── axios.cjs.map
│   │   ├── index.d.cts
│   │   ├── index.d.ts
│   │   ├── index.js
│   │   ├── lib
│   │   │   ├── adapters
│   │   │   │   ├── README.md
│   │   │   │   ├── adapters.js
│   │   │   │   ├── fetch.js
│   │   │   │   ├── http.js
│   │   │   │   └── xhr.js
│   │   │   ├── axios.js
│   │   │   ├── cancel
│   │   │   │   ├── CancelToken.js
│   │   │   │   ├── CanceledError.js
│   │   │   │   └── isCancel.js
│   │   │   ├── core
│   │   │   │   ├── Axios.js
│   │   │   │   ├── AxiosError.js
│   │   │   │   ├── AxiosHeaders.js
│   │   │   │   ├── InterceptorManager.js
│   │   │   │   ├── README.md
│   │   │   │   ├── buildFullPath.js
│   │   │   │   ├── dispatchRequest.js
│   │   │   │   ├── mergeConfig.js
│   │   │   │   ├── settle.js
│   │   │   │   └── transformData.js
│   │   │   ├── defaults
│   │   │   │   ├── index.js
│   │   │   │   └── transitional.js
│   │   │   ├── env
│   │   │   │   ├── README.md
│   │   │   │   ├── classes
│   │   │   │   │   └── FormData.js
│   │   │   │   └── data.js
│   │   │   ├── helpers
│   │   │   │   ├── AxiosTransformStream.js
│   │   │   │   ├── AxiosURLSearchParams.js
│   │   │   │   ├── HttpStatusCode.js
│   │   │   │   ├── README.md
│   │   │   │   ├── ZlibHeaderTransformStream.js
│   │   │   │   ├── bind.js
│   │   │   │   ├── buildURL.js
│   │   │   │   ├── callbackify.js
│   │   │   │   ├── combineURLs.js
│   │   │   │   ├── composeSignals.js
│   │   │   │   ├── cookies.js
│   │   │   │   ├── deprecatedMethod.js
│   │   │   │   ├── formDataToJSON.js
│   │   │   │   ├── formDataToStream.js
│   │   │   │   ├── fromDataURI.js
│   │   │   │   ├── isAbsoluteURL.js
│   │   │   │   ├── isAxiosError.js
│   │   │   │   ├── isURLSameOrigin.js
│   │   │   │   ├── null.js
│   │   │   │   ├── parseHeaders.js
│   │   │   │   ├── parseProtocol.js
│   │   │   │   ├── progressEventReducer.js
│   │   │   │   ├── readBlob.js
│   │   │   │   ├── resolveConfig.js
│   │   │   │   ├── speedometer.js
│   │   │   │   ├── spread.js
│   │   │   │   ├── throttle.js
│   │   │   │   ├── toFormData.js
│   │   │   │   ├── toURLEncodedForm.js
│   │   │   │   ├── trackStream.js
│   │   │   │   └── validator.js
│   │   │   ├── platform
│   │   │   │   ├── browser
│   │   │   │   │   ├── classes
│   │   │   │   │   │   ├── Blob.js
│   │   │   │   │   │   ├── FormData.js
│   │   │   │   │   │   └── URLSearchParams.js
│   │   │   │   │   └── index.js
│   │   │   │   ├── common
│   │   │   │   │   └── utils.js
│   │   │   │   ├── index.js
│   │   │   │   └── node
│   │   │   │       ├── classes
│   │   │   │       │   ├── FormData.js
│   │   │   │       │   └── URLSearchParams.js
│   │   │   │       └── index.js
│   │   │   └── utils.js
│   │   └── package.json
│   ├── combined-stream
│   │   ├── License
│   │   ├── Readme.md
│   │   ├── lib
│   │   │   └── combined_stream.js
│   │   ├── package.json
│   │   └── yarn.lock
│   ├── delayed-stream
│   │   ├── License
│   │   ├── Makefile
│   │   ├── Readme.md
│   │   ├── lib
│   │   │   └── delayed_stream.js
│   │   └── package.json
│   ├── follow-redirects
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── debug.js
│   │   ├── http.js
│   │   ├── https.js
│   │   ├── index.js
│   │   └── package.json
│   ├── form-data
│   │   ├── License
│   │   ├── Readme.md
│   │   ├── index.d.ts
│   │   ├── lib
│   │   │   ├── browser.js
│   │   │   ├── form_data.js
│   │   │   └── populate.js
│   │   └── package.json
│   ├── mime-db
│   │   ├── HISTORY.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── db.json
│   │   ├── index.js
│   │   └── package.json
│   ├── mime-types
│   │   ├── HISTORY.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── index.js
│   │   └── package.json
│   ├── proxy-from-env
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── index.js
│   │   ├── package.json
│   │   └── test.js
│   └── ws
│       ├── LICENSE
│       ├── README.md
│       ├── browser.js
│       ├── index.js
│       ├── lib
│       │   ├── buffer-util.js
│       │   ├── constants.js
│       │   ├── event-target.js
│       │   ├── extension.js
│       │   ├── limiter.js
│       │   ├── permessage-deflate.js
│       │   ├── receiver.js
│       │   ├── sender.js
│       │   ├── stream.js
│       │   ├── subprotocol.js
│       │   ├── validation.js
│       │   ├── websocket-server.js
│       │   └── websocket.js
│       ├── package.json
│       └── wrapper.mjs
├── package-lock.json
└── package.json
```

<br>

## 4. 역할 분담

### 🧑🏻‍💻신승욱
1. iOS
- WebSocket을 통한 실시간 채팅 구현: SwiftUI와 Combine을 활용하여 WebSocketClient 클래스를 작성하고, 서버와의 실시간 메시지 송수신 기능을 구현했습니다. 클라이언트는 웹소켓을 통해 서버에 연결하고, 메시지를 보내거나 받으며 실시간으로 채팅할 수 있습니다.
- 채팅 UI 개발: 사용자에게 실시간으로 메시지를 보여주는 채팅 UI를 SwiftUI로 구현하였으며, 메시지 입력 필드, 전송 버튼 등을 포함해 직관적인 사용자 경험을 제공했습니다.
- 연결 상태 관리: 서버와의 연결 상태(연결됨, 종료됨 등)를 실시간으로 업데이트하고 화면에 표시하여 사용자에게 현재 상태를 명확히 전달했습니다. WebSocket 연결 종료 시 자동으로 상태를 업데이트하고, 오류가 발생할 경우 적절히 처리하여 안정적인 운영을 지원했습니다.
  
<br>

2. Cleint(HTML & JavaScript)
- 채팅 인터페이스 구현: HTML과 CSS를 사용하여 간단한 채팅 클라이언트 UI를 구현했습니다. 사용자는 실시간으로 메시지를 보내고 받을 수 있는 인터페이스를 갖추었습니다.
- WebSocket 통신: WebSocket을 사용해 서버와 실시간으로 연결을 유지하고, 클라이언트가 보낸 메시지를 서버로 전송하며, 서버에서 온 메시지를 클라이언트 화면에 동적으로 표시하도록 했습니다.
- 사용자 경험 향상: 메시지 입력과 전송 기능을 추가하여, 사용자가 Enter 키로 메시지를 보내거나 버튼을 클릭하여 채팅할 수 있도록 했습니다. 또한, 클라이언트의 상태에 맞는 메시지(예: 연결 상태, 상대방 대기 등)를 표시하여 사용자가 채팅방의 상태를 쉽게 이해할 수 있도록 했습니다.

<br>

3. Server(node.js)
- WebSocket 서버 구축: Node.js와 ws 라이브러리를 사용하여 실시간 양방향 통신을 위한 WebSocket 서버를 구현했습니다.
- 클라이언트 연결 관리: 연결된 클라이언트의 수를 추적하고, 클라이언트 간 메시지 브로드캐스트, 연결 종료 시 알림 처리 등을 구현하여 실시간 채팅 기능을 활성화했습니다.
- 상태 관리: 클라이언트가 하나만 연결된 경우와 두 명 이상 연결된 경우에 따라 다르게 응답하도록 서버 로직을 작성하여, 채팅방 상태를 실시간으로 업데이트했습니다.


<div align="center">
  <img src="https://github.com/user-attachments/assets/ec8d363e-707d-4189-b669-26ebc7be2f0a" width="600">
</div>



<br>

## 5. 개발 기간 및 작업 관리
### 개발 기간

- 전체 개발 기간 : 2024-11-14 ~ 2024-11-14
- 기능 구현 : 2024-11-14 ~ 2024-11-14

<br>



<br>

## 6. 개선 목표
- 현재는 서버를 로컬 환경에서만 돌려 localhost로만 서버 진입이 가능한데, 나중에 실 배포를 진행해 어느 클라이언트나 접근이 가능하게 변경할 예정
    
<br>

## 7. 프로젝트 후기
### 🧑🏻‍💻 신승욱
> 웹 소켓을 활용하여 채팅 앱을 실제로 만들어 보았다. 사실 일반 Rest API의 CRUD와 크게 다를것은 없어보였지만, 중요한 부분은 웹 소켓을 사용할때 앱의 메모리 사용에 주의 해야한다는 점을 깨닳았다. 만약 소켓을 사용하지 않는다면(ex) 화면이동) 소켓을 close해 memory leak을 줄여야겠다. 


