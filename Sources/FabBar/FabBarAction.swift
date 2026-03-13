#if canImport(UIKit)
import UIKit

/// Configuration for the floating action button (FAB) in FabBar.
///
/// The FAB appears as a circular glass button next to the tab items,
/// morphing with the iOS 26 glass effect.
@available(iOS 26.0, *)
public struct FabBarAction {
    /// The SF Symbol name for the button icon.
    public let systemImage: String

    /// The accessibility label for VoiceOver users.
    public let accessibilityLabel: String

    /// The tint color applied to the FAB's glass effect.
    /// Pass `nil` for a neutral (untinted) glass appearance.
    /// Defaults to `.tintColor` (the app's accent color).
    public let tintColor: UIColor?

    /// An optional menu to display when the FAB is tapped.
    /// When set, the menu takes priority over `action`.
    public let menu: UIMenu?

    /// The action to perform when the button is tapped.
    public let action: () -> Void

    /// Creates a floating action button configuration.
    ///
    /// - Parameters:
    ///   - systemImage: The SF Symbol name for the button icon.
    ///   - accessibilityLabel: The accessibility label for VoiceOver users.
    ///   - tintColor: The tint color for the FAB glass effect. Defaults to `.tintColor`.
    ///   - menu: An optional menu shown as the primary action. Defaults to `nil`.
    ///   - action: The action to perform when the button is tapped.
    public init(
        systemImage: String,
        accessibilityLabel: String,
        tintColor: UIColor? = .tintColor,
        menu: UIMenu? = nil,
        action: @escaping () -> Void
    ) {
        self.systemImage = systemImage
        self.accessibilityLabel = accessibilityLabel
        self.tintColor = tintColor
        self.menu = menu
        self.action = action
    }
}
#endif
