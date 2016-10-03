import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?


func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
let splitViewController = self.window!.rootViewController as! UISplitViewController
let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
    navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem()
    splitViewController.delegate = self; return true}
func applicationWillResignActive(application: UIApplication) {
func applicationDidEnterBackground(application: UIApplication) {}
func applicationWillEnterForeground(application: UIApplication) {}
func applicationDidBecomeActive(application: UIApplication) {}
func applicationWillTerminate(application: UIApplication) {}
func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController:UIViewController, ontoPrimaryViewController primaryViewController:UIViewController) -> Bool {
guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
    if topAsDetailController.detailItem == nil {return true};return false}}}