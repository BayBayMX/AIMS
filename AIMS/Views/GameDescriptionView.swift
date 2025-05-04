//
//  GameDescriptionView.swift
//  AIMS
//
//  Created by 尾崎史侑 on 2025/05/04.
//

import SwiftUI

struct GameDescriptionView: View {
    //@EnvironmentObject var workViewModel: WorkViewModel

    var body: some View {
        ZStack {
//            Image("description_background") // ミステリーな雰囲気の背景画像
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
            ScrollView {
//                Text(gameData.descriptionText)
//                    .font(.body)
//                    .padding()
//                    .foregroundColor(.white)
            }
        }
        .navigationTitle("ゲーム説明")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct GameDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        GameDescriptionView()
            .environmentObject(WorkViewModel())
    }
}
