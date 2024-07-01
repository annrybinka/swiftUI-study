import SwiftUI

struct FilmRowView: View {
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            Text(post.title)
            Spacer()
        }
    }
}

#Preview {
    FilmRowView(post: filmsPosts[1])
}
