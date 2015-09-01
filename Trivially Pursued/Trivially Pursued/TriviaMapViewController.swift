
import UIKit
import MapKit


class TriviaMapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var mapMKView: MKMapView!
    let locationManager = CLLocationManager()
    var currentPlacemark:CLPlacemark?
//    let placemark = placemarks[0] as! CLPlacemark
//    self.currentPlacemark = placemark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapMKView.showsUserLocation = true
        
        mapSetUp()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapSetUp() {
        // Request for a user's auth for location services

        locationManager.requestWhenInUseAuthorization()
        let status = CLLocationManager.authorizationStatus()
        if status == CLAuthorizationStatus.AuthorizedWhenInUse {
            self.mapMKView.showsUserLocation = true

            
        }
        
        // configure to zoom in on location of CN Tower...
        var centre: CLLocationCoordinate2D = CLLocationCoordinate2DMake(43.588208, -79.6)
        var span:MKCoordinateSpan = MKCoordinateSpanMake(0.2, 0.2)
        var regionToDisplay = MKCoordinateRegionMake(centre, span)
        self.mapMKView.setRegion(regionToDisplay, animated: true)
    }
    

    func displayLocationInfo(placemark: CLPlacemark) {
        //self.locationManager.stopUpdatingLocation()
        self.locationManager.stopUpdatingLocation()
        print(placemark.locality)
        print(placemark.postalCode)
        print(placemark.administrativeArea)
        print(placemark.country)
    }
    
    // Delegate method of CLLocation Manager for updating locations
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        CLGeocoder().reverseGeocodeLocation(manager.location, completionHandler: {(placemarks, error) -> Void in
            
            if error != nil {
                print("Error" + error.localizedDescription)
                return
            }
            if placemarks.count > 0 {
                let pm = placemarks[0] as! CLPlacemark
                self.displayLocationInfo(pm)
            }
            })

    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        // print
        print("Error" + error.localizedDescription)
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
