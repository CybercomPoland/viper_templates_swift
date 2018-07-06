//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___Router {
    // MARK: Router properties
    private (set) weak var viewController: ___VARIABLE_viperModuleName___ViewController?
    private init() {}

    static let storyboardName = "___VARIABLE_viperModuleName___"
    static let viewControllerType = String(describing: ___VARIABLE_viperModuleName___ViewController.self)
    static let storyboardID = viewControllerType + "ID"

    // MARK: instantiation of module
    static func instantiateModule(delegate: ___VARIABLE_viperModuleName___ModuleDelegate? = nil) -> ___VARIABLE_viperModuleName___ViewController {

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? ___VARIABLE_viperModuleName___ViewController else {
            fatalError("ViewController with identifier \(storyboardID) in \(storyboardName).storyboard is not of type \(viewControllerType)")
        }

        let router = ___VARIABLE_viperModuleName___Router()
        let dataManager = ___VARIABLE_viperModuleName___DataManager()
        let interactor = ___VARIABLE_viperModuleName___Interactor(dataManager: dataManager)
        let presenter = ___VARIABLE_viperModuleName___Presenter(interactor: interactor, router: router, view: vc)
        presenter.delegate = delegate

        router.viewController = vc
        vc.viewOutput = presenter
        interactor.interactorOutput = presenter
        dataManager.dataManagerOutput = interactor
        return vc
    }
}

extension ___VARIABLE_viperModuleName___Router: ___VARIABLE_viperModuleName___RouterInterface {
    // MARK: RouterInterface computed properties

    // MARK: RouterInterface methods
}
