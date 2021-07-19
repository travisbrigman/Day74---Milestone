//
//  ViewController.swift
//  Day74 - Milestone
//
//  Created by Travis Brigman on 7/19/21.
//

import UIKit

class ViewController: UITableViewController {

    var notes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        notes.append("Test")
        notes.append("note")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let singleNote = notes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Note", for: indexPath)
        cell.textLabel?.text = singleNote
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            vc.selectedNote = notes[indexPath.row]

            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

