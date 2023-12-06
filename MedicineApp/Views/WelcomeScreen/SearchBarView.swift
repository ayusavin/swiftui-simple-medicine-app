import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image("search-grey")
                .frame(width: 24, height: 24)
            Text(String(localized: "Search doctor or health issue"))
                .font(Font.welcomeScreenSearchBarHintText)
                .foregroundColor(Color.secondaryText)
        }
        .padding(16)
        .frame(width: 327, alignment: .leading)
        .background(Color.welcomeScreenSearchBarBackground)
        .cornerRadius(12)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
