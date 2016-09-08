//
//  JSService.swift
//  JavaScriptSample
//
//  Created by tho on 9/5/16.
//  Copyright © 2016 ThoNguyen. All rights reserved.
//

import Foundation
import JavaScriptCore

class JSService {
    
    lazy var context: JSContext? = {
        let context = JSContext()
        
        // 1
        guard let
            commonJSPath = NSBundle.mainBundle().pathForResource("common", ofType: "js") else {
                print("Unable to read resource files.")
                return nil
        }
        
        // 2
        do {
            let common = try String(contentsOfFile: commonJSPath, encoding: NSUTF8StringEncoding)
            context.setObject(JS.self, forKeyedSubscript: "JS")
            context.evaluateScript(common)
        } catch (let error) {
            print("Error while processing script file: \(error)")
        }
        
        return context
    }()
    
    
    func callWebView() {
        // 1
        guard let context = context else {
            print("JSContext not found.")
            return
        }
        
        // 2
        let function = context.objectForKeyedSubscript("callWebView")
        function.callWithArguments([])

    }
    
    
    
}