//
//  ChartViewController.swift
//  SELVY
//
//  Created by Fumiya.N on 2019/08/27.
//  Copyright © 2019 Fumiya.N. All rights reserved.
//

import UIKit
import Charts

class ChartViewController: UIViewController {
  
    
    @IBOutlet weak var lineChartView: LineChartView!
    let players = ["Ozil", "Ramsey", "Laca", "Auba", "Xhaka", "Torreira"]
    let goals = [6, 8, 26, 30, 8, 10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         customizeChart(dataPoints: players, values: goals.map{ Double($0) })
        
 
        // Do any additional setup after loading the view.
    }
    
    
    func customizeChart(dataPoints: [String], values: [Double]) {
        // TO-DO: customize the chart here
        
        var dataEntries: [ChartDataEntry] = []
        for i in 0 ..< dataPoints.count {
            let dataEntry = ChartDataEntry(x: values[i], y: Double(i))
            dataEntries.append(dataEntry)
        }
        let lineChartDataSet = LineChartDataSet(entries: dataEntries, label: nil)
        let lineChartData = LineChartData(dataSet: lineChartDataSet)
        lineChartView.data = lineChartData
        
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
