//
//  ViewController.swift
//  KENetworking
//
//  Created by karimabdelazizmansour@gmail.com on 05/20/2018.
//  Copyright (c) 2018 karimabdelazizmansour@gmail.com. All rights reserved.
//

import UIKit
import KENetworking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getRandomDataFromApi()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    
    func getRandomDataFromApi() {
        let request = DataRouter.getFirstPost()
        APINetworking.shared.callService(object: DataModel.self, requestURL: request).done { (model) in
            print(model.title)
            print(model.body)
            }.catch { (error) in
                print(error)
        }
    }
    
}

