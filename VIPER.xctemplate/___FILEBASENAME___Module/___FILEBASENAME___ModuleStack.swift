//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___DataManager {
    fileprivate (set) weak var dataManagerOutput: ___VARIABLE_viperModuleName___DataManagerOutput?
}

class ___VARIABLE_viperModuleName___Interactor {
    fileprivate (set) var dataManagerInput: ___VARIABLE_viperModuleName___DataManagerInput
    fileprivate (set) weak var interactorOutput: ___VARIABLE_viperModuleName___InteractorOutput?

    fileprivate init(dataManager: ___VARIABLE_viperModuleName___DataManagerInput = ___VARIABLE_viperModuleName___DataManager()) {
        self.dataManagerInput = dataManager
    }
}

class ___VARIABLE_viperModuleName___Presenter {
    weak var delegate: ___VARIABLE_viperModuleName___ModuleDelegate?

    private (set) var router: ___VARIABLE_viperModuleName___Router
    private (set) var interactor: ___VARIABLE_viperModuleName___InteractorInput
    fileprivate (set) weak var view: ___VARIABLE_viperModuleName___ViewInput?

    fileprivate init(interactor: ___VARIABLE_viperModuleName___Interactor, router: ___VARIABLE_viperModuleName___Router) {
        self.interactor = interactor
        self.router = router
    }
}

class ___VARIABLE_viperModuleName___Router {
    private (set) weak var viewController: ___VARIABLE_viperModuleName___ViewController?
    private init() {}

    static let storyboardName = "___VARIABLE_viperModuleName___"
    static let viewControllerType = String(describing: ___VARIABLE_viperModuleName___ViewController.self)
    static let storyboardID = viewControllerType + "ID"

    // MARK: instantiation of module
    static func instantiateModule() -> ___VARIABLE_viperModuleName___ViewController? {

        //#WARNING after creating new module remember to do following:
        <#todo#>// 1. create storyboard '___VARIABLE_viperModuleName___'
        <#todo#>// 2. add ViewController to storyboard and set storyboard ID to ___VARIABLE_viperModuleName___ViewControllerID
        <#todo#>// 3. set type of ViewController as "___VARIABLE_viperModuleName___ViewController"

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? ___VARIABLE_viperModuleName___ViewController else {
            print("ViewController with identifier \(storyboardID) in \(storyboardName).storyboard is not of type \(viewControllerType)")
            return nil
        }

        let router = ___VARIABLE_viperModuleName___Router()
        let dataManager = ___VARIABLE_viperModuleName___DataManager()
        let interactor = ___VARIABLE_viperModuleName___Interactor(dataManager: dataManager)
        let presenter = ___VARIABLE_viperModuleName___Presenter(interactor: interactor, router: router)

        router.viewController = vc
        presenter.view = vc
        vc.viewOutput = presenter
        interactor.interactorOutput = presenter
        dataManager.dataManagerOutput = interactor
        return vc
    }
}
