//
//  ViewController.swift
//  ToolTip
//
//  Created by AFFIXUS IMAC1 on 6/4/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import AMPopTip

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var collectioView: UICollectionView!
    @IBOutlet var oView: UIView!
    
    let popTip = PopTip()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       collectioView.delegate = self
        collectioView.dataSource = self
        
        collectioView.reloadData()
        
        popTip.bubbleColor = .green
    }

    
    @IBAction func btShowPopUp(_ sender: UIButton) {
        
        popTip.show(customView: oView, direction: .down, in: view, from: sender.frame)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! tPCollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! tPCollectionViewCell
   
////        cell.btTp.tag = indexPath.row
//       cell.btTp.addTarget(self, action: #selector(self.btnClick(_:)), for: .touchUpInside)
        
        
        popTip.show(customView: customView, direction: .down, in: view, from: cell.frame)
    }
    
//    @objc func btnClick(_ sender:UIButton) {
//        print("My custom button action")
//         popTip.show(customView: customView, direction: .down, in: view, from: sender.frame)
//    }
    
}

