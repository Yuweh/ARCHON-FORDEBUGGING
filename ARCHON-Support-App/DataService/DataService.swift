//
//  File.swift
//  ARCHON-Support-App
//
//  Created by Francis Jemuel Bergonia on 11/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    //Dictionary to Populate Rows for JOB LEVELS
    private let categories = [
        Category(title: "Fresh Graduates", imageName: "freshGrad.png"),
        Category(title: "Jr. Developers", imageName: "juniorDev.png"),
        Category(title: "Sr. Developers", imageName: "seniorDev.png"),
        Category(title: "IT Bussines Support", imageName: "businessSupport.png"),
        Category(title: "Non-IT Positions", imageName: "nonITPost.png"),
        ]
    
    private let openings = [
        Product(title: ".NET Developer", imageName: "cSharp.png"),
        Product(title: "JAVA Developer", imageName: "java.png"),
        Product(title: "Android Developer", imageName: "android.png"),
        Product(title: "iOS App Developer", imageName: "apple.png"),
        Product(title: "Angular Developer", imageName: "angular.png"),
        Product(title: "PHP Developer", imageName: "php.png"),
        ]
    
    //For Referral
    var referrals = [
        Referral(fullName: "Francis Bergonia", positionTitle: "iOS App Developer"),
        Referral(fullName: "Jem Bergonia", positionTitle: "Nutrionist"),
        Referral(fullName: "Fae Bergonia", positionTitle: "HR Officer"),
        Referral(fullName: "Xian Bergonia", positionTitle: "Space Engineer"),
        ]
    
    
    //MARK: Related Functions
    
    func getReferrals() -> [Referral] {
        return referrals
    }
    
    func addReferrals() -> [Referral] {
        return referrals
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts() -> [Product] {
        return openings
    }
    
}
