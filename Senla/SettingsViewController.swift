import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var drawSwitch: UISwitch!
    @IBOutlet weak var ruSwitch: UISwitch!
    weak var delegate:RPSViewController?
    var draw:Bool=true;
    var ru:Bool=true
    override func viewDidLoad() {
        super.viewDidLoad()
        drawSwitch.setOn(draw, animated: true)
        ruSwitch.setOn(ru, animated: true)
    }
    
     @IBAction func drawChange(_ sender: Any) {
         delegate?.game.switchDraw()
     }
    @IBAction func ruSwitch(_ sender: Any) {
        delegate?.game.switchLang()
        delegate?.changeLang()
    }
}
