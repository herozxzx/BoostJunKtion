//
//  EditViewController.swift
//  BuriburiJunKtion
//
//  Created by 加藤　大誠 on 2018/10/17.
//  Copyright © 2018年 BoostJunKtion. All rights reserved.
//

import Foundation
import UIKit

class EditViewController: UIViewController {
    
    
    @IBOutlet weak var label21: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 198/255, green: 144/255, blue: 99/255, alpha: 90/100)
        label21.text = "Just practice."
        
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
}


