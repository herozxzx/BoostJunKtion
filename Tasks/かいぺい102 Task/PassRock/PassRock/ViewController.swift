//
//  ViewController.swift
//  PassRock
//
//  Created by Hiromu Komazawa on 2018/10/17.
//  Copyright © 2018年 boostjunktion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var subname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.text = "パスコード入力"
        subname.text = "パスコードを入力して下さい。"
    }


}

