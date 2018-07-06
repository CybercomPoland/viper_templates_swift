//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ___VARIABLE_viperModuleName___Interactor {
    // MARK: Interactor properties
    fileprivate (set) var dataManagerInput: ___VARIABLE_viperModuleName___DataManagerInput
    weak var interactorOutput: ___VARIABLE_viperModuleName___InteractorOutput?

    // MARK: InteractorInput stored properties

    // MARK: InteractorOutput stored properties

    // MARK: Interactor Lifecycle
    init(dataManager: ___VARIABLE_viperModuleName___DataManagerInput = ___VARIABLE_viperModuleName___DataManager()) {
        self.dataManagerInput = dataManager
    }
}

extension ___VARIABLE_viperModuleName___Interactor: ___VARIABLE_viperModuleName___InteractorInput {
    // MARK: InteractorInput computed properties

    // MARK: InteractorInput methods
}

extension ___VARIABLE_viperModuleName___Interactor: ___VARIABLE_viperModuleName___DataManagerOutput {
    // MARK: DataManagerOutput computed properties

    // MARK: DataManagerOutput methods
}
