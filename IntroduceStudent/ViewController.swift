//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Ashley Duran on 12/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        var year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        switch year {
        case "Second":
            year = "sophomore"
        case "Third":
            year = "junior"
        case "Fourth":
            year = "senior"
        default:
            year = "freshman"
        }
        
        let isMorePets = (morePetsSwitch.isOn == true) ? "do" : "don't"
               
        // variable of type string that holds the introduction
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. I \(isMorePets) want more pets."
        
        // morePetsSwitch.isOn
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

