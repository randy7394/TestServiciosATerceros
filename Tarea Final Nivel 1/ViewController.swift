//
//  ViewController.swift
//  Tarea Final Nivel 1
//
//  Created by Randy Morales on 28/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userPhoto: UIImageView! {
        didSet {
            userPhoto.accessibilityLabel = "Foto del usuario"
        }
    }
    @IBOutlet var getDataButton: UIButton!
    
    @IBOutlet var getDataLabel: UILabel!
    
    @IBOutlet var tableView: UITableView! {
        didSet {
            tableView.accessibilityLabel = "Lista de elementos"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //User photo border and frame main screen
        self.userPhoto.layer.cornerRadius = self.userPhoto.frame.size.width / 2.0
        self.userPhoto.layer.borderColor = UIColor.black.cgColor
        self.userPhoto.layer.borderWidth = 0.2
        tableView.delegate = self
        tableView.dataSource = self
        
        registerTable()
        //getData() { data in todosModel = data}
        }
        
    private func registerTable () {
        let cell = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "TableViewCell")
    }
    
    func getData(completion: @escaping ((ToDosModel) -> Void)) {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") else {
                return
                }
                let session = URLSession.shared
                let task = session.dataTask(with: URLRequest(url: url)) {data, response, error in
                    if let data = data {
                        let decoder = JSONDecoder()
                        let response = try! decoder.decode(ToDosModel.self, from: data)
                        completion(response)
                    }
                }
            task.resume()
            }
    
    }
    

       
   
    
//    @IBAction func tappedGetDataButton(_ sender: Any) {
//        self.getData
//    }
    


extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return churchesArray.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell {
                
            cell.nameLabel.text = "\(churchesArray[indexPath.row].name)"
            cell.shortDescriptionLabel.text = "\(churchesArray[indexPath.row].shortDescription)"
            cell.churchPhoto.image = churchesArray[indexPath.row].photo
            return cell
            }
            
        return  UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            vc.photoSecondVC = churchesArray[indexPath.row].photo
            vc.nameSecondVC = churchesArray[indexPath.row].name
            vc.descriptionSecondVC = churchesArray[indexPath.row].longDescription
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
        
}
