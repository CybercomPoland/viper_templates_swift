//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ___VARIABLE_viperModuleName___Presenter: TableViewPresenter {
    weak var moduleDelegate: ___VARIABLE_viperModuleName___ModuleDelegate?

    private (set) var router: ___VARIABLE_viperModuleName___Router
    private (set) var interactor: ___VARIABLE_viperModuleName___InteractorInterface
    private (set) weak var view: ___VARIABLE_viperModuleName___PresenterDelegate?

    init(interactor: ___VARIABLE_viperModuleName___InteractorInterface, router: ___VARIABLE_viperModuleName___Router, view: ___VARIABLE_viperModuleName___PresenterDelegate?) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }

    override func viewDidLoad() {
        view?.register(reusables: []) //TODO: provide list of used *Row.self / *Header.self

        //interactor.readyToDisplayContent() //TODO: call interactor to prepare data
    }
}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___InteractorDelegate {

    //TODO: Handle call from interactor when data to be displayed is ready
    //func display(...) {
    //    populateData(...)
    //    view?.reloadData()
    //}
}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___PresenterInterface {

}
