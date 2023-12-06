import SwiftUI

struct HeaderView: View {
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 6){
                Text("\(String(localized: "Hello")),")
                    .font(Font.welcomeScreenHeaderHello)
                    .foregroundColor(Color.secondaryText)
                Text(String(localized: "Hi \(user.name)"))
                    .font(Font.welcomeScreenHeaderUsername)
                    .foregroundColor(Color.mainText)
            }.padding(0)
            Spacer()
            Button {} label: {
                Image(user.image)
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
            }
        }
        .padding(0)
        .frame(width: 327)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static let previewUser = User(name: "Preview", image: "")

    static var previews: some View {
        HeaderView(user: previewUser)
    }
}
