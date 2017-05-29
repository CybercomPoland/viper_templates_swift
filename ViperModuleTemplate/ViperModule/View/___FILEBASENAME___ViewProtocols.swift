//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// Presenter to View
protocol ___FILEBASENAMEASIDENTIFIER___ViewInput: class {
    var viewOutput: ___FILEBASENAMEASIDENTIFIER___ViewOutput? { get set }
}

// View to Presenter
protocol ___FILEBASENAMEASIDENTIFIER___ViewOutput: class {
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? { get set }
    func viewDidLoad()
}