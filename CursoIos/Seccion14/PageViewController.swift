import UIKit

class PageViewController: UIPageViewController {

    private var myControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "PVC"
        
        let myYellowVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Yellow")
        
        let myRedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Red")
        
        myControllers.append(myYellowVC)
        myControllers.append(myRedVC)
        
        setViewControllers([myYellowVC], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    }
}
