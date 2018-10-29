//
//  EditViewController2.swift
//  BuriburiJunKtion
//
//  Created by 加藤　大誠 on 2018/10/22.
//  Copyright © 2018 BoostJunKtion. All rights reserved.
//

import Foundation
import UIKit

class EditViewController2: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var inputText2: UITextField!
    @IBOutlet weak var inputText3: UITextField!
    @IBOutlet weak var inputText4: UITextField!
    @IBOutlet weak var inputText5: UITextField!
    @IBOutlet weak var inputText6: UITextField!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var outputText: UILabel!
    @IBOutlet weak var pickerView2: UIPickerView!
    
    
    let dataList = ["iOS", "macOS", "tvOS", "Android", "Windows"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 198/255, green: 144/255, blue: 99/255, alpha: 90/100)
         
        inputText.placeholder = "タイトル"
        inputText2.placeholder = "場所"
        inputText3.placeholder = "終日"
        inputText4.placeholder = "開始"
        inputText5.placeholder = "終了"
        inputText6.placeholder = "時日給選択ボタン"
        
        // プロトコルの設定
        pickerView2.delegate = self
        pickerView2.dataSource = self
        
        testLabel.text = "乃木坂46\n十四福神"
    }
    
    @IBAction func inputText(_ sender: Any) {
        outputText.text = inputText.text
        inputText.endEditing(true)
    }
    @IBAction func inputText2(_ sender: Any) {
        outputText.text = inputText.text
        inputText.endEditing(true)
    }
    @IBAction func inputText3(_ sender: Any) {
        outputText.text = inputText.text
        inputText.endEditing(true)
    }
    @IBAction func inputText4(_ sender: Any) {
        outputText.text = inputText.text
        inputText.endEditing(true)
    }
    @IBAction func inputText5(_ sender: Any) {
        outputText.text = inputText.text
        inputText.endEditing(true)
    }
    @IBAction func inputText6(_ sender: Any) {
        outputText.text = inputText.text
        inputText.endEditing(true)
    }
   
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    func numberOfComponents(in pickerView2: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewの行数、リストの数
    func pickerView(_ pickerView2: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    // UIPickerViewの最初の表示
    func pickerView(_ pickerView2: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return dataList[row]
    }
    // UIPickerViewのRowが選択された時の挙動
    func pickerView(_ pickerView2: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        
        testLabel.text = dataList[row]
        
    }
    
}
