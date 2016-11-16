//
//  ViewController.swift
//  CounterExample
//
//  Created by Colin Eberhardt on 04/08/2016.
//  Copyright © 2016 Colin Eberhardt. All rights reserved.
//

import UIKit
import ReSwift


class ViewController: UITableViewController, StoreSubscriber {
    typealias StoreSubscriberStateType = AppState

    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // subscribe to state changes
        mainStore.subscribe(self)
    }
    
    func newState(state: AppState) {
        // when the state changes, the UI is updated to reflect the current state
        tableView.reloadData()
    }
    
    @IBAction func addCounter(_ sender: UIBarButtonItem) {
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell

        return cell
    }
}

