//
//  ContentViewController.swift
//  Assignment5_0427
//
//  Created by H.Namikawa on 2023/04/27.
//

import UIKit

class ContentViewController: UIViewController {
  
  let appleImgV = {
    let img = UIImage(named: "apple_logo")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let bookmarkImgV = {
    let img = UIImage(named: "bookmark")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let bookmarkFilledImgV = {
    let img = UIImage(named: "bookmark_filled")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let dotsImgV = {
    let img = UIImage(named: "dots")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let heartImgV = {
    let img = UIImage(named: "heart")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let heartFilledImgV = {
    let img = UIImage(named: "heart_filled")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let messageImgV = {
    let img = UIImage(named: "message")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let sentImgV = {
    let img = UIImage(named: "sent")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let openMacImgV = {
    let img = UIImage(named: "open_mac")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleAspectFill
    return imgV
  }()
  
  let appleLbl = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "apple"
    lbl.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    return lbl
  }()
  
  let likedLbl = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "liked by apple"
    lbl.font = UIFont.systemFont(ofSize: 20, weight: .medium)
    return lbl
  }()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateUI()
  }
  
  private func updateUI(){
    view.backgroundColor = .white
    let contentsSV = UIStackView()
    contentsSV.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(contentsSV)
    contentsSV.axis = .vertical
    contentsSV.alignment = .center
    contentsSV.distribution = .equalSpacing
    contentsSV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    contentsSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
    contentsSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8).isActive = true
    contentsSV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    let topWrapSV = UIStackView()
    topWrapSV.translatesAutoresizingMaskIntoConstraints = false
    topWrapSV.axis = .horizontal
    topWrapSV.spacing = 0
    topWrapSV.alignment = .center
    topWrapSV.distribution = .fillProportionally
    //topWrapSV.widthAnchor.constraint(equalTo: contentsSV.widthAnchor).isActive = true
    contentsSV.addArrangedSubview(topWrapSV)
    topWrapSV.backgroundColor = .blue
    
    let topLeftSV = UIStackView(arrangedSubviews: [appleImgV, appleLbl, UIView()])
    topLeftSV.translatesAutoresizingMaskIntoConstraints = false
    topLeftSV.axis = .horizontal
    topLeftSV.spacing = 5
    topLeftSV.alignment = .center
    topLeftSV.distribution = .fill
    //topLeftSV.widthAnchor.constraint(equalTo: topWrapSV.widthAnchor, multiplier: 0.5).isActive = true
    //topLeftSV.topAnchor.constraint(equalTo: contentsSV.topAnchor).isActive = true
    //topLeftSV.leadingAnchor.constraint(equalTo: contentsSV.leadingAnchor).isActive = true

    let topRightSV = UIStackView(arrangedSubviews: [dotsImgV, UIView()])
    topRightSV.translatesAutoresizingMaskIntoConstraints = false
    //contentsSV.addArrangedSubview(topRightSV)

    topRightSV.axis = .horizontal
    topRightSV.spacing = 5
    topRightSV.alignment = .center
    topRightSV.distribution = .fill

    //topRightSV.widthAnchor.constraint(equalTo: topWrapSV.widthAnchor, multiplier: 0.5).isActive = true
    //topRightSV.topAnchor.constraint(equalTo: contentsSV.topAnchor).isActive = true
    //topRightSV.trailingAnchor.constraint(equalTo: contentsSV.trailingAnchor).isActive = true

    topWrapSV.addArrangedSubview(topLeftSV)
    topWrapSV.addArrangedSubview(topRightSV)
    
    contentsSV.addArrangedSubview(openMacImgV)
    openMacImgV.widthAnchor.constraint(equalTo: contentsSV.widthAnchor).isActive = true
  }
  
  
  
}
