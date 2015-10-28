//
//  LeanCloud+Lemur.swift
//  LemurExtension
//
//  Created by why on 10/28/15.
//  Copyright © 2015 Lemur. All rights reserved.
//

import AVOSCloud

extension AVObject {
    func dictionaryForKey(key: String) -> NSDictionary? {
        return self.objectForKey(key) as? NSDictionary
    }
    func stringForKey(key: String) -> String? {
        return self.objectForKey(key) as? String
    }
    func dateForKey(key: String) -> NSDate? {
        return self.objectForKey(key) as? NSDate
    }
    func doubleForKey(key: String) -> Double? {
        let o = self.objectForKey(key)
        if let r = o as? Double {
            return r
        } else if let r = o as? String {
            return Double(r)
        }
        return nil
    }
}