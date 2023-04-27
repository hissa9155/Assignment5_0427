//
//  ViewController.swift
//  Assignment5_0427
//
//  Created by H.Namikawa on 2023/04/27.
//

import UIKit

class LoginViewController: UIViewController {

  let profImgV = {
    let img = UIImage(named: "katsushika-hokusai")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    return imgV
  }()
  
  let userNmTxt = {
    let text = UITextView()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.font = UIFont.systemFont(ofSize: 17)
    text.layer.borderWidth = 1
    text.layer.cornerRadius = 5
    text.backgroundColor = UIColor(red: 255, green: 208, blue: 92, alpha:50)
    return text
  }()
  
  let pwdTxt = {
    let text = UITextView()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.font = UIFont.systemFont(ofSize: 17)
    text.layer.borderWidth = 1
    text.layer.cornerRadius = 5
    text.backgroundColor = UIColor(red: 255, green: 208, blue: 92, alpha: 100)
    text.backgroundColor = .init(cgColor: CGColor(red: 255, green: 208, blue: 92, alpha: 0))
    text.textContentType = .password
    return text
  }()
  
  let forgotPwdButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Forgot Password?", for: .normal)
    button.setTitleColor(.black, for: .normal)
    return button
  }()
  
  let loginButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Login", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.backgroundColor = .yellow
    button.layer.cornerRadius = 10
    return button
  }()
  
  let loginWithFbButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Login With Feedback", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .yellow
    button.layer.cornerRadius = 10
    return button
  }()
  
  let createAccountButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Create Account", for: .normal)
    button.setTitleColor(.black, for: .normal)
    return button
  }()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateUI()
  }
  
  private func updateUI() {
    
    view.backgroundColor = .white
    view.addSubview(profImgV)
    profImgV.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
    profImgV.heightAnchor.constraint(equalTo: profImgV.widthAnchor).isActive = true
    profImgV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
    profImgV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    let inputSV = UIStackView(arrangedSubviews: [userNmTxt, pwdTxt])
    view.addSubview(inputSV)
    
    userNmTxt.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    userNmTxt.heightAnchor.constraint(equalToConstant: 50).isActive = true
    pwdTxt.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    pwdTxt.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    inputSV.translatesAutoresizingMaskIntoConstraints = false
    inputSV.axis = .vertical
    inputSV.spacing = 5
    inputSV.alignment = .center
    inputSV.distribution = .equalSpacing

    inputSV.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    inputSV.heightAnchor.constraint(equalToConstant: 100).isActive = true
    inputSV.topAnchor.constraint(equalTo: profImgV.bottomAnchor, constant: 20).isActive = true
    inputSV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    

    let buttonSV = UIStackView(arrangedSubviews: [forgotPwdButton, loginButton, loginWithFbButton])
    view.addSubview(buttonSV)
    buttonSV.translatesAutoresizingMaskIntoConstraints = false
    buttonSV.axis = .vertical
    buttonSV.spacing = 15
    buttonSV.alignment = .center
    buttonSV.distribution = .equalSpacing

    buttonSV.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    buttonSV.topAnchor.constraint(equalTo: inputSV.bottomAnchor, constant: 30).isActive = true
    buttonSV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    loginWithFbButton.widthAnchor.constraint(equalTo: loginButton.widthAnchor, multiplier: 0.8).isActive = true
    
    view.addSubview(createAccountButton)
    createAccountButton.bottomAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
    createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    loginButton.addTarget(self, action: #selector(goToContent(_:)), for: .touchUpInside)
  }
  
  @objc func goToContent(_ sender: UIButton) {
    let contentVC = ContentViewController()
    navigationController?.pushViewController(contentVC, animated: true)
  }


}

