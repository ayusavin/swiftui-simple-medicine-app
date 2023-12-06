import SwiftUI

struct ButtonSetView: View {
    
    let welcomeScreenOptionButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>
    
    init(welcomeScreenButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>) {
        self.welcomeScreenOptionButtons = welcomeScreenButtons
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 13) {
            ForEach(welcomeScreenOptionButtons, id: \.title) { button in
                VStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .top, spacing: 10){
                        Button(action: button.onClick) {
                            Image(button.image).frame(width: 24, height: 24)
                        }
                    }
                    .padding(24)
                    .background(.white)
                    .cornerRadius(100)
                    Text(button.title)
                        .font(Font.welcomeScreenSearchBarHintText)
                        .foregroundColor(Color.secondaryText)
                }
            }
        }
    }
}

struct ButtonSetView_Previews: PreviewProvider {
    
    static let genericButtonFunction = {
        () -> Void in
    }
    
    static let buttons : [WelcomeScreenOptionButton] = [
        WelcomeScreenOptionButton(image: "sun", title: "Covid-19", onClick: genericButtonFunction),
        WelcomeScreenOptionButton(image: "profile-add", title: "Doctor", onClick: genericButtonFunction),
        WelcomeScreenOptionButton(image: "link", title: "Medicine", onClick: genericButtonFunction),
        WelcomeScreenOptionButton(image: "hospital", title: "Hospital", onClick: genericButtonFunction)
    ]
    
    static var previews: some View {
        ButtonSetView(
            welcomeScreenButtons: AnyRandomAccessCollection<WelcomeScreenOptionButton>(buttons)
        )
    }
}
