void main() {
	// 老规矩 先来句 helloworld
    print('Hello, World!');
	// 变量一般无需显示指定类型
    var name = 'Voyager I';
    var year = 1977;
    var antennaDiameter = 3.7;
    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
    var image = {
		'tags': ['saturn'],
		'url': '//path/to/saturn.jpg'
    };
	// 控制流程语句
	if (year >= 2001) {
		print('21st century');
	} else if (year >= 1901) {
		print('20th century');
	}

	for (var object in flybyObjects) {
		print(object);
	}

	for (int month = 1; month <= 12; month++) {
		print(month);
	}

	while (year < 2016) {
		year += 1;
	}
	// 函数
	fibonacci(int n) {
		if (n == 0 || n == 1) return n;
		return fibonacci(n - 1) + fibonacci(n - 2);
	}

	var result = fibonacci(20);
	print(result);
}

