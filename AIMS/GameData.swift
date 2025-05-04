//
//  GameData.swift
//  AIMS
//
//  Created by 尾崎史侑 on 2025/05/04.
//

import Foundation

class GameData: ObservableObject {
    let title = "桜舞う学園の惨劇"
    @Published var openingText: String = ""
    let descriptionText = """
        // ... (省略)
        """

    init() {
        if let url = Bundle.main.url(forResource: "opening", withExtension: "txt"),
           let text = try? String(contentsOf: url, encoding: .utf8) {
            self.openingText = text
        } else {
            self.openingText = "オープニングテキストを読み込めませんでした。"
        }
    }
}
