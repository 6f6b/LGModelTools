//
//  ViewController.swift
//  LGModelTools
//
//  Created by dev.liufeng on 16/5/12.
//  Copyright © 2016年 dev.liufeng@gmail.com. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://v5.pc.duomi.com/search-ajaxsearch-searchall?kw=andyLau&pi=1&pz=100").responseJSON { respon in
            if respon.result.isSuccess{
                LGModelTools.propertyListWithJson(respon.result.value)
            }
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

