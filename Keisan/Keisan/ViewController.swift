//
//  ViewController.swift
//  Keisan
//
//  Created by momosuke on 2020/07/18.
//  Copyright © 2020 momosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
        
    var minus = 0
    
    var multi = 0
    
    var div = 0
    
    var last = "ryosuke"
    var first = "hyakuta"
    var result = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // 足し算
        count = 10
        count = 11
        count = count + 1
        
        // 引き算
        minus = 10
        minus = minus - 5
        
        // 掛け算
        multi = 10
        multi = multi * 10
        
        // 割り算
        div = 10
        div = div / 2
        
        result = last + " " + first
        
    }


}

