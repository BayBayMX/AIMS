import SwiftUI

struct GameTitleView: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack { // NavigationView を NavigationStack に変更
            ZStack {
                // ミステリーな背景（例：暗いグラデーション）
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Text("AIMS")
                        .font(.custom("AmericanTypewriter-Bold", size: 80)) // ミステリーなフォント
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .padding(.bottom, 50)

                    Button(action: {
                        isActive = true
                    }) {
                        Text("スタート")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.yellow.opacity(0.8))
                            .cornerRadius(10)
                            .shadow(radius: 3)
                    }
                }
            }
            .navigationBarHidden(true) // ナビゲーションバーを非表示
            .navigationDestination(isPresented: $isActive) {
                WorkListView() // 遷移先のビュー
            }
        }
    }
}

#Preview{
    GameTitleView()
}
