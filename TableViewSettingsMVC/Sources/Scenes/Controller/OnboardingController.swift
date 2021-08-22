//
//  ViewController.swift
//  TableViewSettingsMVC
//
//  Created by Маша on 22.08.2021.
//

import UIKit

class OnboardingController: UIViewController {

        var model: OnboardingModel?
        
        private var onboardingView: OnboardingView? {
            guard isViewLoaded else { return nil }
            return view as? OnboardingView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            view = OnboardingView()
            model = OnboardingModel()
            navigationItem.title = "Настройки"
            configureView()
        }
    }

    private extension OnboardingController {
        func configureView() {
            guard let models = model?.modelsData else { return }
            onboardingView?.configureView(with: models)
        }
    }


