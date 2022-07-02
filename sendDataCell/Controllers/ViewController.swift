//
//  ViewController.swift
//  sendDataCell
//
//  Created by Sajjad Sarkoobi on 2.07.2022.
//

import UIKit

class ViewController: UIViewController {

    //IBoutlets:
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .systemBackground
        
        self.setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.reloadTableView()
    }
}

//TableViewData:
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.registerCells()
    }
    
    func registerCells() {
        tableView.register(buttonCellTableViewCell.register(), forCellReuseIdentifier: buttonCellTableViewCell.identifier)
    }
    
    func reloadTableView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: buttonCellTableViewCell.identifier, for: indexPath) as? buttonCellTableViewCell else {
            return UITableViewCell()
        }
        cell.index = indexPath.row
        cell.delegate = self
        cell.selectionStyle = .none
        return cell
    }
}

extension ViewController: buttonCellTableViewCellDelegate {
    func buttonAClicked(data: Int) {
        print("A\(data)")
        DispatchQueue.main.async {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "AViewController") as! AViewController
            controller.index = data
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func buttonBClicked(data: Int) {
        print("B\(data)")
        DispatchQueue.main.async {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "BViewController") as! BViewController
            controller.index = data
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
