//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ___VARIABLE_viperModuleName___Presenter {
    weak var delegate: ___VARIABLE_viperModuleName___ModuleDelegate?

    private (set) var router: ___VARIABLE_viperModuleName___Router
    private (set) var interactor: ___VARIABLE_viperModuleName___InteractorInput
    weak var view: ___VARIABLE_viperModuleName___ViewInput?

    fileprivate init(interactor: ___VARIABLE_viperModuleName___Interactor, router: ___VARIABLE_viperModuleName___Router) {
        self.interactor = interactor
        self.router = router
    }
}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___InteractorOutput {

}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___ViewOutput {
    func viewDidLoad() {
    }
}
