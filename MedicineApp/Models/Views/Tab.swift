import Foundation

struct Tab {
    let title: String
    let icon: String
    var onClick: () -> Void
    var isSelected: Bool
}
