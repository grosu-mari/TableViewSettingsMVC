//
//  Onboarding.swift
//  TableViewSettingsMVC
//
//  Created by Маша on 22.08.2021.
//

import Foundation
import UIKit

struct Section {
    let section: String
    let options: [Cells]
}

struct SettingsSwitchOptions {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let isOn: Bool
}

struct SettingsOptions {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let textMode: String
}

enum Cells {
    case switchCell(models: SettingsSwitchOptions)
    case simpleCell(models: SettingsOptions)
}
