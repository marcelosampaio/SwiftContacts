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
        contact.namePrefix = "Hoff"
        contact.nameSuffix = "Henry"
        
        let saveContext = CNSaveRequest()
        saveContext.add(contact, toContainerWithIdentifier: nil)
        
        do {
            try store.execute(saveContext)
            print("😛 contact stored 👍")
        } catch {
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

