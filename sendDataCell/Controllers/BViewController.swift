//
//  BViewController.swift
//  sendDataCell
//
//  Created by Sajjad Sarkoobi on 2.07.2022.
//

import UIKit

class BViewController: UIViewController {

    //IBOutlets:
    @IBOutlet weak var textLabel: UILabel!
    
    var index: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    func configView() {
        self.title = "B View Controller"
        self.textLabel.text = "B \(index)"
    }
}
