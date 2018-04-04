
import UIKit

class ViewController: UIViewController {

    var counter = 1
    var myTimer = Timer()
    var check = true
    var check2 = true
    
    @IBOutlet weak var imageCounter: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = UIImage(named: "frame1.png")
        imageCounter.text = String(counter)
    }
    
    @IBAction func play(_ sender: Any) {
        if check2 == true {
            //hguyfufg
        
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        check2 = false

        } else if check2 == false{
            myTimer.invalidate()
            check2 = true
        }
        
    }
   

    
    @objc func doAnimation() {
        if counter == 5 {
            check = false
        } else if counter == 1 {
            check = true
        }
        if check == true {
        counter = counter + 1
        } else {
        counter = counter - 1
        }
        
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()


}
}
