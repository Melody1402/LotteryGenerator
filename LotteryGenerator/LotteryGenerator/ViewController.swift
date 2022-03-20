import UIKit
import GameKit

class ViewController: UIViewController {
    
    let lotteryBalls = [Int](1...65)
    
    var shuffledLotteryBalls = [Int]()
    
    
    @IBOutlet weak var firstNumber: UILabel!
    @IBOutlet weak var forthNumber: UILabel!
    @IBOutlet weak var sixthNumber: UILabel!
    @IBOutlet weak var fifthNumber: UILabel!
    @IBOutlet weak var thirdNumber: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func Reset(_ sender: UIButton) {
        let temp = "-"
        firstNumber.text = temp
        secondNumber.text = temp
        thirdNumber.text = temp
        forthNumber.text = temp
        fifthNumber.text = temp
        sixthNumber.text = temp
    }
    
    
    @IBAction func GenerateNumbers(_ sender: UIButton) {
        generateWinningNumbers()
    }
    
  
    
    
    func generateWinningNumbers(){
        shuffledLotteryBalls = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: lotteryBalls) as! [Int]
        firstNumber.text = String(shuffledLotteryBalls[0])
        secondNumber.text = String(shuffledLotteryBalls[1])
        thirdNumber.text = String(shuffledLotteryBalls[2])
        forthNumber.text = String(shuffledLotteryBalls[3])
        fifthNumber.text = String(shuffledLotteryBalls[4])
        sixthNumber.text = String(shuffledLotteryBalls[5])
    }
    
    
}


