//
//  HomeVC.swift
//  Shadhin-BL-Example
//
//  Created by Joy on 29/11/22.
//

import UIKit
import DeenIslamSDK
import SwiftUI

class HomeVC: UIViewController {
    
    init(){
        super.init(nibName: "HomeVC", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var sessionTimeButton: UIButton!
    
    @IBOutlet weak var sessionTimeTV: UITextField!
    
    private var dataSource : [String] = ["Home","Islamic Name","Tasbeeh","Daily Dua","Hadith","PrayerTime","Qibla", "Zakat","Al Quran","", "IslamicEvent", "NearestMosque", "EidJamatPlace", "NamazLearning", "MoccaModinaLive", "DuaAndAmol", "IslamicLearningStory", "Ramadan", "khotom Quran", "Hajj and Umrah", "Allah All Names", "Islamic Calender"]
    var token : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
        let toolbar = UIToolbar()
        toolbar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44)
        let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(onKeyboardDone))
        toolbar.setItems([done], animated: true)
        textField.delegate = self
        textField.inputAccessoryView = toolbar
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sessionTimeButton.isEnabled = true
        
        
        // Check if SDK is initialized
        if DeenIslamGPSDK.shared.isInitialized {
            // SDK is already initialized
        } else {
            // Need to initialize SDK
            DeenIslamGPSDK.shared.initialize(with: self.tabBarController, nav: self.navigationController!, delegate: self, token: token ?? "", isBL: true)
        }

        
        DeenIslamGPSDK.shared.setNavigationController(with: self.tabBarController, nav: self.navigationController!)
    }
    @objc func onKeyboardDone(){
        textField.resignFirstResponder()
    }
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            UIView.animate(withDuration: 0.2) {
                self.bottomConstraint.constant = keyboardHeight
            }
        }
    }
    @objc func keyboardWillHide(_ notification: Notification) {
        UIView.animate(withDuration: 0.2) {
            
            self.bottomConstraint.constant = 16
        }
    }

   
    @IBAction func onButtonPressed(_ sender: Any) {
        //guard let code = textField.text else {return}
        //ShadhinBL.shared.openPatch(patchID: code, navigationController: self.navigationController!, tabController: self.tabBarController)
    }
    
    @IBAction func onSessionTimeSetPressed(_ sender: Any) {
//        guard let tt = sessionTimeTV.text, let time = Double(tt) else {return}
//        ShadhinBL.shared.setSessionPulesTimer(second: time)
//        sessionTimeButton.isEnabled = false
        
    }
}

extension HomeVC : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if #available(iOS 14.0, *) {
            var content = cell.defaultContentConfiguration()
            content.text = dataSource[indexPath.row]
            cell.contentConfiguration = content
        } else {
            // Fallback on earlier versions
            cell.textLabel?.text = dataSource[indexPath.row]
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let type =  FeatureType(rawValue: indexPath.row)!
        switch indexPath.row{
        case 0:
            DeenIslamGPSDK.shared.gotoHome()
        case 1:
            DeenIslamGPSDK.shared.goto(feature: .islamicName)
        case 2:
            DeenIslamGPSDK.shared.goto(feature: .tasbeeh)
        case 3:
            DeenIslamGPSDK.shared.goto(feature: .dua)
        case 4:
            DeenIslamGPSDK.shared.goto(feature: .hadith)
        case 5:
            DeenIslamGPSDK.shared.goto(feature: .prayerTime)
        case 6:
            DeenIslamGPSDK.shared.goto(feature: .qibla)
        case 7:
            DeenIslamGPSDK.shared.goto(feature: .zakat)
        case 8:
            DeenIslamGPSDK.shared.goto(feature: .alQuaran)
        case 9: break
            //DeenIslamGPSDK.shared.goto(feature: .ramadan )
        case 10:
            DeenIslamGPSDK.shared.goto(feature: .islamicEvent )
        case 11:
            DeenIslamGPSDK.shared.goto(feature: .nearestMosque)
        case 12:
            DeenIslamGPSDK.shared.goto(feature: .eidJamatPlace)
        case 13:
            DeenIslamGPSDK.shared.goto(feature: .namazLearning)
        case 14:
            DeenIslamGPSDK.shared.goto(feature: .moccaModinaLive)
        case 15:
            DeenIslamGPSDK.shared.goto(feature: .duaAndAmol)
        case 16:
            DeenIslamGPSDK.shared.goto(feature: .islamicLearningStory)
        case 17:
            DeenIslamGPSDK.shared.goto(feature: .ramadan)
        case 18:
            DeenIslamGPSDK.shared.goto(feature: .KhotomQuran)
        case 19:
            DeenIslamGPSDK.shared.goto(feature: .HajjAndUmrah)
        case 20:
            DeenIslamGPSDK.shared.goto(feature: .AllahNames)
            
        case 21:
            DeenIslamGPSDK.shared.goto(feature: .IslamicCalender)
        case 22:
            DeenIslamGPSDK.shared.goto(feature: .IslamicBoyan)
            
        default:
            DeenIslamGPSDK.shared.goto(feature: .home)
        }
        
        
    }
}

extension HomeVC : UITextFieldDelegate{
    
}
extension HomeVC : DeenIslamSDKNotifier{
    func errorMessage(error: String) {
        
    }
    
    func tokenStatus(token isValid: Bool, error: String?) {
        if isValid{
            print("token is valid")
        }else{
            print(error ?? "error")
        }
    }
}


