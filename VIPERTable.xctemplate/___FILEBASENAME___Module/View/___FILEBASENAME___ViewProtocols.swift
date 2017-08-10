//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// Presenter to View
protocol ___VARIABLE_viperModuleName___ViewInput: TableViewViewInput {
    var viewOutput: ___VARIABLE_viperModuleName___ViewOutput! { get set }
}

// View to Presenter
protocol ___VARIABLE_viperModuleName___ViewOutput: TableViewViewOutput {
    weak var delegate: ___VARIABLE_viperModuleName___ModuleDelegate? { get set }
    func viewDidLoad()
}
