//
//  ViewController.swift
//  MovieDatabase
//
//  Created by N Manisha Reddy on 2/15/18.
//  Copyright © 2018 N Manisha Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var tasks:[Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let nibvalue = Bundle.main.loadNibNamed("movieCell", owner: TableViewCell1.self, options: nil)
//        tableView.register(nibvalue, forCellReuseIdentifier: "movieCell")
          tableView.register(UINib(nibName: "TableViewCell1", bundle: nil), forCellReuseIdentifier: "movieCell")
        tableView.rowHeight = 260.0
    
    }
    override func viewWillAppear(_ animated: Bool) {
        fetchData()
        tableView.reloadData()
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               //let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? TableViewCell1
        let cell = tableView.dequeueReusableCell(withIdentifier:"movieCell" ) as? TableViewCell1
        let task = tasks[indexPath.row]
        cell?.nameTextField.text = task.title
        cell?.dateTextField.text = task.release_date
        cell?.castTextField.text = task.cast
        cell?.descriptionTextField.text = task.details
        return cell!
    }
    func fetchData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            tasks = try context.fetch(Movie.fetchRequest())
            
        } catch {
            print("fetch failed")
        }
    }
    
}

