import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productImageView2: UIImageView!
    
    var detailItem: AnyObject? {
        didSet {
            //self.configureView()
        }
    }
    
   
    var productName: String? {
        didSet {
            
        }}
    var productURL: NSString? {
        didSet {
            
            //self.configureView()
        }
    }
    
    func configureView() {
       if let detail: AnyObject = self.detailItem {
            productImageView2.image = UIImage(named:productURL! as String)
            
        }
    }
    
    //6) Modify override func viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Product URL: \(productURL)")
        print("Product Name: \(productName)")
        if productName == nil
        {
            productImageView2.image = UIImage(named:"Main.png")
        }
        title = productName
        self.configureView()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

//7) Set Constraints. Click on "ViewController" title bar in StoryBoard (until yellow circle is highlighted) and select from menu: "Editor > Resolve Layout Issues > Reset to Siggested Constraints"

//8) Save

//9) Compile (Command + R) & TEST
