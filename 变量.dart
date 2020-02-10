main() {
	//创建一个变量并进行初始化:
	var name = 'Bob';
	// name 已经是String类型 不能赋值number的 1
	name = '1';
	print(name);
	// 动态类型 可以随意赋值
	dynamic time = '2-10';
	time = 2;
	print(time);
	// 未初始化的变量默认值是 null
	int lineCount;
	print(lineCount == null);
	// Final 和 Const  使用过程中从来不会被修改的变量
	// 区别是const比final更加严格。final只是要求变量在初始化后值不变，但通过final，
	//我们无法在编译时（运行之前）知道这个变量的值；而const所修饰的是编译时常量，我们在编译时就已经知道了它的值，
	//显然，它的值也是不可改变的。
}