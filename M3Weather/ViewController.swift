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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = "Snowy"
        let temperature = 48
    
        
        /*
        if weather == "Sunny" {
            image.image = UIImage(named:"sunny")
        }
        else if weather == "Cloudy" {
            image.image = UIImage(named:"cloudy")
        }
        else if weather == "Rainy" {
            image.image = UIImage(named:"rainy")
        }
        else if weather == "Snowy" {
            image.image = UIImage(named:"snowy")
        }
        else
        {
            image.image = UIImage(named:"weather")
        }
        */
        
        switch weather{
        case "Sunny":
            image.image = UIImage(named:"sunny")
        case "Cloudy":
            image.image = UIImage(named:"cloudy")
        case "Rainy":
            image.image = UIImage(named:"rainy")
        case "Snowy":
            image.image = UIImage(named:"snowy")
        default:
            image.image = UIImage(named:"weather")
        }
        
        weatherLabel.text = weather
        
        tempLabel.text = "\(temperature)°F" // String Interpolation
        
        /*
        if temperature < 20{
            tempWarningLabel.text = "Extreme cold"
        }
        else if temperature >= 20 && temperature < 50{
            tempWarningLabel.text = "It's cold outside"
        }
        else if (50...68).contains(temperature){
            tempWarningLabel.text = "Cool and mild"
        }
        else if (69...85).contains(temperature){
            tempWarningLabel.text = "Warm!"
        }
        else{
            tempWarningLabel.text = "Heat alert!"
        }
         */
        
        switch temperature{
        case ..<20:
            tempWarningLabel.text = "Extreme cold"
        case 20..<50:
            tempWarningLabel.text = "It's cold outside"
        case 50..<69:
            tempWarningLabel.text = "Cool and mild"
        case 69...85:
            tempWarningLabel.text = "Warm!"
        default:
            tempWarningLabel.text = "Heat alert!"
            
        }
    }


}

