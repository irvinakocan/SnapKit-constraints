//
//  ViewController.swift
//  SnapKit constraints
//
//  Created by Macbook Air 2017 on 30. 11. 2023..
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Imate bolove u donjem dijelu leđa? 🌟 Donat jastuk za sjedenje posebnim dizajnom i punjenjem od ljuskica heljde oslobađa vas od bolova nastalih dugim sjedenjem ili ozljedom. Idealan je za trudnice, oporavak nakon operacija kralježnice, te za sve koji se bore s hemoroidima. Posebno ga cijene profesionalni vozači i općenito svi koji puno vremena provode u vožnji. 🚗"
        label.numberOfLines = 0
        label.textColor = .black
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "donat_pillow")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }

    private func setUI() {
        view.addSubview(label)
        view.addSubview(imageView)
        view.backgroundColor = .white
        
        label.snp.makeConstraints{ make in
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.top.equalToSuperview().offset(80)
        }
        
        imageView.snp.makeConstraints{ make in
            make.leading.trailing.equalTo(label)
            make.top.equalTo(label.snp.bottom).offset(20)
            make.height.equalTo(300)
        }
    }
}

