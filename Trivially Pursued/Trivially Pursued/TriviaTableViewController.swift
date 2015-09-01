
import UIKit

class TriviaTableViewController: UITableViewController {


    
    var trivias = [Trivia]()
    
    var trivia = Trivia(name: "Sunnyside", city: "Toronto", trivia: "West End Beach")
    var trivia1 = Trivia(name: "Roy Thompson Hall", city: "Toronto", trivia: "Concert Hall")
    var trivia2 = Trivia(name: "Rhino's", city: "Toronto", trivia: "Huge patio with wifi")
    var trivia3 = Trivia(name: "The Gladstone", city: "Toronto", trivia: "Great Friday Karaoke")
    var trivia4 = Trivia(name: "The Old Mill", city: "Toronto", trivia: "Fancy events hotel")
    var trivia5 = Trivia(name: "The Rogers Centre", city: "Toronto", trivia: "Formerly the Sky Dome")
    var trivia6 = Trivia(name: "Sneaky Dee's", city: "Toronto", trivia: "Rock n Roll")
    var trivia7 = Trivia(name: "Honest Ed's", city: "Toronto", trivia: "Classic city landmark")
    var trivia8 = Trivia(name: "The Eaton Centre", city: "Toronto", trivia: "Geese flying")
    var trivia9 = Trivia(name: "Cadillac Lounge", city: "Toronto", trivia: "Rockabilly")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        trivias.append(trivia)
        trivias.append(trivia1)
        trivias.append(trivia2)
        trivias.append(trivia3)
        trivias.append(trivia4)
        trivias.append(trivia5)
        trivias.append(trivia6)
        trivias.append(trivia7)
        trivias.append(trivia8)
        trivias.append(trivia9)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
       return trivias.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TableViewCell


        cell.landmark.text = trivias[indexPath.row].name
        cell.location.text = trivias[indexPath.row].city
        cell.details.text = trivias[indexPath.row].trivia
        
        
        return cell

    }
  

    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
    // initial alpha state
    cell.alpha = 0
    // final alpha state (post animation)
    UIView.animateWithDuration(1.0, animations: { () -> Void in
        cell.alpha = 1
        })
}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
