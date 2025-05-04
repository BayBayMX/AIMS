import SwiftUI
import Foundation

class WorkViewModel: ObservableObject {
    @Published var works: [WorkModel] = []

    init() {
        loadWorks()
    }

    func loadWorks() {
        if let resourceURL = Bundle.main.resourceURL {
            //print("アプリのリソースURL: \(resourceURL)")

            do {
                let fileURLs = try FileManager.default.contentsOfDirectory(at: resourceURL, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)

                for fileURL in fileURLs {
                    //print("ファイルURL: \(fileURL)")
                    if fileURL.pathExtension == "json" {
                        if let data = try? Data(contentsOf: fileURL) {
                            let decoder = JSONDecoder()
                            do {
                                let work = try decoder.decode(WorkModel.self, from: data)
                                works.append(work)
                                //print("デコード成功: \(work)")
                            } catch {
                                print("JSON デコードエラー (\(fileURL.lastPathComponent)): \(error)")
                            }
                        } else {
                            print("ファイル読み込みエラー: \(fileURL.lastPathComponent)")
                        }
                    }
                }
            } catch {
                print("リソースフォルダへのアクセスエラー: \(error)")
            }
        } else {
            print("アプリのリソースフォルダが見つかりません。")
        }
    }
}
