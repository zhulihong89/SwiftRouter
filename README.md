# SwiftRouter

## Swift 组件化探讨

通过一致声明
```
public protocol LoginViewProtocol {
    static func createViewController() -> UIViewController
}
```

在集成的库里面实现 LoginModule
```
public extension LoginViewProtocol {
    static func createViewController() -> UIViewController {
        let viewController = LoginViewController()
        return viewController
    }
}
```

主项目使用
```
import LoginModule
struct RoutersInstance {
    struct LoginView: LoginViewProtocol {
    }
}

let viewController = RoutersInstance.LoginView.createViewController()
navigationController?.pushViewController(viewController, animated: true)
```
实现模块组装，在编译时就可以检查出 LoginModule 是否有实现，如无则报错。切换模块时只需更换 LoginModule
