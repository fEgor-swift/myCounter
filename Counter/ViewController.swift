

import UIKit

class ViewController: UIViewController {

   // @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counterButtonPlus: UIButton!
    @IBOutlet weak var counterButtonMinus: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var cleanHistoryButton: UIButton!
    
    private var counter = 0
    private var time = DateFormatter()
    private var formattedDateTime: String = ""
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentDate = Date()
       
        time.dateStyle = .short
        time.timeStyle = .short
        formattedDateTime = time.string(from: currentDate)
        
        textView.text = "История изменений: \n"
        
    }
    

    @IBAction func counterChange2(_ sender: Any) {
        
        counter += 1
        
        counterLabel.text = "Значение счетчика: \(counter)"
        
        textView.text.append("\n\(formattedDateTime) значение изменено на +1")
    }
    
    @IBAction func minusScore(_ sender: Any) {
        
        counter -= 1
       
        if counter < 0 {
            counter = 0
            textView.text.append("\n\(formattedDateTime)  попытка уменьшить значение счётчика ниже 0")
        }
        
        counterLabel.text = "Значение счетчика: \(counter)"
    
        
        textView.text.append("\n\(formattedDateTime) значение изменено на -1")
    }
    @IBAction func reserScore(_ sender: Any) {
        
        counter = 0
        
        counterLabel.text = "Значение счетчика: \(counter)"
        textView.text.append("\n\(formattedDateTime) значение сброшено")
        
    }
    
    @IBAction func cleanHistory(_ sender: Any) {
        
        textView.text = ""
    }
    
    
}

