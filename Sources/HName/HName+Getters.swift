//
//  HName+Getters.swift
//  
//
//  Created by Hady Nourallah on 2021-09-29.
//

import Foundation

@objc public extension HName {
    @objc var firstName: String? {
        return self.personComponents?.givenName
    }
    
    @objc var lastName: String? {
        return self.personComponents?.familyName
    }
        
    @objc var namePrefix: String? {
        return self.personComponents?.namePrefix
    }
    
    @objc var abbrivation: String? {
        return self.formatted(.abbreviated)
    }
    
    @objc var fullName: String? {
        guard let pc = personComponents else {
            return nil
        }
        let formatter = PersonNameComponentsFormatter()
        formatter.style = .default
        return formatter.string(from: pc)
    }
}
