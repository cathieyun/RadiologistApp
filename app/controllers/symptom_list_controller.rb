class SymptomListController < UITableViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('List', image:UIImage.imageNamed('list.png'), tag:1)
    end
    self
  end

  def viewDidLoad
    view.dataSource = view.delegate = self
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(true, animated:true)
  end    

  def tableView(tableView, numberOfRowsInSection:section)
    Symptom::All.size
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
      cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
      cell
    end

    symptom = Symptom::All[indexPath.row]
    cell.textLabel.text = symptom.name
    cell
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    symptom = Symptom::All[indexPath.row]
    controller = UIApplication.sharedApplication.delegate.symptom_details_controller
    navigationController.pushViewController(controller, animated:true)
    controller.showDetailsForSymptom(symptom)
  end
#bler

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
  	tableView.deselectRowAtIndexPath(indexPath, animated: true)
  	alert = UIAlertView.alloc.init
  	symptom = Symptom::All[indexPath.row]

	# @alert_box = UIAlertView.alloc.initWithTitle("Greeting",
	# 	message: "Would you like to save the symptom #{symptom.name}?"
	# 	delegate: nil
	# 	cancelButtonTitle: "Cancel"
	# 	otherButtonTitles: "OK")
	# @alert_box.show

  	alert.message = "Would you like to save the symptom #{symptom.name}?"
   	alert.addButtonWithTitle "Cancel"
  	alert.addButtonWithTitle("OK", target:self, action: save_symptom(symptom), forControlEvents:UIControlEventTouchUpInside)
  	alert.show
  end

  def save_symptom(symptom)
  	puts symptom.name, symptom.diseases
  	@savedSymptom = NSUserDefaults.standardUserDefaults
  	@savedSymptom[symptom.name] = symptom.diseases
  end

end