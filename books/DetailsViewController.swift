import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson: Models?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let simpson = selectedSimpson {
            nameLabel.text = simpson.name
            jobLabel.text = simpson.job
            imageView.image = simpson.img
        }
    }
    
    // Eğer storyboard'dan yüklüyorsanız, init(coder:) metodu gereklidir.
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

