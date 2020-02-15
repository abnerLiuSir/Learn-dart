main() {
	/**
	 * Number
	 * Dart number 有两种类型 
	 * int整数值不大于64位， 具体取决于平台。
	 * double 64位（双精度）浮点数
	 */
	var x = 1;
	var hex = 0xDEADBEEF;
	/**
	 * String
	 * Dart 字符串是一组 UTF-16 单元序列。 字符串通过单引号或者双引号创建。
	 */
	var s1 = 'Single quotes work well for string literals.';
	var s2 = "Double quotes work just as well.";
	/**
	 * Boolean
	 * Dart 使用 bool 类型表示布尔值。 Dart 只有字面量 true and false 是布尔类型， 这两个对象都是编译时常量
	 */
	// 检查空字符串。
	var fullName = '';
	print(fullName.isEmpty);

	// 检查 0 值。
	var hitPoints = 0;
	print(hitPoints <= 0);

	// 检查 null 值。
	var unicorn;
	print(unicorn == null);

	// 检查 NaN 。
	var iMeantToDoThis = 0 / 0;
	print(iMeantToDoThis.isNaN);
	/**
	 * List
	几乎每种编程语言中最常见的集合可能是 array 或有序的对象集合。
	*/
	var list = [1, 2, 3];
	var list = [1, 2, 3];
	assert(list.length == 3);
	assert(list[1] == 2);

	list[1] = 1;
	assert(list[1] == 1);
}