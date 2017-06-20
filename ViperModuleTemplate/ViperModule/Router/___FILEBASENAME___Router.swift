//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension ___VARIABLE_viperModuleName___Router: ___VARIABLE_viperModuleName___RouterInput {

    // MARK: navigation

    func dismiss(animated: Bool, completion: (() -> Void)?) {
        viewController?.presentedViewController?.dismiss(animated: animated, completion: completion)
    }

//    func present_OTHER_VIPER_MODULE_FromViewController(withDelegate delegate: OTHER_VIPER_MODULE_DelegateProtocol?, animated: Bool, completion: (() -> Void)?) {
//        guard let source = viewController else {
//            assertionFailure("VIPER_ViewController not presented")
//            return
//        }
//        OTHER_VIPER_MODULE.present_OTHER_VIPER_MODULE_FromViewController(source: source, withDelegate: delegate, animated: animated, completion: completion)
//    }
}
