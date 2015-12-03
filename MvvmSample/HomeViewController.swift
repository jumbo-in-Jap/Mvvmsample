//
//  HomeViewController.swift
//  MvvmSample
//
//  Created by HanedaKentarou on 2015/12/03.
//  Copyright © 2015年 HanedaKentarou. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.bnd_text.bindTo(viewModel.text)
        label.bnd_text.bidirectionalBindTo(viewModel.text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
