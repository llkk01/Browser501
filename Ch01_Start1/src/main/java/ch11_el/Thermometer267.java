package ch11_el;

import java.util.HashMap;
import java.util.Map;

//Instance Method()사용하기(EL)
public class Thermometer267 {
	
	private Map<String, Double> locationEelsiusMp = new HashMap<String, Double>();
	
	public Double getCelsius(String location) {
		return locationEelsiusMp.get(location);
	}

	public void setCelsius(String lacation, Double value) {
		this.locationEelsiusMp.put(lacation, value);
	}
	
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if(celsius == null) {
			return null;
		}
		return celsius.doubleValue()*1.8+32.0;
	}
	
	//getInfo()를 EL에서 사용시 : info만 쓰면된다.
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
	

}
