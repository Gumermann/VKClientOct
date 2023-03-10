//
//  FriendsTableViewController.swift
//  VK Client Oct
//
//  Created by Залялиева Эльмира on 24.10.2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    let myFriends = [
    
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    Friend(image: UIImage(systemName: "heart")!, name: "Павел", friends: newFriends),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myFriends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendCell else {
            preconditionFailure("Error")
        }
        cell.nameFriend.text = myFriends[indexPath.row].name
        cell.imageAvatarFriend.image = myFriends[indexPath.row].image
      

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "friendCollection",
           let destination = segue.destination as? FriendsCollectionViewController,
           let indexpath = tableView.indexPathForSelectedRow {
            destination.title = myFriends[indexpath.row].name
            destination.arrayFriend = myFriends[indexpath.row].friends
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
