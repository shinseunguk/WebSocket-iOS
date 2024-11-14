import SwiftUI

struct WebSocketView: View {
    @StateObject private var webSocketClient = WebSocketClient()  // WebSocketClient 객체 생성
    @State private var messageInput = ""  // 사용자 입력 메시지
    
    var body: some View {
        VStack {
            Text("채팅 메시지")
                .font(.headline)
                .padding(.top)
            
            // 채팅 로그
            if let chatStatus = webSocketClient.chatStatus {
                Text(chatStatus)
                    .frame(maxWidth: .infinity)
                    .padding(10)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(webSocketClient.chatMessages, id: \.self) { message in
                        Text(message)
                            .padding(10)
                            .background(message.hasPrefix("나:") ? Color.blue : Color.gray.opacity(0.2))
                            .foregroundColor(message.hasPrefix("나:") ? .white : .black)
                            .cornerRadius(8)
                            .frame(maxWidth: .infinity, alignment: message.hasPrefix("나:") ? .trailing : .leading)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 400)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            
            // 메시지 입력 및 전송 버튼
            HStack {
                TextField("메시지를 입력하세요", text: $messageInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minHeight: 40)
                
                Button(action: {
                    webSocketClient.sendMessage(messageInput)  // 메시지 전송
                    webSocketClient.addLocalMessage("나: \(messageInput)")  // 로컬 메시지 추가
                    messageInput = ""  // 입력 필드 초기화
                }) {
                    Text("보내기")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .disabled(messageInput.isEmpty)
            }
            .padding()
            .padding(.bottom)
        }
        .padding()
        .onAppear {
            webSocketClient.connect()  // 웹소켓 연결
        }
        .onDisappear {
            webSocketClient.disconnect()  // 웹소켓 연결 종료
        }
    }
}

struct WebSocketView_Previews: PreviewProvider {
    static var previews: some View {
        WebSocketView()
    }
}
