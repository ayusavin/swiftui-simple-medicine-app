import Foundation
import SwiftUI

struct TabView: View {
    
    let tab: Tab
    
    init(tab: Tab) {
        self.tab = tab
    }
    
    var body: some View {
        if self.tab.isSelected {
            HStack(alignment: .center, spacing: 8) {
                Image(self.tab.icon)
                    .frame(width: 24, height: 24)
                Text(self.tab.title)
                    .font(Font.tabBarSelected)
                    .foregroundColor(Color.selectedTabText)
            }
            .padding(12)
            .background(Color.selectedTab)
            .cornerRadius(12)
        }
        else {
            HStack(alignment: .center, spacing: 8) {
                Image(self.tab.icon)
                    .frame(width: 24, height: 24)
            }.padding(12)
        }
    }
}
