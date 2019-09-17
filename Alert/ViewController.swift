//
//  ViewController.swift
//  Alert
//
//  Created by Nazim Uddin on 17/9/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Alert Title", message: "This is alert message.", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Your Name"
        }
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel Action")
        }
        let defaultBtn = UIAlertAction(title: "Default", style: .default) { (action) in
            print("Default Action")
            print(alert.textFields?.first?.text!)
        }
        alert.addAction(cancelBtn)
        alert.addAction(defaultBtn)
        present(alert, animated: true, completion: nil)
    }
    
}

