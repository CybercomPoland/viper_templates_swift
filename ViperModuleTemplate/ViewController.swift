//
//  ViewController.swift
//  ViperModuleTemplate
//
//  Created by Łukasz Majchrzak on 26/05/2017.
//  Copyright © 2017 Cybercom Poland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class TableViewViewController: UIViewController {
    public var basePresenter: TableViewPresenterInterface?
    func setUp() {}
}

public class TableItem {}

// Presenter to View
public protocol TableViewPresenterDelegate: class {
    func register(reusables: [TableItem.Type])
}

public protocol TableViewPresenterInterface: class {
    func viewDidLoad()
}

open class TableViewPresenter {
    open weak var baseView: TableViewPresenterDelegate? {
        fatalError("baseView getter should be implemented by subclass!!")
    }

    open func viewDidLoad() {
    }
}

extension UITableViewController: TableViewPresenterDelegate {
    public func register(reusables: [TableItem.Type]) { }
}
