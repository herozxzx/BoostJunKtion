//
//  ViewController.swift
//  BuriburiJunKtion
//
//  Created by 加藤　大誠 on 2018/10/15.
//  Copyright © 2018年 BoostJunKtion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var kabel4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 198/255, green: 144/255, blue: 99/255, alpha: 90/100)
        label.text = "金額入力"
        label2.text = "収入"
        label3.text = "支出"
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }

}

