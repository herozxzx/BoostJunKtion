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
    @IBOutlet weak var labelBGC2: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var datePicker: UIDatePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 198/255, green: 144/255, blue: 99/255, alpha: 90/100)
        label21.text = "カレンダー"
        label21.font = label21.font.withSize(30)
        labelBGC2.backgroundColor = UIColor.init(red: 209/255, green: 172/255, blue: 181/255, alpha: 90/100)
    datePicker.datePickerMode=UIDatePicker.Mode.dateAndTime
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        textField.inputView = datePicker
        
        // 決定バーの生成
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        toolbar.setItems([spacelItem, doneItem], animated: true)
        
        // インプットビュー設定
        textField.inputView = datePicker
        textField.inputAccessoryView = toolbar
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    @objc func done() {
        textField.endEditing(true)
        
        // 日付のフォーマット
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        textField.text = "\(formatter.string(from: Date()))"
    }
}


