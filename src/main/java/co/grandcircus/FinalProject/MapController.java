package co.grandcircus.FinalProject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {

	@RequestMapping("/MapResults")

	public ModelAndView showMapPage(@RequestParam(value = "streetNum", required = false) String streetNum,
			@RequestParam(value = "streetName", required = false) String streetName,
			@RequestParam(value = "city", required = false) String city,
			@RequestParam(value = "state", required = false) String state,
			@RequestParam(value = "zip", required = false) Integer zip) {
		ModelAndView mav = new ModelAndView("Map");
		city = "Detroit";
		state = "Michigan";

		mav.addObject("city", city);
		mav.addObject("state", state);
		mav.addObject("number", streetNum);
		mav.addObject("name", streetName);
		mav.addObject("zip", zip);

		return mav;
	}
	
	@RequestMapping("/participant")
	public ModelAndView showMapPage(@RequestParam(value = "firstName", required = false) String firstName,
			@RequestParam(value = "lastName", required = false) String lastName,
			@RequestParam(value = "age", required = false) String age, @RequestParam(value = "gender", required = false) String gender, 
			@RequestParam(value = "status", required = false) String status) {
			
		    ModelAndView mav = new ModelAndView("participant");
		    mav.addObject("firstName", firstName);
		    mav.addObject("lastName", lastName);
		    mav.addObject("age", age);
		    mav.addObject("gender", gender);
		    mav.addObject("status", status);
		    return mav;
	}

//	@RequestMapping("/takeAddress")
//	public ModelAndView findLatLong(String streetNum, String streetName, String city, String state) {
//			ModelAndView mav = new ModelAndView(redirect:/MapResults");
//			
//			// Create a rest template
//			RestTemplate restTemplate = new RestTemplate();
//			
//			// Set url
//			String url = "https://maps.googleapis.com/maps/api/geocode/json?address=streetNum+StreetName+\",\"+ city +\",\" + state&key=AIzaSyDsys0GZf3YUkzCQt1n-qVwIjzI3ga3e5Y";
//			
//			// Make the Request.
//			LatLongData response = restTemplate.getForObject(url, LatLongData.class);
//
//			mav.addObject("location", response.getTiny()); 
//			return mav;
//	}

}
