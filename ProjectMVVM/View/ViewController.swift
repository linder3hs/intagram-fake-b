//
//  ViewController.swift
//  ProjectMVVM
//
//  Created by Linder Anderson Hassinger Solano    on 22/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    let postViewModel: PostsViewModel = PostsViewModel()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        Task {
            await setUpData()
        }
    }
    
    func setUpView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setUpData() async {
        await postViewModel.getDataFromAPI()
        tableView.reloadData()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postViewModel.posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PostTableViewCell
        
        let post = postViewModel.posts[indexPath.row]
        cell.lblUserName.text = "\(post.owner.title.capitalized) \(post.owner.firstName) \(post.owner.lastName)"
        cell.lblLikes.text = "\(post.likes) likes"
        cell.lblDesc.text = "@\(post.owner.firstName) \(post.text)"
        cell.imageProfile.image = HelperImage.setImageFromUrl(url: post.owner.picture)
        cell.imagePost.image = HelperImage.setImageFromUrl(url: post.image)
         
        return cell
    }
}
