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
//            if let object = object{
//                type = String(object.dynamicType)
//                if type.hasSuffix("Number"){
//                    type = "Int"
//                }
//                if type.hasSuffix("String"){
//                    type = "String"
//                }
//                else {
//                    type = "AnyObject"
//                }
//            }
                // Basic types
            if object is NSNumber{
                return "NSNumber"
            }
            if object is Bool{
                return "NSNumber"
            }
            if object is Int{
                return "Bool"
            }
            if object is Double{
                return "Double"
            }
            if object is Float{
                return "Float"
            }
            if object is String{
                return "String"
            }
            
            // Arrays
            if object is Array<NSNumber>{
                return "[NSNumber]"
            }
            if object is Array<Bool>{
                return "[Bool]"
            }
            if object is Array<Int>{
                return "[Int]"
            }
            if object is Array<Double>{
                return "[Double]"
            }
            if object is Array<Float>{
                return "[Float]"
            }
            if object is Array<String>{
                return "[String]"
            }
            if object is Array<AnyObject>{
                return "[AnyObject]"
            }
            if object is Array<Dictionary<String, AnyObject>>{
                return "[[String:AnyObject]]"
            }
            
            // Dictionaries
            if object is Dictionary<String, NSNumber>{
                return "[String:NSNumber]"
            }
            if object is Dictionary<String, Bool>{
                return "[String:Bool]"
            }
            if object is Dictionary<String, Int>{
                return "[String:Int]"
            }
            if object is Dictionary<String, Double>{
                return "[String:Double]"
            }
            if object is Dictionary<String, Float>{
                return "[String:Float]"
            }
            if object is Dictionary<String, String>{
                return "[String:String]"
            }
            if object is Dictionary<String, AnyObject>{
                return "[String:AnyObject]"
            }
            return ""
        }
}
