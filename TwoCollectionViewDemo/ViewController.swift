//
//  ViewController.swift
//  TwoCollectionViewDemo
//
//  Created by Mahesh Prasad on 23/06/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet weak var cView: UICollectionView!
    @IBOutlet weak var cView2: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == cView2){
            return 10
        }
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = UIColor.red
        if (collectionView == cView2) {
            let cell2 = cView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.backgroundColor = UIColor.blue
            return cell2
        }
        return cell
    }
    

}

