
import UIKit
import MapKit


class TriviaMapViewController: UIViewController {

    @IBOutlet var mapMKView: MKMapView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapMKView.showsUserLocation = true
        
        let locationManager = CLLocationManager()
        
        // Request for a user's auth for location services
        locationManager.requestAlwaysAuthorization()
        let status = CLLocationManager.authorizationStatus()
        if status == CLAuthorizationStatus.AuthorizedWhenInUse {
            self.mapMKView.showsUserLocation = true
        }
        
        var centre: CLLocationCoordinate2D = CLLocationCoordinate2DMake(43.588208, -79.6)
        var span:MKCoordinateSpan = MKCoordinateSpanMake(0.2, 0.2)
        var regionToDisplay = MKCoordinateRegionMake(centre, span)
        self.mapMKView.setRegion(regionToDisplay, animated: true)
       
//        var currentPlacemark:CLPlacemark?
//        let placemark = placemarks[0] as! CLPlacemark
//        self.currentPlacemark = placemark
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
