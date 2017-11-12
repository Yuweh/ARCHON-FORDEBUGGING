//
//  ReferralCell.swift
//  ARCHON-Prototype1
//
//  Created by Fulltime on 12/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class ReferralCell: UITableViewCell {

    //MARK: Properties of CategoryCell
    
    @IBOutlet weak var referralName: UILabel!
    @IBOutlet weak var referralPosition: UILabel!
    
    
// referralName: UILabel!
//referralPosition: UILabel!

    
    //Designated Function
    func updateViews(referral: Referral) {
        referralName.text = referral.fullName
        referralPosition.text = referral.positionTitle
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
