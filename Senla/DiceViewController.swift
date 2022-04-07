import UIKit

class DiceViewController: UIViewController {

    @IBOutlet weak var rollButton: UIButton!
    
    @IBOutlet weak var reRollButton: UIButton!
    
    @IBOutlet var numbers: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reRollButton.isHidden=true

    }
    

    @IBAction func roll(_ sender: Any) {
        let x = Int.random(in: 0...5)
        for i in numbers.indices{
            if (i != x){
                numbers[i].isHidden=true
            }
        }
        reRollButton.isHidden=false
        rollButton.isHidden=true
    }
    @IBAction func rer(_ sender: Any) {
        for i in numbers.indices{
            numbers[i].isHidden=false
        }
        reRollButton.isHidden=true
        rollButton.isHidden=false
    }
}
