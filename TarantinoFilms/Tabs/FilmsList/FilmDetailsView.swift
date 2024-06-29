import SwiftUI

struct FilmDetailsView: View {
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
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
        .navigationTitle(post.title)
        .background(Color(.systemGray6))
    }
}

#Preview {
    FilmDetailsView(post: filmsPosts[0])
}
