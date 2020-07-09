//
//  MoviesVC.swift
//  IOS-hw-5-p-2
//
//  Created by Jenaan Alshayji on 7/9/20.
//  Copyright © 2020 Jenaan Alshayji. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieCell
        
        
       // let city = movies[indexPath.row]
        cell.movieImage.image = UIImage(named: movies[indexPath.row].name)
        //📌أعرض الـ card للمدينة مع اسمها في الخلية
        // Configure the cell...
        
     
        return cell
    }
    
    //Dont touch this func ⛔️
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //📌قم بالانتقال الى الواجهة التالية بعد وضع اسم الـ Segue و انقل هيكل الـCity المختار من قبل المستخدم
        
        let city = movies[indexPath.row]
        performSegue(withIdentifier: "next", sender:indexPath.row)
        
        //📌استخدم دالةperformSegue(withIdentifier: , sender: T##Any?)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //📌عين الواجهة الجديدة للانتقال اليها عبر الـ Segue
        // Get the new view controller using segue.destination.
        if segue.identifier == "next"{
            
            
//let vcc = segue.destination as! MovieDetails
           // vcc.movie = movies[sender as! Int]
            
        }
            
        //📌مرر هيكل City الى الواجهة الجديدة
        // Pass the selected object to the new view controller.
        
    }
    
}
