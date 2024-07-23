import SwiftUI
import SpriteKit

struct FilmDetailsView: View {
    var post: Post
    @Binding var choosenPost: Post?
    
    var body: some View {
        choosenPost = post
        return ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(post.subtitle)
                        .font(.title3)
                        .foregroundColor(.gray)
                    post.image
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 5)
                        .frame(width: 170)
                }
                .padding()
                
                Text(post.description)
            }
            .padding()
        }
        .background(Color(.systemGray6))
    }
}

#Preview {
    FilmDetailsView(post: filmsPosts[0], choosenPost: .constant(filmsPosts[0]))
}
