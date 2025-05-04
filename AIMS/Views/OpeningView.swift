import SwiftUI

struct OpeningView: View {
    let work: WorkModel?

    var body: some View {
        ZStack {
            // ミステリーな背景
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.indigo.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            if let work = work {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text(work.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.cyan)
                            .padding(.bottom)

                        Text(work.openingText)
                            .font(.body)
                            .foregroundColor(.white.opacity(0.8))
                            .lineSpacing(8)
                    }
                    .padding()
                }
            } else {
                Text("作品が選択されていません。")
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle("オープニング")
        .navigationBarTitleDisplayMode(.inline)
        .foregroundColor(.white)
    }
}


