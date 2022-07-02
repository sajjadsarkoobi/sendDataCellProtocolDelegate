//
//  buttonCellTableViewCell.swift
//  sendDataCell
//
//  Created by Sajjad Sarkoobi on 2.07.2022.
//

import UIKit

protocol buttonCellTableViewCellDelegate: AnyObject {
    func buttonAClicked(data: Int)
    func buttonBClicked(data: Int)
}

class buttonCellTableViewCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "buttonCellTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "buttonCellTableViewCell", bundle: nil)
    }
    
    //IBOutlets
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var buttonA: UIButton!
    @IBAction func buttonAAction(_ sender: UIButton) {
        self.delegate?.buttonAClicked(data: index)
    }
    

    @IBOutlet weak var buttonB: UIButton!
    @IBAction func buttonBAction(_ sender: UIButton) {
        self.delegate?.buttonBClicked(data: index)
    }
    
    //Variables:
    weak var delegate: buttonCellTableViewCellDelegate?
    var index: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
