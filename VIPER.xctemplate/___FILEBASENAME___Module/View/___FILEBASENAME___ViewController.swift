//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___ViewController: UIViewController {
    var presenter: ___VARIABLE_viperModuleName___PresenterInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        presenter?.viewDidLoad()
    }

    func setUp() {
        //Add view controller setup code here (do not use viewDidLoad!)
    }
}

extension ___VARIABLE_viperModuleName___ViewController: ___VARIABLE_viperModuleName___PresenterDelegate {

}
