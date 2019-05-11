//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// Presenter to View
protocol ___VARIABLE_viperModuleName___PresenterDelegate: class {
    var presenter: ___VARIABLE_viperModuleName___PresenterInterface? { get set }
}

// View to Presenter
protocol ___VARIABLE_viperModuleName___PresenterInterface: class {
    var moduleDelegate: ___VARIABLE_viperModuleName___ModuleDelegate? { get set }
    func viewDidLoad()
}
