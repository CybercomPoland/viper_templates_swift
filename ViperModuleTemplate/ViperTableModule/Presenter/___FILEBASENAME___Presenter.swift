//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ___VARIABLE_viperModuleName___Presenter: TableViewPresenter {
    weak var delegate: ___VARIABLE_viperModuleName___ModuleDelegate?

    private (set) var router: ___VARIABLE_viperModuleName___Router
    private (set) var interactor: ___VARIABLE_viperModuleName___InteractorInput
    private (set) weak var view: ___VARIABLE_viperModuleName___ViewInput?

    fileprivate init(interactor: ___VARIABLE_viperModuleName___Interactor,
                     router: ___VARIABLE_viperModuleName___Router,
                     view: ___VARIABLE_viperModuleName___ViewInput?) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }

    override func viewDidLoad() {
        view?.registerReusable(classes: []) //TODO: provide list of used *Row.self

        //interactor.readyToDisplayContent() //TODO: call interactor to prepare data
    }
}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___InteractorOutput {

    //TODO: call from interactor when data to be displayed is ready
    //func display(...) {
    //    populateData(...)   //TODO: populate rows
    //    view?.reloadData()
    //}
}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___ViewOutput {

}
