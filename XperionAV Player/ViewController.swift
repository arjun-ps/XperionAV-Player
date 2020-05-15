//
//  ViewController.swift
//  XperionAV Player
//
//  Created by Arjun on 13/05/20.
//  Copyright © 2020 Arjun. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

struct Video {
  var name: String
  var url: String
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  @IBOutlet weak var tableViewMovies: UITableView!
  
  let cellId = "movieList"
  let videos = [
    Video(name: "Night of the Living Dead", url: "https://archive.org/download/night_of_the_living_dead/night_of_the_living_dead.mp4"),
    Video(name: "Plan 9 from Outer Space ", url: "https://archive.org/download/Plan_9_from_Outer_Space_1959/Plan_9_from_Outer_Space_1959.mp4")
  ]
  override func viewDidLoad() {
    super.viewDidLoad()
  
    // Do any additional setup after loading the view.
    tableViewMovies.delegate = self
    tableViewMovies.dataSource = self
    tableViewMovies.tableFooterView = UIView()
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? MoviesTableViewCell {
      cell.titleMovie.text = videos[indexPath.row].name
      return cell
    } else {
      return UITableViewCell()
    }
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return videos.count
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let url = URL(string: videos[indexPath.row].url)
      else {
      return
    }
    print(url)
    let player = AVPlayer(url: url)
    let controller = AVPlayerViewController()
    controller.player = player
    
    self.present(controller, animated: true)
  }
}

