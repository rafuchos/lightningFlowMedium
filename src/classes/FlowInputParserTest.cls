@IsTest
public class FlowInputParserTest {
	
	static testMethod void testParse() {
		String json = '{\"connectId\": \"1221\",'+
		' \"farmers\" : ['+
		'      {\"name\":\"João\",'+
		'      \"cowInfo\":[{'+
		'                \"cowName\": \"Joao\",'+
		'                \"cowSpecies\": \"Guzera\",'+
		'                \"cowSize\": \"150\",'+
		'                \"cowWeight\" : \"350\"},'+
		'                {'+
		'                \"cowName\": \"Joao2\",'+
		'                \"cowSpecies\": \"Guzera\",'+
		'                \"cowSize\": \"150\",'+
		'                \"cowWeight\" : \"350\"}]'+
		'     },'+
		'     {\"name\":\"João\",'+
		'      \"cowInfo\":[{'+
		'                \"cowName\": \"Joao2\",'+
		'                \"cowSpecies\": \"Guzera\",'+
		'                \"cowSize\": \"150\",'+
		'                \"cowWeight\" : \"350\"}]'+
		'     }'+
		']}';
		FlowInputParser obj = FlowInputParser.parse(json);
        List<String> jsonList = new List<String>();
        jsonList.add(json);
        List<FlowInputParser.Result> result = FlowInputParser.parseInput(jsonList);
		System.assert(obj != null);
	}
}