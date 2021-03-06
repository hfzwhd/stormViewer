//
//  DetailViewController.swift
//  stormViewer
//
//  Created by Hafiz Wahid on 10/08/2017.
//  Copyright © 2017 hw. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage
        {
            imageView.image = UIImage(named: imageToLoad)
        }
        
        title = selectedImage
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        

        // Do any additional setup after loading the view.
    }
    
    func shareTapped() {
        let vc = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
