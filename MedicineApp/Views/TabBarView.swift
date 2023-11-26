import Foundation
import SwiftUI

// TODO: add navigation
struct TabBarView: View {
    
    let tabs: AnyRandomAccessCollection<Tab>
    
    init(tabs: AnyRandomAccessCollection<Tab>) {
        self.tabs = tabs
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 24) {
            ForEach(tabs, id: \.title) {tab in
                TabView(tab: tab)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 16)
        .frame(width: 375, alignment: .center)
        .background(Color.background)
    }
}
