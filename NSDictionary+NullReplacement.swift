//
//  NSDictionary+NullReplacement.swift
//  
//
//  Created by Manish Pathak on 19/11/15.
//  Copyright (c) 2015 iDevelopers. All rights reserved.
//

import Foundation
extension NSDictionary {

    func dictionaryByReplacingNullsWithBlanks() -> (NSDictionary){
        
        let replaced: NSDictionary = self.mutableCopy() as! NSDictionary
        let nul: AnyObject = NSNull()
        let blank: String = ""
        for key in self .allKeys {
            
            var object : AnyObject = self .objectForKey(key)!
            if object as! NSObject == NSNull()
            {
                replaced .setValue(blank, forKey: key as! String)
            }
            else {
                if object.isKindOfClass(NSDictionary) || object.isKindOfClass(NSArray)
                {
                    replaced.setValue(object .dictionaryByReplacingNullsWithBlanks(), forKey: key as! String)
                }
            }
        }
        return NSDictionary(dictionary: replaced);
    }
}
