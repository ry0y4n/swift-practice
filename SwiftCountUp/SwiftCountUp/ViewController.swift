//
//  ViewController.swift
//  SwiftCountUp
//
//  Created by momosuke on 2020/07/18.
//  Copyright © 2020 momosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    var resultBox = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func plus(_ sender: Any) {
        resultBox = resultBox + 1
        countLabel.text = String(resultBox)
    }
    
    @IBAction func minus(_ sender: Any) {
        resultBox = resultBox - 1
        countLabel.text = String(resultBox)
    }
}

