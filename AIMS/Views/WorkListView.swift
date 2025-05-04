import SwiftUI

struct WorkListView: View {
    @StateObject var viewModel = WorkViewModel()
    @State private var selectedWork: WorkModel?
    @State private var isActive = false

    var body: some View {
        NavigationStack { // NavigationView を NavigationStack に変更
            ZStack {
                // ミステリーな背景
                Color.black.opacity(0.9).edgesIgnoringSafeArea(.all)

                VStack {
                    Text("作品一覧")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()

                    ScrollView {
                        VStack(alignment: .leading, spacing: 15) {
                            ForEach(viewModel.works) { work in
                                Button(action: {
                                    selectedWork = work
                                    isActive = true
                                }) {
                                    Text(work.title)
                                        .font(.title3)
                                        .foregroundColor(.yellow.opacity(0.9))
                                        .padding(.horizontal)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(5)
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("作品一覧") // ナビゲーションバーのタイトル
            .navigationBarTitleDisplayMode(.inline) // タイトルをインライン表示
            .foregroundColor(.white)
            .navigationDestination(isPresented: $isActive) { // navigationDestination を追加
                if let selectedWork = selectedWork {
                    OpeningView(work: selectedWork) // 遷移先のビュー
                }
            }
        }
    }
}

#Preview{
    WorkListView()
}
