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
        createRandomColors()
        // Do any additional setup after loading the view.
    }


    func createRandomColors() {
        for _ in 0..<50 {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
            colors.append(color)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailVC
        destinationVC.color = sender as? UIColor
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {return UITableViewCell()}
        let color = colors[indexPath.row]
        cell.backgroundColor = color
         return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorDetailVC", sender: color)
    }
}
