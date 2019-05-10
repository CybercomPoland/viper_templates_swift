//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ___VARIABLE_viperModuleName___Interactor {
    private (set) var dataManager: ___VARIABLE_viperModuleName___DataManagerInterface
    weak var presenter: ___VARIABLE_viperModuleName___InteractorDelegate?

    init(dataManager: ___VARIABLE_viperModuleName___DataManagerInterface) {
        self.dataManager = dataManager
    }
}

extension ___VARIABLE_viperModuleName___Interactor: ___VARIABLE_viperModuleName___InteractorInterface {

}

extension ___VARIABLE_viperModuleName___Interactor: ___VARIABLE_viperModuleName___DataManagerDelegate {

}
