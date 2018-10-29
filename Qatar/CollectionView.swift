//
//  CollectionView.swift
//  Qatar
//
//  Created by 加藤　大誠 on 2018/10/29.
//  Copyright © 2018 BoostJunKtion. All rights reserved.
//

import Foundation

import UIKit

class CollectionView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = UIColor.init(red: 230/255, green: 255/255, blue: 230/255, alpha: 90/100)
        
        return cell
    }
    
    
}
