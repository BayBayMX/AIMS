//
//  GameTitleView.swift
//  AIMS
//
//  Created by 尾崎史侑 on 2025/05/04.
//
//  GameTitleView.swift
import SwiftUI

struct GameTitleView: View {
    @StateObject var gameData = GameData() // GameData のインスタンスを生成
    @State private var isActive = false

    var body: some View {
        NavigationView {
            ZStack {
                // 背景
//                Image("title_background") // ミステリーな雰囲気の背景画像
//                    .resizable()
//                    .scaledToFill()
//                    .ignoresSafeArea()

                VStack {
                    Text("AIMS")
                        .font(.custom("Georgia-BoldItalic", size: 80))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5, x: 5, y: 5)
                        .padding(.bottom, 50)

                    NavigationLink(destination: WorkListView(), isActive: $isActive) {
                        Button("スタート") {
                            isActive = true
                        }
                        .font(.title)
                        .padding()
                        .background(Color.gray.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(color: .black, radius: 3, x: 3, y: 3)
                    }
                }
            }
            .navigationBarHidden(true) // タイトル画面ではナビゲーションバーを非表示
        }
        .navigationViewStyle(.stack) // これがないとiPadで表示崩れる
        .environmentObject(gameData) // WorkListView に gameData を渡す
    }
}

#Preview {
    GameTitleView()
}
