//
//  Platform+MSL.swift
//  Charts
//
//  Created by Greg Hart on 1/27/21.
//

// MARK: - UIKit
#if canImport(UIKit)
import UIKit

#if !os(tvOS)
    public typealias NSUILongPressGestureRecognizer = UILongPressGestureRecognizer

    extension NSUILongPressGestureRecognizer
    {
        final func nsuiNumberOfTouches() -> Int
        {
            return numberOfTouches
        }
        
        final var nsuiNumberOfTapsRequired: Int
            {
            get
            {
                return self.numberOfTapsRequired
            }
            set
            {
                self.numberOfTapsRequired = newValue
            }
        }
    }
#endif
#endif

// MARK: - AppKit
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

public typealias NSUILongPressGestureRecognizer = NSPressGestureRecognizer

/** The 'tap' gesture is mapped to clicks. */
extension NSUILongPressGestureRecognizer
{
    final func nsuiNumberOfTouches() -> Int
    {
        return 1
    }
}

#endif
