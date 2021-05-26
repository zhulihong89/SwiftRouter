//
//  ViewController.swift
//  Demo
//
//  Created by lihong on 2021/5/26.
//

import UIKit
import Routers


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onModuleA(_ sender: Any) {
        let viewController = RoutersInstance.LoginView.createViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

    @IBAction func onModuleB(_ sender: Any) {
        let viewController = RoutersInstance.SettingsView.createViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}

