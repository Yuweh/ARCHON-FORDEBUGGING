//
//  CategoryCell.swift
//  ARCHON-Support-App
//
//  Created by Francis Jemuel Bergonia on 11/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    //MARK: Properties of CategoryCell
    
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    //Designated Function
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryName.text = category.title
    }
    
    
    
    //MARK: Methods for TVC
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
