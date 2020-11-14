//
//  ViewController.swift
//  Scratch_Bounty
//
//  Created by Eliana Han (gyuripie) on 11/3/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Model
        // object
    // View (ListCell)
        // update
    //View Model
        // create
    
//    let bountyInfoList: [bountyInfo] = [
//        bountyInfo(name: "brook", bounty: 33000000000),
//        bountyInfo(name: "chopper", bounty: 50),
//        bountyInfo(name: "franky", bounty: 60000),
//        bountyInfo(name: "luffy", bounty: 160000),
//        bountyInfo(name: "nami", bounty: 800),
//        bountyInfo(name: "robin", bounty: 7777777),
//        bountyInfo(name: "sanji", bounty: 12222222000),
//        bountyInfo(name: "zoro", bounty: 45600000000000)
//    ]
    
    let viewModel = BountyViewModel()
    
//    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
//    let bountyList = [330000000, 50, 3000000, 16000, 8000, 777777, 120120120, 45660000000]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int {
                
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.bountyInfo = bountyInfo
//                vc?.name = bountyInfo.name
//                vc?.bounty = bountyInfo.bounty
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else { return UITableViewCell() }
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        //let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.imgView.image = bountyInfo.image
        cell.nameLabel.text = bountyInfo.name
        cell.bountyLabel.text = "\(bountyInfo.bounty)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}

//custom cell
class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
}

struct bountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
}

class BountyViewModel {
    let bountyInfoList: [bountyInfo] = [
        Scratch_Bounty.bountyInfo(name: "brook", bounty: 33000000000),
        Scratch_Bounty.bountyInfo(name: "chopper", bounty: 50),
        Scratch_Bounty.bountyInfo(name: "franky", bounty: 60000),
        Scratch_Bounty.bountyInfo(name: "luffy", bounty: 160000),
        Scratch_Bounty.bountyInfo(name: "nami", bounty: 800),
        Scratch_Bounty.bountyInfo(name: "robin", bounty: 7777777),
        Scratch_Bounty.bountyInfo(name: "sanji", bounty: 12222222000),
        Scratch_Bounty.bountyInfo(name: "zoro", bounty: 45600000000000)
    ]
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> bountyInfo {
        return bountyInfoList[index]
    }
}
