//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

/* Presenter to View */
protocol ___VARIABLE_viperModuleName___ViewInput: BaseViewInput {
    
    // MARK: Properties
    
    var viewOutput: ___VARIABLE_viperModuleName___ViewOutput? { get set }

    // MARK: Methods
}

/* View to Presenter */
protocol ___VARIABLE_viperModuleName___ViewOutput: class {
    
    // MARK: Properties
    
    var delegate: ___VARIABLE_viperModuleName___ModuleDelegate? { get set }

    // MARK: Methods
}
