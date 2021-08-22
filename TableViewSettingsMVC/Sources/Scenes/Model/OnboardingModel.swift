//
//  OnboardingModel.swift
//  TableViewSettingsMVC
//
//  Created by Маша on 22.08.2021.
//

import Foundation
import UIKit

final class OnboardingModel {
    
    let modelsData =
        [Section(section: "", options:
                    [.switchCell(models: SettingsSwitchOptions(title: "Режим полет", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange,  isOn: false)),
                     .simpleCell(models: SettingsOptions(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, textMode: "Не подключено")),
                     .simpleCell(models: SettingsOptions(title: "Bluetooth", icon: UIImage(systemName: "dot.radiowaves.right"), iconBackgroundColor: .systemBlue, textMode: "Вкл")),
                     .simpleCell(models: SettingsOptions(title: "Сотовая связь", icon: UIImage(systemName: "dot.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, textMode: "")),
                     .switchCell(models: SettingsSwitchOptions(title: "VPN", icon: UIImage(systemName:"doc.zipper"), iconBackgroundColor: .systemBlue, isOn: false))]),
         
         Section(section: "", options:
                    [.simpleCell(models: SettingsOptions(title: "Уведомления", icon: UIImage(systemName: "plus.bubble"), iconBackgroundColor: .systemRed, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Звуки,тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemPink, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Не беспококить", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemIndigo, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Экранное время", icon: UIImage(systemName:        "hourglass"), iconBackgroundColor: .systemIndigo, textMode: ""))]),
         
         Section(section: "", options:
                    [.simpleCell(models: SettingsOptions(title: "Основные", icon: UIImage(systemName:        "gear"), iconBackgroundColor: .systemGray, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Пункт управления", icon: UIImage(systemName: "slider.vertical.3"), iconBackgroundColor: .systemGray, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Bluetooth", icon: UIImage(systemName:        "dot.radiowaves.right"), iconBackgroundColor: .systemBlue, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Экран и яркость", icon: UIImage(systemName:        "sun.max.fill"), iconBackgroundColor: .systemBlue, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Экран домой", icon: UIImage(systemName:        "house"), iconBackgroundColor: .systemIndigo, textMode: "")),
                     .simpleCell(models: SettingsOptions(title: "Универсальный доступ", icon: UIImage(systemName: "checkmark.circle.fiil"), iconBackgroundColor: .systemBlue, textMode: ""))])]
}



