//
//  ViewController.swift
//  ColorsNew
//
//  Created by Ihor Sukhachov on 15.01.2026.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tempButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ToColorDetailVC", sender: nil)
    }
    
}

