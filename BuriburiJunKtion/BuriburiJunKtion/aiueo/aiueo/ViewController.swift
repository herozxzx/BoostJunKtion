//
//  ViewController.swift
//  aiueo
//
//  Created by 加藤　大誠 on 2018/10/17.
//  Copyright © 2018年 BoostJunKtion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var subname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.text = "aiueo"
        subname.text = "アイウエオ"
        
    }


}

