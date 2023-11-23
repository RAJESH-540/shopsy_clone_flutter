// void test({required String name, required String address, required String age,required String gender}){
//   print("name is $name");
//   print("age is $age");
//   print("address is $address");
// }
// void test2({required TestParam param}){
//   print("name is ${param.name}");
//   print("age is ${param.age}");
//   print("address is ${param.address}");
//   print("address is ${param.gender}");
// }
//
// class TestParam{
//   final String name;
//   final String address;
//   final String age;
//   final String gender;
//   TestParam( {required this.name, required this.address, required this.age,required this.gender});
//   // final String name;
//   // final String name;
// }
//
// void main(){
//   test(name: "Sachin", address: "address", age: "12");
//   test(name: "Sachin", address: "address", age: "12");
//   test(name: "Sachin", address: "address", age: "12");
//   test(name: "Sachin", address: "address", age: "12");
//   test(name: "Sachin", address: "address", age: "12");
//   test(name: "Sachin", address: "address", age: "12");
//   test(name: "Sachin", address: "address", age: "12");
//
//   var testParam = TestParam(name: "name", address: "address", age: "12",gender: "Mae");
//   test2(param: testParam);
//   test2(param: testParam);
//   test2(param: testParam);
//   test2(param: testParam);
//   test2(param: testParam);
//   test2(param: testParam);
// }