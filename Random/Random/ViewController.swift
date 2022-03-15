//
//  ViewController.swift
//  Random
//
//  Created by Fabio Maurizio Marangon Chavarri on 3/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let textView : UITextView = {
        let textView = UITextView()
        textView.textColor = .white
        textView.font = .systemFont(ofSize: 40)
        textView.textAlignment = .center
        return textView
    }()

    private let button : UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.setTitle("Get random number", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textView)
        textView.frame = CGRect(x:0,y:100,width:420,height:50)
        view.addSubview(button)
        button.frame = CGRect(x:0,y:200,width: 420,height: 50)
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }

    func getRandom(){
        let num = Int.random(in: 1..<100)
        textView.text = String(num)
    }
    
    @objc func tapButton(){
        getRandom()
    }
    
}

