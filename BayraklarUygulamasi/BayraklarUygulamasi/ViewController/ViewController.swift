//
//  ViewController.swift
//  BayraklarUygulamasi
//
//  Created by Enes Gümüş on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
    
        super.viewDidLoad()
        
            veriTabaniKopyala()
    }
    
    func veriTabaniKopyala(){
        
        let bundleYolu = Bundle.main.path(forResource: "bayrakquiz", ofType: ".sqlite")
        
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let fileManager = FileManager.default
        
        let kopyalanakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("bayrakquiz.sqlite")
        
        if fileManager.fileExists(atPath: kopyalanakYer.path) {
            print("Veri Tabanı zaten var")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanakYer.path)
            }catch{
                print(error.localizedDescription)
            }
        }
    }
    
    


}

