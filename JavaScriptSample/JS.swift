//
//  JS.swift
//  JavaScriptSample
//
//  Created by tho on 9/5/16.
//  Copyright © 2016 ThoNguyen. All rights reserved.
//

import Foundation
import JavaScriptCore

@objc protocol JavaScriptExports: JSExport {
    
    static func callWebView()
    static func SaveData(data: String)
    static func LoadData() -> String
}

class JS: NSObject, JavaScriptExports {
    class func callWebView(){
        NSNotificationCenter.defaultCenter().postNotificationName("pushWebView", object: nil)
    }
    
    class func SaveData(data: String) {
        NSUserDefaults.standardUserDefaults().setObject(data, forKey: "JSSave")
        print("Save")
    }
    
    class func LoadData() -> String {
        let data = String(NSUserDefaults.standardUserDefaults().stringForKey("JSSave")!)
        return data
    }
    
    
}