import 'dart:io';
void main() {
	var testCaseLengthLine = stdin.readLineSync()!;
	var testCaseLength = int.parse(testCaseLengthLine);
	
	List<String> testCaseList = [];
	
	for (int i = 0; i < testCaseLength; i++) {
		var testCaseLine = stdin.readLineSync()!;
		
		testCaseList.add(testCaseLine);
	}
	
	for (var testCase in testCaseList) {
		var targetXPosition = int.parse(testCase.split(' ')[0]);
		var targetYPosition = int.parse(testCase.split(' ')[1]);
		
		var distanceCount = int.parse(testCase.split(' ')[2]);
		
		var minDistancePosition = (targetXPosition < 0 ? -targetXPosition : targetXPosition) + (targetYPosition < 0 ? -targetYPosition : targetYPosition);
		
		if (distanceCount < minDistancePosition) {
			print('NO');
		} else if (distanceCount == minDistancePosition) {
			print('YES');
		} else if ((distanceCount - minDistancePosition) % 2 == 0) {
			print('YES');
		} else {
			print('NO');
		}
	}
}