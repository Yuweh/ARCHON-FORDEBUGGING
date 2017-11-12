//
//  ViewController.swift
//  ARCHON-Support-App
//
//  Created by Francis Jemuel Bergonia on 06/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit
import SafariServices

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func companyWebsiteClicked(_ sender: UIButton) {
        let url = URL(string:"http://www.archon-cssi.com")
        
        if let url = url{
            let safariVC =  SFSafariViewController(url: url)
            
            present(safariVC, animated: true)
        }
    }
    
    @IBAction func facebookClicked(_ sender: UIButton) {
        let url = URL(string:"https://www.facebook.com/acssicareers/")
        
        if let url = url{
            let safariVC =  SFSafariViewController(url: url)
            
            present(safariVC, animated: true)
        }
    }
    
    @IBAction func linkedinClicked(_ sender: UIButton) {
        let url = URL(string:"https://www.linkedin.com/company/1760873/")
        
        if let url = url{
            let safariVC =  SFSafariViewController(url: url)
            
            present(safariVC, animated: true)
        }
    }
    
    @IBAction func rateUsClicked(_ sender: UIButton) {
        let url = URL(string:"https://www.jobstreet.com.ph/en/companies/492138-archon-consulting-n-system-services-inc")
        
        if let url = url{
            let safariVC =  SFSafariViewController(url: url)
            
            present(safariVC, animated: true)
        }
    }
    
}

