//
//  ColorsTableVC.swift
//  Colors
//
//  Created by ansible on 19/01/2024.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells{
        static let colorCell = "ColorCell"
    }
    
    enum Segue{
        static let tooDetail = "ToColorsDetailVC"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    func addRandomColors(){
        for _ in 0..<50 {
            colors.append(.random()) //pass random color
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC:
    
    UITableViewDelegate,UITableViewDataSource {
    
    //how many rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count //pass random color count, make it dynamic
    }
    
    // what the show in that rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        
        //make it dynamic if row 47 it will show 47 color
        cell.backgroundColor = colors[indexPath.row]
        
        return cell //return cell with background color
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segue.tooDetail, sender: color)
    }


}
