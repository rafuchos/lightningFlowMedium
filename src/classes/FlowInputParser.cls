public class FlowInputParser {
	@AuraEnabled
    public String connectId;
    @AuraEnabled
	public List<FarmerDataType> farmers;

	
	public static FlowInputParser parse(String json) {
		return (FlowInputParser) System.JSON.deserialize(json, FlowInputParser.class);
	}
    
    @InvocableMethod(label='Parse Input')
    public static List<Result> parseInput(List<String> json) {
		FlowInputParser returnParser = FlowInputParser.parse(json[0]);
        Result result = new Result();
        result.flowData = returnParser;
        List<Result> resultList = new List<Result>();
        resultList.add(result);
        return resultList;
    }
    
    public class Result {
        @InvocableVariable(label='ReturnData' description='Retrieved data')
        public FlowInputParser flowData;
    }
}