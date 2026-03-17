//
//  ViewController.swift
//  M3Weather
//
//  Created by Makendra Phipps on 2/5/26.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var weatherLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    
    @IBOutlet weak var tempWarningLabel: UILabel!
    
    func getWeatherImage(matching weather: String) -> UIImage?{
        switch weather{
        case "Sunny":
            return UIImage(named:"sunny")
        case "Cloudy":
            return UIImage(named:"cloudy")
        case "Rainy":
            return UIImage(named:"rainy")
        case "Snowy":
            return UIImage(named:"snowy")
        default:
            return UIImage(named:"weather")
        }
    }
    
    
    
    func getTempLabel (with temperature: Int) -> String?{
        
        switch temperature{
        case ..<20:
            return "Extreme cold"
        case 20..<50:
            return "It's cold outside"
        case 50..<69:
            return "Cool and mild"
        case 69...85:
            return "Warm!"
        default:
            return "Heat alert!"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = ["Sunny", "Cloudy", "Rainy", "Snowy"].randomElement() ?? "Sunny"
//        guard let weather else{
//            return
//        }
        let temperature = Int.random(in: 0...100)
    
        
        
        image.image = getWeatherImage(matching: weather)
        
        weatherLabel.text = weather
        
        tempLabel.text = "\(temperature)°F" // String Interpolation
        
      
        
        tempWarningLabel.text = getTempLabel(with: temperature)
    }


}

