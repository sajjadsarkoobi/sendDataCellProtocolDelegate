//
//  AViewController.swift
//  sendDataCell
//
//  Created by Sajjad Sarkoobi on 2.07.2022.
//

import UIKit

class AViewController: UIViewController {

    //IBOutlets
    @IBOutlet weak var textLabel: UILabel!
    
    //Vaiables
    var index: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    func configView() {
        self.title = "A View Controller"
        self.textLabel.text = "A \(index)"
    }
}
