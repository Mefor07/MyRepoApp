//
//  ViewController.swift
//  MyRepoApp
//
//  Created by Mefor Louis on 11/6/20.
//  Copyright © 2020 Pmedialabs. All rights reserved.
//

import UIKit

class RepoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Git Last 25 Commits"
        
        tableView.register(MyCell.self, forCellReuseIdentifier: "cellId")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 25
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
    }
}


class MyCell: UITableViewCell{
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    let fileName: UILabel = {
        let label = UILabel()
        label.text = "File Name"
        label.font = UIFont.boldSystemFont(ofSize: 12.0)
        return label
    }()
    
    let desc: UILabel = {
        let description = UILabel()
        description.text = "Adjust link to only include 'the team' rather than 'join the team' as"
        description.font = UIFont.boldSystemFont(ofSize: 12.0)
        return description
    }()
    
    let days: UILabel = {
        let days = UILabel()
        days.text = "2 days ago"
        days.font = UIFont.boldSystemFont(ofSize: 12.0)
        return days
    }()
    
    func setupViews(){
        addSubview(fileName)
        addSubview(desc)
        addSubview(days)
        
        
        fileName.translatesAutoresizingMaskIntoConstraints = false
        fileName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 1).isActive = true
        fileName.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        fileName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5).isActive = true
        fileName.widthAnchor.constraint(equalToConstant: 70).isActive = true
        fileName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        desc.translatesAutoresizingMaskIntoConstraints = false
        desc.leftAnchor.constraint(equalTo: fileName.rightAnchor, constant: 15).isActive = true
        desc.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        desc.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5).isActive = true
        desc.widthAnchor.constraint(equalToConstant: 250).isActive = true
        desc.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        days.translatesAutoresizingMaskIntoConstraints = false
        days.leftAnchor.constraint(equalTo: desc.rightAnchor, constant: 10).isActive = true
        days.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        days.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5).isActive = true
        days.widthAnchor.constraint(equalToConstant: 100).isActive = true
        days.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
