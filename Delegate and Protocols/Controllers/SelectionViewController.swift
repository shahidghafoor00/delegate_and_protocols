import UIKit


protocol SideSelectionDelegate {
    func didTapChoice(image:UIImage, name:String, color:UIColor)
}

class SelectionViewController: UIViewController {

    var selectionDelegate:SideSelectionDelegate!
    
    @IBOutlet weak var testLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func SideONe(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "one")!, name: "One", color: .red)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sideTwo(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "two")!, name: "Two", color: .green)
        dismiss(animated: true, completion: nil)
    }
    
}
