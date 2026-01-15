//
//  ViewController.swift
//  ColorsNew
//
//  Created by Ihor Sukhachov on 15.01.2026.
//

import UIKit

class ViewController: UIViewController  {
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func createRandomCOlors() {
        for _ in 0..<50 {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
            colors.append(color)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorDetailVC", sender: nil)
    }
}
