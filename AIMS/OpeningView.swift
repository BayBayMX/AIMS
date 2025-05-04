//
//  OpeningView.swift
//  AIMS
//
//  Created by 尾崎史侑 on 2025/05/04.
//

//  OpeningView.swift
import SwiftUI

struct OpeningView: View {
    @EnvironmentObject var gameData: GameData

    var body: some View {
        ZStack {
              Image("opening_background") // ミステリーな雰囲気の背景画像
              .resizable()
              .scaledToFill()
              .ignoresSafeArea()

            ScrollView {
                Text(gameData.openingText)
                    .font(.body)
                    .padding()
            }
        }
        .navigationTitle("オープニング")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    OpeningView()
        .environmentObject(GameData())
}
