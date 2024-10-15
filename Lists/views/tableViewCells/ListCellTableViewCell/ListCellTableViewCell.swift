//
//  ListCellTableViewCell.swift
//  Lists
//
//  Created by Vigneshwar Devendran on 15/10/24.
//

import UIKit

class ListCellTableViewCell: UITableViewCell {

    let identifier = "list.cell"
    
    lazy var listTitle: UILabel = {
        let label = UILabel()
        label.text = "Sample List"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(listTitle)
        
        NSLayoutConstraint.activate([
            listTitle.topAnchor.constraint(equalTo: contentView.topAnchor),
            listTitle.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            listTitle.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            listTitle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
