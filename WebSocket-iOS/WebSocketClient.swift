//
//  WebSocketClient.swift
//  WebSocket-Example
//
//  Created by ukseung.dev on 11/13/24.
//

import Foundation
import Combine

class WebSocketClient: ObservableObject {
    @Published var chatMessages: [String] = []  // 채팅 메시지 배열
    private var webSocketTask: URLSessionWebSocketTask?
    @Published var chatStatus: String?
    
    // 웹소켓 연결 시작
    func connect() {
        // WebSocket URL (서버의 URL로 변경)
        guard let url = URL(string: "ws://localhost:8080") else { return }
        let session = URLSession(configuration: .default)
        
        // WebSocket 연결 생성
        webSocketTask = session.webSocketTask(with: url)
        
        // 연결 시작
        webSocketTask?.resume()
        
        // 서버로부터 메시지를 수신
        listenForMessages()
    }
    
    // 연결 종료
    func disconnect() {
        webSocketTask?.cancel(with: .normalClosure, reason: nil)
        webSocketTask = nil
        print("웹소켓 연결이 종료되었습니다.")
        chatStatus = "웹소켓 연결이 종료되었습니다."
    }
    
    // 메시지 전송
    func sendMessage(_ message: String) {
        let messageToSend = URLSessionWebSocketTask.Message.string(message)
        webSocketTask?.send(messageToSend) { error in
            if let error = error {
                print("메시지 전송 오류: \(error)")
            }
        }
    }
    
    private func listenForMessages() {
        webSocketTask?.receive { [weak self] result in
            switch result {
            case .success(let message):
                // 메시지가 텍스트일 경우
                if case let .string(text) = message {
                    // 받은 텍스트를 JSON 데이터로 변환
                    if let data = text.data(using: .utf8) {
                        // JSON을 `ChatMessage` 구조체로 디코딩
                        let decoder = JSONDecoder()
                        do {
                            let messageInfo = try decoder.decode(MessageInfo.self, from: data)
                            
                            switch messageInfo.type {
                            case "info":
                                self?.chatStatus = messageInfo.message
                            case "chat":
                                DispatchQueue.main.async {
                                    self?.chatMessages.append("상대: \(messageInfo.message)")
                                }
                            default: break
                            }
                        } catch {
                            print("메시지 파싱 오류: \(error)")
                        }
                    }
                }
                self?.listenForMessages()  // 다음 메시지 수신 대기
            case .failure(let error):
                print("메시지 수신 오류: \(error)")
                self?.chatStatus = "메시지 수신 오류: \(error)"
            }
        }
    }

    
    // 로컬 메시지 추가 (사용자가 보낸 메시지)
    func addLocalMessage(_ message: String) {
        DispatchQueue.main.async {
            self.chatMessages.append(message)
        }
    }
}
