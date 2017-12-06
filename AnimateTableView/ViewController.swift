//
//  ViewController.swift
//  AnimateTableView
//
//  Created by Abhinay Simha Vangipuram on 1/26/17.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = tableView.contentSize
        tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        cell.textLabel?.text = String(format: "This is %ld Cell", indexPath.row + 1)
        cell.backgroundColor = .randomColor()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.rowHeight = 100
//        let index = tableView.indexPathForSelectedRow
//        tableView.reloadRows(at: [index!], with: UITableViewRowAnimation.bottom)
//        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        tableView.rowHeight = 44
//        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.bottom)
//        tableView.reloadData()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let rows = tableView .indexPathsForVisibleRows
//        //let indexPathRow = IndexPath()
//        for indexPathRow in rows! {
//            tableView.rowHeight = 100
//            tableView.reloadRows(at: [indexPathRow], with: UITableViewRowAnimation.bottom)
//            tableView.reloadData()
//        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        let rows = tableView .indexPathsForVisibleRows
        //let indexPathRow = IndexPath()
        for indexPathRow in rows! {
            tableView.rowHeight = 100
            tableView.reloadRows(at: [indexPathRow], with: UITableViewRowAnimation.bottom)
            //tableView.reloadData()
        }
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let rows = tableView .indexPathsForVisibleRows
        //let indexPathRow = IndexPath()
        for indexPathRow in rows! {
            tableView.rowHeight = 44
            tableView.reloadRows(at: [indexPathRow], with: UITableViewRowAnimation.fade)
            //tableView.reloadData()
        }
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
//        let rows = tableView .indexPathsForVisibleRows
//        //let indexPathRow = IndexPath()
//        for indexPathRow in rows! {
//            tableView.rowHeight = 44
//            tableView.reloadRows(at: [indexPathRow], with: UITableViewRowAnimation.automatic)
//            tableView.reloadData()
//        }
    }
}
