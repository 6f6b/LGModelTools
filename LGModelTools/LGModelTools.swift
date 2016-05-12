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
                print("let \(key):")
            }
        }
    }
    
    //    func typeForObject(object:AnyObject?) -> String {
    //        let type:String
    //        if let obj = object{
    //            print("\(obj)")
    //        }
    //    }
}
