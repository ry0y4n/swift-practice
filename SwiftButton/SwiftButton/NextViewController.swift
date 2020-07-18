//
//  NextViewController.swift
//  SwiftButton
//
//  Created by momosuke on 2020/07/18.
//  Copyright © 2020 momosuke. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(_ sender: Any) {
        changeLabel.text = "暗号が解除されました"
    }
    
}
