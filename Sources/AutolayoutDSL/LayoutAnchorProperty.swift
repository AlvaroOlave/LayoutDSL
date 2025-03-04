//
//  LayoutAnchorProperty.swift
//
//  Created by Álvaro Olave Bañeres on 27/6/23.
//
#if os(iOS)
import Foundation
import UIKit

public struct LayoutAnchorProperty<Anchor: LayoutAnchor> {
    let anchor: Anchor
    
}

extension LayoutAnchorProperty {
    @discardableResult
    func equal(to otherAnchor: Anchor,
               offsetBy constant: CGFloat = 0,
               priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalTo: otherAnchor,
                                           constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    func greaterThanOrEqual(to otherAnchor: Anchor,
                            offsetBy constant: CGFloat = 0,
                            priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: otherAnchor,
                                           constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    func lessThanOrEqual(to otherAnchor: Anchor,
                         offsetBy constant: CGFloat = 0,
                         priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualTo: otherAnchor,
                                           constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
}
#endif
