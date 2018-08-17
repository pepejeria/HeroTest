import UIKit
import Hero

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        hero.isEnabled = true
    }

}

extension CustomNavigationController: UINavigationControllerDelegate {

}

class PresentedViewController: UIViewController {

    deinit {
        print("--> \(String(describing: type(of: self)))")
    }

    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.dismiss(animated: true)
    }

}
