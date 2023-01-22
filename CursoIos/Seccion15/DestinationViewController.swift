import UIKit

class DestinationViewController: UIViewController {
    
    var titulo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let tituloFinal = titulo {
            self.title = titulo
            if titulo == "Negro"{
                self.view.backgroundColor = .black
            }
            
            if titulo == "Naranja"{
                self.view.backgroundColor = .orange
            }
            
            if titulo == "Violeta"{
                self.view.backgroundColor = .purple
            }
        }
    }
}
