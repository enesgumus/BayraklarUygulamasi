//
//  SonucEkranViewController.swift
//  BayraklarUygulamasi
//
//  Created by Enes Gümüş on 13.09.2023.
//

import UIKit

class SonucEkranViewController: UIViewController {

    
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var labelYuzde: UILabel!
    
    var dogruSayisi:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        if let d = dogruSayisi {
            labelSonuc.text = "\(d) Doğru \(5-d) Yanlış"
            labelYuzde.text = "% \(d*100/5) Başarı"
        }
        
    }
    
    @IBAction func tekrarOynaButton(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    

}
