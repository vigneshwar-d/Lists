//
//  AddListVC.swift
//  Lists
//
//  Created by Vigneshwar Devendran on 17/10/24.
//

import UIKit
import CoreData

class AddListVC: UIViewController {
    
    let context = ((UIApplication.shared.delegate) as! AppDelegate).persistenceContainer.viewContext
    
    lazy var listNameLabel: UILabel = {
        let label = UILabel()
        label.text = "List name:"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var listNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter new list name"
        textField.backgroundColor = .lightGray
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var addButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.titleLabel?.font = .systemFont(ofSize: 19, weight: .semibold)
        button.addTarget(self, action: #selector(addAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        
        view.backgroundColor = .white
        view.addSubview(listNameLabel)
        view.addSubview(listNameTextField)
        view.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            listNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            listNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            listNameLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            listNameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            listNameTextField.topAnchor.constraint(equalTo: listNameLabel.bottomAnchor, constant: 15),
            listNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            listNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            listNameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            addButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),
            addButton.heightAnchor.constraint(equalToConstant: 40),
            addButton.widthAnchor.constraint(equalToConstant: 180),
            addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
    
    @objc private func addAction() {
        
        if listNameTextField.hasText {
            let newList = ListDataModel(context: context)
            newList.name = listNameTextField.text!
            
            do {
                try context.save()
            } catch {
                print(error.localizedDescription)
            }
            
            self.dismiss(animated: true)
        }
    }
    
}
