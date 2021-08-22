//
//  OnboardingView.swift
//  TableViewSettingsMVC
//
//  Created by Маша on 22.08.2021.
//

import Foundation
import UIKit

class OnboardingView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    func configureView(with models: [Section]) {
        self.models = models
        tableView.reloadData()
    }
    
    private var models = OnboardingModel().modelsData
    
    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.delegate = self
        view.dataSource = self
        view.register(OnboardingSettingsTableViewCell.self, forCellReuseIdentifier: OnboardingSettingsTableViewCell.identifier)
        view.register(OnboardingSwitchTableViewCell.self, forCellReuseIdentifier: OnboardingSwitchTableViewCell.identifier)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super .init(coder: coder)
        commitInit()
    }
    
    private func commitInit() {
        backgroundColor = .white
        setupHierarhcy()
        setupLayout()
    }
    
    private func setupHierarhcy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]
        
        switch model {
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: OnboardingSwitchTableViewCell.identifier, for: indexPath) as? OnboardingSwitchTableViewCell else { return UITableViewCell() }
            
            cell.configure(with: model)
            return cell
        case .simpleCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: OnboardingSettingsTableViewCell.identifier, for: indexPath) as? OnboardingSettingsTableViewCell else { return UITableViewCell() }
            
            cell.configure(with: model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
