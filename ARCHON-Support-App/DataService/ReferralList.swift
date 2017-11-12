//
//  ReferralList.swift
//  ARCHON-Prototype1
//
//  Created by Fulltime on 12/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

var list = ["Fae Bergonia", "Xian Jae Bergonia", "Cassiopeia Lin", "Amuro Ray"]
var list2 = ["HR Officer", "Space Engineer", "Nutrionist", "Pilot"]

class ReferralList: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var referrals = [Referral]()
    
    //MARK: Properties
    
    @IBOutlet weak var referralCollection: UITableView!
    
    
    //MARK: Load Sample
    
    private func loadSampleReferrals() {
        let referral1 = Referral(fullName: "Fae Bergonia", positionTitle: "HR Officer")
        let referral2 = Referral(fullName: "Xian Jae Begonia", positionTitle: "GN Engineer")
        let referral3 = Referral(fullName: "Cassiopeia Bergonia", positionTitle: "Tech Engineer")
        referrals += [referral1, referral2, referral3]
    }
    
    //MARK: Standard Methods
    
   override func viewDidAppear(_ animated: Bool) {
        referralCollection.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        referralCollection.dataSource = self
        referralCollection.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return referrals.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RefferalCell", for: indexPath)
//            let cell = UITableViewCell(style: .default, reuseIdentifier: "RefferalCell")
            let referral = referrals[indexPath.row]
            cell.referralName.text = referral.fullName.text
            cell.referralPosition.text = referral.positionTitle.text
            
            
//            cell.fullName.text = referral.fullName
//            cell.positionTitle.text = referral.positionTitle
//                cell.textLabel?.text = list[indexPath.row]
//                cell.textLabel?.text = list2[indexPath.row]
//            cell.nameOfReferral.text = list[indexPath.row]
//            cell.positionOfReferral.text = list2[indexPath.row]
            return cell
            
        }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            
            
//            list.remove(at: indexPath.row)
//            list2.remove(at: indexPath.row)
            referralCollection.reloadData()
        }
    }
    
}
