//
//  ProductCell.swift
//  ARCHON-Prototype1
//
//  Created by Francis Jemuel Bergonia on 12/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    

    //MARK: Functions
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
    }
}

