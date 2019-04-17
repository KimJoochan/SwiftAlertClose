//
//  ViewController.swift
//  alert
//
//  Created by dit06 on 2019. 4. 10..
//  Copyright © 2019년 dit06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func button(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Cammer", message: "Look at the me", preferredStyle: .actionSheet)
        //alert는 경고창,actionSheet는 밑에서 올라오기
        let camAction = UIAlertAction(title: "Open Cammer", style: .default, handler: nil)
        let libAction = UIAlertAction(title: "사진 폴더 열기", style: .default, handler:nil)
            //self.view.backgroundColor = UIColor.yellow
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler:{(action:UIAlertAction) -> Void in self.view.backgroundColor=UIColor.yellow})
        //후행 클로즈와 일반 클로즈 나옵니다.
       // let deleteAction = UIAlertAction(title: "Delete", style: .default, handler:{(action: UIAlertAction)-> Void in self.view.backgroundColor=UIColor.cyan})
        let okay = UIAlertAction(title: "OKAY", style: .default){(action : UIAlertAction) ->Void in self.outlabel.text="Hello workd"}
        let delete = UIAlertAction(title: "사진 폴더 취소", style: .destructive) {
            (action: UIAlertAction) -> Void in
            //self.view.backgroundColor = UIColor.yellow
            self.outlabel.text = "사진 폴더 열기 실행됨"
        };
       
        alertController.addAction(camAction)
        alertController.addAction(libAction)
        alertController.addAction(cancelAction)
        alertController.addAction(okay)
        alertController.addAction(delete)
        
        present(alertController, animated: true, completion: nil)
    }
}
