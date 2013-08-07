class SymptomDetailsController < UIViewController
  def loadView
  	self.view = UIWebView.alloc.init
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(false, animated:true)
  end

  def showDetailsForSymptom(symptom)
    navigationItem.title = symptom.name
    request = NSURLRequest.requestWithURL(symptom.url)
    view.loadRequest(request)
  end 
end
