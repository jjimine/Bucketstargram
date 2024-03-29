<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>자바(Java) 클래스 흉내내기</title>
<script type="text/javascript">
ArrayList=function(/* array? */arr){
	 // summary
	 // Returns a new object of type dojox.collections.ArrayList
	 var items=[];
	 if(arr) items=items.concat(arr);
	 this.count=items.length;
	 this.add=function(/* object */obj){
	  // summary
	  // Add an element to the collection.
	  items.push(obj);
	  this.count=items.length;
	 };
	 this.addRange=function(/* array */a){
	  // summary
	  // Add a range of objects to the ArrayList
	  if(a.getIterator){
	   var e=a.getIterator();
	   while(!e.atEnd()){
	    this.add(e.get());
	   }
	   this.count=items.length;
	  }else{
	   for(var i=0; i<a.length; i++){
	    items.push(a[i]);
	   }
	   this.count=items.length;
	  }
	 };
	 this.clear=function(){
	  // summary
	  // Clear all elements out of the collection, and reset the count.
	  items.splice(0, items.length);
	  this.count=0;
	 };
	 this.clone=function(){
	  // summary
	  // Clone the array list
	  return new dojox.collections.ArrayList(items); // dojox.collections.ArrayList
	 };
	 this.contains=function(/* object */obj){
	  // summary
	  // Check to see if the passed object is a member in the ArrayList
	  for(var i=0; i < items.length; i++){
	   if(items[i] == obj) {
	    return true; // bool
	   }
	  }
	  return false; // bool
	 };
	 this.forEach=function(/* function */ fn, /* object? */ scope){
	  // summary
	  // functional iterator, following the mozilla spec.
	  dojo.forEach(items, fn, scope);
	 };
	 this.get = function(index) {
	  return items[index];
	 };
	 this.size = function() {
	  return items.length;
	 };
	 this.getIterator=function(){
	  // summary
	  // Get an Iterator for this object
	  return new dojox.collections.Iterator(items); // dojox.collections.Iterator
	 };
	 this.indexOf=function(/* object */obj){
	  // summary
	  // Return the numeric index of the passed object; will return -1 if not found.
	  for(var i=0; i < items.length; i++){
	   if(items[i] == obj) {
	    return i; // int
	   }
	  }
	  return -1; // int
	 };
	 this.insert=function(/* int */ i, /* object */ obj){
	  // summary
	  // Insert the passed object at index i
	  items.splice(i,0,obj);
	  this.count=items.length;
	 };
	 this.item=function(/* int */ i){
	  // summary
	  // return the element at index i
	  return items[i]; // object
	 };
	 this.remove=function(/* object */obj){
	  // summary
	  // Look for the passed object, and if found, remove it from the internal array.
	  var i=this.indexOf(obj);
	  if(i >=0) {
	   items.splice(i,1);
	  }
	  this.count=items.length;
	 };
	 this.removeAt=function(/* int */ i){
	  // summary
	  // return an array with function applied to all elements
	  items.splice(i,1);
	  this.count=items.length;
	 };
	 this.reverse=function(){
	  // summary
	  // Reverse the internal array
	  items.reverse();
	 };
	 this.sort=function(/* function? */ fn){
	  // summary
	  // sort the internal array
	  if(fn){
	   items.sort(fn);
	  }else{
	   items.sort();
	  }
	 };
	 this.setByIndex=function(/* int */ i, /* object */ obj){
	  // summary
	  // Set an element in the array by the passed index.
	  items[i]=obj;
	  this.count=items.length;
	 };
	 this.toArray=function(){
	  // summary
	  // Return a new array with all of the items of the internal array concatenated.
	  return [].concat(items);
	 }
	 this.toString=function(/* string */ delim){
	  // summary
	  // implementation of toString, follows [].toString();
	  return items.join((delim||","));
	 };
	};
</script>
</head>
<body>
<!-- 테스트 로그를 출력하기 위해 -->
 
 <div id="console" style="width:500px; border:5px solid blue; font-size:20px"></div>
 
</body>
</html>