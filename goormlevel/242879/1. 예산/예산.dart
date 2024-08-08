import 'dart:io';
void main() {
	var line = stdin.readLineSync()!;
	
	// 구입할 물품의 종류 수
	var totalProductTypesCount = int.parse(line.split(' ')[0]);
	
	// 예산
	var budget = int.parse(line.split(' ')[1]);
	
	// 구매할 물품의 가격 및 구매 개수를 가지고 있는 라인
	List<String> productPriceAndAmountLines = [];
	
	for (int i = 0; i < totalProductTypesCount; i++) {
		var line = stdin.readLineSync()!;
		productPriceAndAmountLines.add(line);
	}
	
	for (var line in productPriceAndAmountLines) {
		var price = int.parse(line.split(' ')[0]);
		var amount = int.parse(line.split(' ')[1]);
		
		budget -= price * amount;
		if (budget < 0) {
		  break;
		}
	}
	
	if (budget < 0) {
		print('No');
	} else {
		print(budget);
	}
}
