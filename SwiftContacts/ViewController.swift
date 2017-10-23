//
//  ViewController.swift
//  SwiftContacts
//
//  Created by Marcelo on 10/23/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit
import Contacts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let store = CNContactStore()
        
        let contact = CNMutableContact()
        contact.givenName = "Arthur Henry"
        contact.organizationName = "Crew Co"
        contact.note = "Endereço fïsico do item"
        contact.phoneNumbers = [CNLabeledValue(label:CNLabelHome, value:CNPhoneNumber(stringValue:"(555) 555-5555"))]
        
        
        let saveContext = CNSaveRequest()
        saveContext.add(contact, toContainerWithIdentifier: nil)
        
        do {
            try store.execute(saveContext)
            print("😛 contact stored 👍")
            print("☎️ 👍")
        } catch {
            print("‼️ error: \(error)")
        }
        
    }

}

