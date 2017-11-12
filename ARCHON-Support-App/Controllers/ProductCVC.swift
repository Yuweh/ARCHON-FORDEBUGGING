//
//  ProductCVC.swift
//  ARCHON-Prototype1
//
//  Created by Francis Jemuel Bergonia on 12/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit
import SafariServices

class ProductCVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    //MARK: PROPERTIES
    
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]()
    
    
    //MAR: Inculded
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }
    
    
    //MARK: Collection View
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getProducts().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }

}
