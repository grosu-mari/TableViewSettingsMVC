//
//  OnboardingSettingsTableViewCell.swift
//  TableViewSettingsMVC
//
//  Created by Маша on 22.08.2021.
//

import Foundation
import UIKit

class OnboardingSettingsTableViewCell: UITableViewCell {
    
    static let identifier = "OnboardingSettingsTableViewCell"
    
    public func configure(with model: SettingsOptions) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        textMode.text = model.textMode
    }
    
    private lazy var iconImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        return image
    }()
    
    private lazy var iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textColor = .black
        return label
    }()
    
    private lazy var textMode: UILabel = {
        let textMode = UILabel()
        textMode.textColor = .lightGray
        return textMode
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        contentView.addSubview(iconImageView)
        contentView.addSubview(label)
        contentView.addSubview(textMode)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        iconImageView.center = iconContainer.center
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        layoutSubviews()
    }
    
    private func setupLayout() {
        let sizeIconContainer: CGFloat = contentView.frame.size.height - 12
        let sizeIconImage: CGFloat = sizeIconContainer * 0.6
        iconContainer.translatesAutoresizingMaskIntoConstraints = false
        iconContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        iconContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        iconContainer.widthAnchor.constraint(equalToConstant: sizeIconContainer).isActive = true
        iconContainer.heightAnchor.constraint(equalToConstant: sizeIconContainer).isActive = true
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.widthAnchor.constraint(equalToConstant: sizeIconImage).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: sizeIconImage).isActive = true
        iconImageView.centerXAnchor.constraint(equalTo: iconContainer.centerXAnchor).isActive = true
        iconImageView.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 55).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        textMode.translatesAutoresizingMaskIntoConstraints = false
        textMode.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        textMode.centerYAnchor.constraint(equalTo: label.centerYAnchor).isActive = true
    }
}





