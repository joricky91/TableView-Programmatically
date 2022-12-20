//
//  ViewController.swift
//  TableView Programmatically
//
//  Created by Jonathan Ricky Sandjaja on 20/12/22.
//

import UIKit

let contactArray: [Contact] = [
    Contact(name: "Ricky", title: "Weebs", city: "Bandung"),
    Contact(name: "Hocky", title: "Meme Master", city: "Bandung"),
    Contact(name: "Jeffry", title: "Keyboardist", city: "Bandung"),
    Contact(name: "James", title: "Shitpost Master", city: "Bandung"),
    Contact(name: "Valdi", title: "Daddy Driver", city: "Bandung"),
    Contact(name: "Della", title: "Fine Dining and Ball", city: "Bandung"),
    Contact(name: "Jason", title: "Mr. Polos", city: "Bandung"),
    Contact(name: "Icel", title: "Mangkokku and Bu Kris", city: "Bandung"),
    Contact(name: "Balqis", title: "Promo Queen", city: "Bandung"),
    Contact(name: "Pavel", title: "pwelpwel", city: "Bandung"),
    Contact(name: "Devin", title: "Setan Alkohol", city: "Bandung"),
    Contact(name: "William", title: "Logbook", city: "Bandung"),
    Contact(name: "Matthew", title: "Mr. Workaholic", city: "Bandung")
]

class ContactViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func setupTableView() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contactArray[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

