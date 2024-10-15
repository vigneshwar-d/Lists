//
//  ListItemsTableViewCell.swift
//  Lists
//
//  Created by Vigneshwar Devendran on 15/10/24.
//

import UIKit

class ListItemsTableViewCell: UITableViewCell {

    let identifier = "items.cell"
    
    lazy var itemName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(itemName)
        
        NSLayoutConstraint.activate([
            itemName.topAnchor.constraint(equalTo: contentView.topAnchor),
            itemName.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            itemName.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            itemName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
