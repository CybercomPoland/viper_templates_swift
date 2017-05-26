//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___DataManager {
    fileprivate (set) weak var dataManagerOutput: ___FILEBASENAMEASIDENTIFIER___DataManagerOutput?
}


class ___FILEBASENAMEASIDENTIFIER___Interactor {
    fileprivate (set) var dataManagerInput:      ___FILEBASENAMEASIDENTIFIER___DataManagerInput
    fileprivate (set) weak var interactorOutput: ___FILEBASENAMEASIDENTIFIER___InteractorOutput?
    
    fileprivate init(dataManager: ___FILEBASENAMEASIDENTIFIER___DataManagerInput = ___FILEBASENAMEASIDENTIFIER___DataManager()) {
        self.dataManagerInput = dataManager
    }
}


class ___FILEBASENAMEASIDENTIFIER___Presenter {
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    
    private (set) var router:             ___FILEBASENAMEASIDENTIFIER___Router
    private (set) var interactor:    ___FILEBASENAMEASIDENTIFIER___InteractorInput
    fileprivate (set) weak var view: ___FILEBASENAMEASIDENTIFIER___ViewInput?
    
    fileprivate init(interactor: ___FILEBASENAMEASIDENTIFIER___Interactor, router: ___FILEBASENAMEASIDENTIFIER___Router) {
        self.interactor = interactor
        self.router          = router
    }
}

class ___FILEBASENAMEASIDENTIFIER___Router {
    private (set) weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController?
    private init() {}
    
    //#MARK: instantiation of module
    static func instantiateModule() -> ___FILEBASENAMEASIDENTIFIER___ViewController? {
        
//#WARNING after creating new module remember to do following:
        <#todo#>// 1. create storyboard '___FILEBASENAMEASIDENTIFIER___'
        let storyboardName = "___FILEBASENAMEASIDENTIFIER___"
        guard (Bundle.main.path(forResource: storyboardName, ofType: "storyboardc") != nil) else {
            print("Could not find path for resource \(storyboardName).storyboard")
            return nil
        }
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        <#todo#>// 2. add ViewController to storyboard and set storyboard ID to ___FILEBASENAMEASIDENTIFIER___ViewControllerID
        let viewControllerType = String(describing: ___FILEBASENAMEASIDENTIFIER___ViewController.self)
        let storyboardID = viewControllerType + "ID"
        guard let storyboardValues = storyboard.value(forKey: "identifierToNibNameMap") as? [String : Any], (storyboardValues[storyboardID] != nil) else {
            print("Could not find ViewController with identifier \(storyboardID) in \(storyboardName).storyboard")
            return nil
        }
        <#todo#>// 3. set type of ViewController as "___FILEBASENAMEASIDENTIFIER___ViewController"
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? ___FILEBASENAMEASIDENTIFIER___ViewController else {
            print("ViewController with identifier \(storyboardID) in \(storyboardName).storyboard is not of type \(viewControllerType)")
            return nil
        }
        
        let router      = ___FILEBASENAMEASIDENTIFIER___Router()
        let dataManager = ___FILEBASENAMEASIDENTIFIER___DataManager()
        let interactor  = ___FILEBASENAMEASIDENTIFIER___Interactor(dataManager: dataManager)
        let presenter   = ___FILEBASENAMEASIDENTIFIER___Presenter(interactor: interactor, router: router)
        
        router.viewController = vc
        presenter.view   = vc
        vc.viewOutput                 = presenter
        interactor.interactorOutput   = presenter
        dataManager.dataManagerOutput = interactor
        return vc
    }
    
    static func presentVIPER_ModuleFromViewController(source: UIViewController, withDelegate delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?, animated: Bool, completion: (() -> Void)?) {
        guard let vc = ___FILEBASENAMEASIDENTIFIER___Router.instantiateModule() else {
            assertionFailure("Could not instantiate \(___FILEBASENAMEASIDENTIFIER___ViewController.self)")
            return
        }
        vc.viewOutput?.delegate = delegate
        source.present(vc, animated: animated, completion: completion)
    }
}
