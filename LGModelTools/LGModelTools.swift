//
//  LGModelTools.swift
//  LGModelTools
//
//  Created by dev.liufeng on 16/5/12.
//  Copyright © 2016年 dev.liufeng@gmail.com. All rights reserved.
//

import UIKit

class LGModelTools: NSObject {
    class func propertyListWithJson(jsonString:AnyObject?){
        if let dicForJson = jsonString as? NSDictionary{
            for key in dicForJson.allKeys{
                print("var \(key):"+getTypeForObject(dicForJson.objectForKey(key))+"?")
            }
            print("<-------------------------------------->")
            for key in dicForJson.allKeys{
                let string1 = "\(key)" + "    <- map "
                
                let string2 = "[" + "\"" + "\(key)"+"\""+"]"
                
                print("\(string1+string2)")
            }
        }
    }
    
        private class func getTypeForObject(object:AnyObject?) -> String {
            var type:String = String()
            if let object = object{
                type = String(object.dynamicType)
                if type.hasSuffix("Number"){
                    type = "Int"
                }
                if type.hasSuffix("String"){
                    type = "String"
                }
                else {
                    type = "AnyObject"
                }
            }
            return type
        }
}
