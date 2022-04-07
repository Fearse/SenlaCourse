import UIKit

class RPSViewController: UIViewController {
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var restart: UIButton!
    @IBOutlet weak var rockB: UIButton!
    @IBOutlet weak var paperB: UIButton!
    @IBOutlet weak var ScisB: UIButton!
    var game=RPS()
    override func viewDidLoad() {
        super.viewDidLoad()
        restart.isHidden=true
    }
    @IBAction func afterChoose(_ sender: UIButton) {
        game.setIChoose(x: sender.tag)
        game.generateCChoose()
        text.text=game.decideWinner()
        rockB.isHidden=true
        paperB.isHidden=true
        ScisB.isHidden=true
        restart.isHidden=false
    }
    
    @IBAction func restart(_ sender: Any) {
        text.text="Выберите, что хотите поставить"
        rockB.isHidden=false
        paperB.isHidden=false
        ScisB.isHidden=false
        restart.isHidden=true
    }
    @IBAction func goToSetting(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        guard let settingViewController = storyboard.instantiateViewController(withIdentifier: "SettingsViewController") as? SettingsViewController else {return}
          settingViewController.drawSwitch.setOn(game.draw_available, animated: true)
        settingViewController.ruSwitch.setOn(game.ruEng, animated: true)
        show(settingViewController,sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier=="segue" else {return}
        guard let settingsViewController=segue.destination as? SettingsViewController else {return}
        settingsViewController.delegate=self
        settingsViewController.draw=game.draw_available
        settingsViewController.ru=game.ruEng
    }
    func changeLang(){
        if (game.ruEng){
            text.text = "Выберите, что хотите поставить"
            restart.setTitle("Начать сначала",for: .normal)
            settingButton.setTitle("Настройки", for: .normal)
        }
        else{
            text.text = "Choose what to put"
            restart.setTitle("Try again",for: .normal)
            settingButton.setTitle("Settings", for: .normal)
        }
    }
}

