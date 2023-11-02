import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var st = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(st.i)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        var text = sender.currentTitle!
        st.checkChoise(text)
        updateUI(st.i)
    }
    
    func updateUI(_ i:Int){
        storyLabel.text = st.ex[i].title
        choice1Button.setTitle(st.ex[i].choice1, for:.normal)
        choice2Button.setTitle(st.ex[i].choice2, for: .normal)
    }
    
}

