import SwiftUI

struct ProductHeader: View {
  var title: String
  var image: String
  var body: some View {
    HStack {
      AsyncImage(
        url: URL(string: image)!,
        placeholder: {
          Text("...")
        },
        image: {
          Image(uiImage: $0)
            .resizable()
        }
      )
      .frame(width:100, height:100)
      Text(title)
        .font(.body)
        .padding()
    }
  }
}
