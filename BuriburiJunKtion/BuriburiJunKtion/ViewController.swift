//
//  ViewController.swift
//  BuriburiJunKtion
//
//  Created by 加藤　大誠 on 2018/10/15.
//  Copyright © 2018年 BoostJunKtion. All rights reserved.
//

import UIKit

class ViewController:
UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var labelBGC: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    let dataList = [
        "秋元 真夏","生田 絵梨花","梅澤 美波","衛藤 美彩",
        "齋藤 飛鳥","桜井 玲香","白石 麻衣","西野 七瀬",
        "星野 みなみ","堀 未央奈","松村 沙友理","山下 美月",
        "与田 祐希","若月 佑美"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 198/255, green: 144/255, blue: 99/255, alpha: 90/100)
        
        
        label.textColor = UIColor.blue
        label.font = label.font.withSize(30)
        label2.text = "収入"
        label2.textColor = UIColor.lightGray
        label3.text = "支出"
        label3.textColor = UIColor.orange
        labelBGC.backgroundColor = UIColor.init(red: 209/255, green: 172/255, blue: 181/255, alpha: 90/100)
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        label.text = "乃木坂46\n十四福神"
        
       
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewの行数、リストの数
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    // UIPickerViewの最初の表示
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return dataList[row]
    }
    
    // UIPickerViewのRowが選択された時の挙動
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        
        label.text = dataList[row]
        
    }
   
    
}


