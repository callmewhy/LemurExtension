//
//  UIStoryboardSegue+Lemur.swift
//  LemurExtension
//
//  Created by why on 10/28/15.
//  Copyright © 2015 Lemur. All rights reserved.
//

import UIKit

public protocol SegueHandlerType {
    typealias SegueIdentifier: RawRepresentable
}

public extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String {
    func performSegueWithIdentifier(identifier: SegueIdentifier, sender: AnyObject?) {
        performSegueWithIdentifier(identifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        guard
            let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier) else {
                fatalError("INVALID SEGUE IDENTIFIER \(segue.identifier)")
        }
        return segueIdentifier
    }
}