import SwiftUI

struct FilmDetailsView: View {
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text(post.subtitle)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Divider()
                Text(post.description)
            }
            .padding()
        }
        .background(Color(.systemGray6))
    }
}

#Preview {
    FilmDetailsView(post: filmsPosts[0])
}
