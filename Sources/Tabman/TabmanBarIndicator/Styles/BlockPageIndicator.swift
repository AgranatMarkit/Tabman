//
//  TabmanBlockIndicator.swift
//  Tabman
//
//  Created by Merrick Sapsford on 09/03/2017.
//  Copyright © 2017 Merrick Sapsford. All rights reserved.
//

import UIKit

internal class BlockPageIndicator: PageIndicator {
    
    //
    // MARK: Properties
    //
    
    override var intrinsicContentSize: CGSize {
        self.superview?.layoutIfNeeded()
        return self.superview?.bounds.size ?? .zero
    }
    
    /// The color of the indicator.
    override public var tintColor: UIColor! {
        didSet {
            self.backgroundColor = tintColor
        }
    }
    
    //
    // MARK: Lifecycle
    //
    
    override func preferredLayerPosition() -> PageIndicator.LayerPosition {
        return .background
    }
    
    public override func construct() {
        
        self.tintColor = TabmanBar.Appearance.defaultAppearance.indicator.color
    }
    
    override func itemTransitionType() -> TabmanItemTransition.Type? {
        return TabmanItemMaskTransition.self
    }
}
