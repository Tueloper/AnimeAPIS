//
//  ViewController.swift
//  PublicAPI
//
//  Created by Tueloper on 2022-10-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_GetAllAnime(_ sender: Any) {
        Anime_Helper.fetchDir()
    }
    
    @IBAction func btn_AnimeFactData(_ sender: Any) {
        AnimeFacts_Helper.fetchDir()
    }

    @IBAction func btn_GhibliData(_ sender: Any) {
        Ghibli_Helper.fetchDir()
    }

}

