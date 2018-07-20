//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___ViewController: TableViewViewController {
    // MARK: outlets

    // MARK: ViewController properties
    @IBOutlet weak var tableView: TableView!
    var viewOutput: ___VARIABLE_viperModuleName___ViewOutput! {
        didSet { baseViewOutput = viewOutput }
    }

    // MARK: ViewInput stored properties

    // MARK: ViewController Lifecycle

    // MARK: Appearance
    override func setUp() {
        super.setUp()
        //Add view controller setup code here (do not use viewDidLoad!)
    }

    // MARK: User Interaction

    //MARK: Additionals Helpers
}

extension ___VARIABLE_viperModuleName___ViewController: ___VARIABLE_viperModuleName___ViewInput {
    // MARK: ViewInput computed properties

    // MARK: ViewInput methods
}
