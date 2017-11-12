//
//  Category.swift
//  ARCHON-Support-App
//
//  Created by Francis Jemuel Bergonia on 11/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
