class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    tabbar = UITabBarController.alloc.init
    tabbar.viewControllers = [SymptomListController.alloc.init, SavedController.alloc.init]
    tabbar.selectedIndex = 0
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(tabbar)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end

#   include BW::KVO
#   attr_accessor :symptom

#   def application(application, didFinishLaunchingWithOptions:launchOptions)
#   	@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
#   	@window.makeKeyAndVisible

#   	main_controller = SymptomListController.alloc.init
#   	tab_controller = UITabBarController.alloc.init
#   	tab_controller.viewControllers = [main_controller]
#   	@window.rootViewController = tab_controller

#     true
#   end

  def symptom_details_controller
  	@symptom_details_controller ||= SymptomDetailsController.alloc.init
  end
end
