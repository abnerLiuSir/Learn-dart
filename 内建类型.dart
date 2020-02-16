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
	print(list.length == 3);
	print(list[1] == 2);
	list[1] = 1;
	print(list[1] == 1);
	//在 List 字面量之前添加 const 关键字，可以定义 List 类型的编译时常量：
	var constantList = const [1, 2, 3];
	// constantList[1] = 1; // 取消注释会引起错误。
	/**
	 * Set
		在 Dart 中 Set 是一个元素唯一且无需的集合。
	 */
	var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
	//要创建一个空集，使用前面带有类型参数的 {} ，或者将 {} 赋值给 Set 类型的变量：
	var names = <String>{};
	// Set<String> names = {}; // 这样也是可以的。
	// var names = {}; // 这样会创建一个 Map ，而不是 Set 。
	//因为先有的 Map 字母量语法，所以 {} 默认是 Map 类型。   如果忘记在 {} 上注释类型或赋值到一个未声明类型的变量上，
	//那么 Dart 会创建一个类型为 Map<dynamic, dynamic> 的对象。

	//使用 add() 或 addAll() 为已有的 Set 添加元素：

	var elements = <String>{};
	elements.add('fluorine');
	elements.addAll(halogens);

}