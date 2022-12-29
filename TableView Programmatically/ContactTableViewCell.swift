//
//  ContactTableViewCell.swift
//  TableView Programmatically
//
//  Created by Jonathan Ricky Sandjaja on 29/12/22.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        containerView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor).isActive = true
        
        containerView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 10).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 20).isActive = true
        
        self.contentView.addSubview(containerView)
        containerView.centerYAnchor.constraint(equalTo: self.containerView.centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        
        return label
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        
        return view
    }()
    
    

}
