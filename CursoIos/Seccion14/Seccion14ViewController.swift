import UIKit
import WebKit
import MapKit

class Seccion14ViewController: UIViewController {
    
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Web
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!))
        
        //Maps
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 42.70, longitude: -8.3)
    }
}
