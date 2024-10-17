//
//  ViewController.swift
//  Lists
//
//  Created by Vigneshwar Devendran on 15/10/24.
//

import UIKit

class AllListsViewController: UIViewController {

    let listData = ListsViewModel.fetchLists()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ListCellTableViewCell.self, forCellReuseIdentifier: "list.cell")
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setUpNavBar()
        setUpTableView()
    }

    private func setUpNavBar() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemBlue
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "List(s)"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(
            image: .add,
            style: .plain,
            target: self,
            action: #selector(addButtonPressed)
        )
    }
    
    @objc private func addButtonPressed() {
        
        let vc = AddListVC()
        vc.modalPresentationStyle = .formSheet
        self.present(vc, animated: true)
    }
    
    private func setUpTableView() {
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }

}

extension AllListsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list.cell") as! ListCellTableViewCell
        cell.accessoryType = .disclosureIndicator
        cell.listTitle.text = listData[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = ListItemViewController()
        vc.items = listData[indexPath.row].items
        navigationController?.pushViewController(vc, animated: true)
    }
}
