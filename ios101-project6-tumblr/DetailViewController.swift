//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Lixing Zheng on 10/21/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var postContent: UITextView!
    @IBOutlet weak var postImage: UIImageView!
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let post = post {
            // Update the text view with the post's content
            postContent.text = post.caption.trimHTMLTags()
            
            // Check if the post has an image (assuming post.image is a UIImage)
            if let firstPhoto = post.photos.first{
                let photoURL = firstPhoto.originalSize.url
                // Use Nuke to load the image from the URL into postImage
                Nuke.loadImage(with: photoURL, into: postImage)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
