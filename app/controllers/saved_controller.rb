class Saved < Symptom
  # def init
  #   if super
  #     self.tabBarItem = UITabBarItem.alloc.initWithTitle('Saved', image:UIImage.imageNamed('list.png'), tag:1)
  #   end
  #   self
  # end
	def viewDidLoad
		super
		self.title = "Alphabet"
		@table = UITableView.alloc.initWithFrame(self.view.bounds)
		self.view.addSubview @table
		@table.dataSource = self

		@data = ("A".."Z").to_a

		@table.dataSource = self
		@table.delegate = self
	end

	def tableView(tableView, cellForRowAtIndexPath: indexPath)
		@reuseIdentifier ||= "CELL_IDENTIFIER"

		cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
			UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
		end
		cell.textLabel.text = @data[indexPath.row]
		cell
	end

	def tableView(tableView, numberOfRowsInSection: section)
		@data.count
	end

	def tableView(tableView, didSelectRowAtIndexPath:indexPath)
		tableView.deselectRowAtIndexPath(indexPath, animated: true)

		alert = UIAlertView.alloc.init
		alert.message = "#{@data[indexPath.row]} tapped!"
		alert.addButtonWithTitle "OK"
		alert.show
	end
end