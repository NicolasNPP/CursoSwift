import UIKit

class Seccion14ViewController: UIViewController {

    @IBOutlet weak var myView1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func buttonAction(_ sender: Any) {
        myView1.isHidden = true
    }
}
