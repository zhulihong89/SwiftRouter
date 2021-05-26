//
//  RoutersInstance.swift
//  Demo
//
//  Created by lihong on 2021/5/26.
//

import Foundation
import Routers
import LoginModule // 可以替换为 LoginModuleB，同时 LoginModuleB 与 LoginModule 会报错
import SettingsModule

struct RoutersInstance {
    struct LoginView: LoginViewProtocol {
    }
    
    struct SettingsView: SettingsViewProtocol {
    }
}
