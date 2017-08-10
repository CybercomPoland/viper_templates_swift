//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___ViewController: TableViewViewController {
    var viewOutput: ___VARIABLE_viperModuleName___ViewOutput! {
        didSet {
            baseViewOutput = viewOutput
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput?.viewDidLoad()
    }

}

extension ___VARIABLE_viperModuleName___ViewController: ___VARIABLE_viperModuleName___ViewInput {

}
