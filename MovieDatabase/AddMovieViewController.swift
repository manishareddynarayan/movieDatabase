//
//  AddMovieViewController.swift
//  MovieDatabase
//
//  Created by N Manisha Reddy on 2/15/18.
//  Copyright © 2018 N Manisha Reddy. All rights reserved.
//

import UIKit
import CoreData

class AddMovieViewController: UIViewController {

    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var castText: UITextField!
    @IBOutlet weak var dateText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
        let task = Movie(context: context!)
        task.title = nameText.text
        task.release_date = dateText.text
        task.cast = castText.text
        task.details = descriptionText.text
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        navigationController?.popViewController(animated: true)

        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
