import UIKit

class ConversationsViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		let userIsLogged = UserDefaults.standard.bool(forKey: "logged_in")
		
		if !userIsLogged {
			let vc = LoginViewController()
			let nav = UINavigationController(rootViewController: vc)
			nav.modalPresentationStyle = .fullScreen
			present(nav, animated: false)
		}
	}
}
