//
//  WorkListView.swift
//  AIMS
//
//  Created by 尾崎史侑 on 2025/05/04.
//

import SwiftUI

struct WorkListView: View {
    @EnvironmentObject var gameData: GameData // GameData を受け取る

    var body: some View {
        NavigationStack { // NavigationView を NavigationStack に変更
            ZStack {
                // Image("worklist_background") // ミステリーな雰囲気の背景画像
                //     .resizable()
                //     .scaledToFill()
                //     .ignoresSafeArea()
                VStack {
                    Text("作品一覧")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5, x: 5, y: 5)
                        .padding(.bottom, 50)

                    NavigationLink(destination: OpeningView()) {
                        Text("桜舞う学園の惨劇")
                            .font(.title)
                            .padding()
                            .background(Color.gray.opacity(0.7))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 3, x: 3, y: 3)
                    }
                }
            }
            .navigationTitle("作品一覧")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: String.self) { _ in
                OpeningView()
            }
        }
    }
}

#Preview {
    WorkListView()
}
