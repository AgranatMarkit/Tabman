//
//  BarInsets.swift
//  Tabman
//
//  Created by Merrick Sapsford on 10/05/2017.
//  Copyright © 2017 Merrick Sapsford. All rights reserved.
//

import Foundation

/// Collection of inset values required to inset child content below bar.
public struct BarInsets {
    
    /// Raw TabmanBar UIEdgeInsets
    internal let barInsets: UIEdgeInsets
    /// The insets that determine the safe area for the view controller view.
    public let safeArea: UIEdgeInsets
    /// The inset required for the bar.
    public var bar: CGFloat {
        return max(barInsets.top, barInsets.bottom)
    }
    
    /// The total insets required to display under the TabmanBar.
    ///
    /// This takes topLayoutGuide, bottomlayoutGuide and the bar height into account.
    /// Set on a UIScrollView's contentInset to manually inset the contents.
    public var all: UIEdgeInsets {
        let top = safeArea.top + barInsets.top
        let bottom = safeArea.bottom + barInsets.bottom
        
        return UIEdgeInsets(top: top, left: 0.0, bottom: bottom, right: 0.0)
    }
    
    // MARK: Init
    
    internal init(safeAreaInsets: UIEdgeInsets,
                  bar: UIEdgeInsets) {
        self.safeArea = safeAreaInsets
        self.barInsets = bar
    }
    
    internal init() {
        self.init(safeAreaInsets: .zero,
                  bar: .zero)
    }
    
    internal static var zero: BarInsets {
        return BarInsets()
    }
    
}
