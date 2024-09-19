var obj = {
		name:"V2beach",
		cal:function(x){
			return x+1;
		},
		age:function(y){
			return y+1;
		}
};
document.write("Hello, world.");
document.write("<strong>"+obj.cal(1)+"  type:"+typeof obj.cal(1)+"</strong>");