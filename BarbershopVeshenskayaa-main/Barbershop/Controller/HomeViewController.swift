//
//  HomeViewController.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    var dataService: [FamilyModel] =
    [
        FamilyModel(person: "Джон Мерфи"),
        FamilyModel(person: "Шерон Дженклин"),
        FamilyModel(person: "Аэрон Вилиемс"),
        FamilyModel(person: "Стивен Блек"),
        FamilyModel(person: "Тэд Батлер"),
        FamilyModel(person: "Никола Робетсон"),
        FamilyModel(person: "Брюс Айзук")
    ]
    
    let tableView = UITableView(frame: .zero, style: .grouped)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.navigationItem.title = "Person List"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.view.addSubview(tableView)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        self.updateLayout(with: self.view.frame.size)
    }
    
    private func updateLayout(with size: CGSize) {
       self.tableView.frame = CGRect.init(origin: .zero, size: size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
       super.viewWillTransition(to: size, with: coordinator)
       coordinator.animate(alongsideTransition: { (contex) in
          self.updateLayout(with: size)
       }, completion: nil)
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: TableViewCell.indetificator, for: indexPath) as! TableViewCell
        let item = self.dataService[indexPath.item]
        cell.textLabel?.text = item.person
        return cell
    }
}
