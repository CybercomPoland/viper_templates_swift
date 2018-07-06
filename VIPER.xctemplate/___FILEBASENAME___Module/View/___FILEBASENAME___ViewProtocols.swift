//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// Presenter to View
protocol ___VARIABLE_viperModuleName___ViewInput: class {
    // MARK: ViewInput protocol properties
    var viewOutput: ___VARIABLE_viperModuleName___ViewOutput? { get set }

    // MARK: ViewInput protocol methods
}

// View to Presenter
protocol ___VARIABLE_viperModuleName___ViewOutput: class {
    // MARK: ViewOutput protocol properties
    var delegate: ___VARIABLE_viperModuleName___ModuleDelegate? { get set }

    // MARK: ViewOutput protocol methods
}
