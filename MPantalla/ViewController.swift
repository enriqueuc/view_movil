//
//  ViewController.swift
//  MPantalla
//
//  Created by Ing. Enrique Ugalde on 26/06/16.
//  Copyright © 2016 Ing. Enrique Ugalde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    @IBOutlet weak var est2: UITextField!
    
    @IBOutlet weak var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        peso.delegate=self
        estatura.delegate=self
        est2.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        var punto:CGPoint
        punto  = CGPointMake(0, textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder()
    }

    @IBAction func backgroundTap(sender: UIControl){
        peso.resignFirstResponder()
        estatura.resignFirstResponder()
        est2.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcularIMC(sender: AnyObject) {
        IMC()
    }
    
    func IMC()->Double{
        var IMC: Double
        let pesoLocal:Double?
        pesoLocal=Double(self.peso.text!)!
        let estaturaLocal:Double?
        estaturaLocal=Double(self.estatura.text!)!
        IMC = estaturaLocal!/(pesoLocal!*pesoLocal!)
        print(IMC)
        return(IMC)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = IMC()
        let sigVista = segue.destinationViewController as! VistaResVC
        sigVista.indiceIM = resultado
    }

}

