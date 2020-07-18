//
//  ViewController.swift
//  SwiftImageView
//
//  Created by momosuke on 2020/07/18.
//  Copyright © 2020 momosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backImageView: UIImageView!
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count = 1
    }

    @IBAction func change(_ sender: Any) {
        if (count == 0) {
            backImageView.image = UIImage(named: "back1.jpg")
            count = 1
        } else if (count == 1) {
            backImageView.image = UIImage(named: "back2.jpg")
            count = 0
        }
    }
    
}

