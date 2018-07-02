//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ___VARIABLE_viperModuleName___Interactor {
    fileprivate (set) var dataManagerInput: ___VARIABLE_viperModuleName___DataManagerInput
    weak var interactorOutput: ___VARIABLE_viperModuleName___InteractorOutput?

    init(dataManager: ___VARIABLE_viperModuleName___DataManagerInput = ___VARIABLE_viperModuleName___DataManager()) {
        self.dataManagerInput = dataManager
    }
}

extension ___VARIABLE_viperModuleName___Interactor: ___VARIABLE_viperModuleName___InteractorInput {

}

extension ___VARIABLE_viperModuleName___Interactor: ___VARIABLE_viperModuleName___DataManagerOutput {

}
