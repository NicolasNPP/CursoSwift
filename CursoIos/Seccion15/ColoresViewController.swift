import UIKit

class ColoresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func orangeButton(_ sender: Any) {
        performSegue(withIdentifier: "orangeSegue", sender: self)
    }
    
    @IBAction func blackButton(_ sender: Any) {
        performSegue(withIdentifier: "blackSegue", sender: self)
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        performSegue(withIdentifier: "purpleSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "orangeSegue" {
            if let destino = segue.destination as? DestinationViewController {
                destino.titulo = "Naranja"
            }
        }
        
        if segue.identifier == "blackSegue" {
                if let destino = segue.destination as? DestinationViewController {
                    destino.titulo = "Negro"
                }
        }
        
        if segue.identifier == "purpleSegue" {
                if let destino = segue.destination as? DestinationViewController {
                    destino.titulo = "Violeta"
                }
        }
    }
}
