//
//  ViewController.swift
//  FakeLoginApp
//
//  Created by William Figueroa on 3/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EmailUsernameTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var LogInButton: UIButton!
    
    @IBOutlet weak var Error: UILabel!
    
    @IBOutlet weak var SignInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        warning()
    }

    func warning() {
        
        //hides the error label
        Error.alpha = 0
    }
    
    func Validate() -> String? {
        
        // checking to see if text has been entered
        if EmailUsernameTextField.text == "" || PasswordTextField.text == "" {
            
            return "Please fill in all fields"
        }
        
        return nil
    }
    
    @IBAction func LogInPressed(_ sender: Any) {
        
        let error = Validate()
        
        if error != nil {
         
            //there's something wrong
            Error.text = error!
            Error.alpha = 1
        }
        
        else {
            
        // transitions to welcome screen
        WelcomePageView()
        }
    }
   
    func WelcomePageView() {
        
        let HomeView = storyboard?.instantiateViewController(identifier: Home.Storyboard.WelcomeViewContoller) as? LogInViewController
        
        view.window?.rootViewController = HomeView
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func SignInPressed(_ sender: Any) {
    }
    
}

