//
//  VistaResVC.swift
//  MPantalla
//
//  Created by Ing. Enrique Ugalde on 26/06/16.
//  Copyright © 2016 Ing. Enrique Ugalde. All rights reserved.
//

import UIKit

class VistaResVC: UIViewController {

    @IBOutlet weak var res: UILabel!
    
    var indiceIM:Double = 0
    
    override func viewWillAppear(animated: Bool) {
        res.text=String(indiceIM)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
