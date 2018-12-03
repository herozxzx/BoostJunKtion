//
//  ViewController.swift
//  callenderscreen
//
//  Created by Hiromu Komazawa on 2018/12/03.
//  Copyright © 2018年 boostjunktion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var callender: UICollectionView!
    
        let stamps = ["1F600", "1F601", "1F602", "1F603", "1F604", "1F605", "1F606", "1F606",
                      "1F607", "1F608", "1F609", "1F60A", "1F60B", "1F60C", "1F60D", "1F60E", "1F60F",
                      "1F610", "1F611", "1F612", "1F613", "1F614", "1F615", "1F616", "1F617", "1F618",
                      "1F619", "1F61A", "1F61B", "1F61C", "1F61D", "1F61E", "1F61F"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // DelegateとDataSourceの紐付け
            self.callender.delegate = self
            self.callender.dataSource = self
        }
    }

    extension ViewController: UICollectionViewDelegate {
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // スタンプが押された時の処理を書く
        }
    }
    
    extension ViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return self.stamps.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            if let label = cell.contentView.viewWithTag(1) as? UILabel {
                // CollectionViewCellのUILabelを取得し、絵文字をに代入する
                let text = UnicodeScalar(Int(self.stamps[indexPath.row], radix: 16)!)
                label.text = text?.description
            }
            
            return cell
        }
}
