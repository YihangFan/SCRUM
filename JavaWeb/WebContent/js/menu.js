var path = null;
var zlgclick = 0;
var zhyclick = 0;
var mdfclick = 0;
var cxdclick = 0;
var teacher = null;
var teacherpath = null;
var filepath = null;

function ruanjian(){
	path = "/rjxy";
	if(document.getElementById("rj") == null){
		var adoc = document.createElement("a");
		adoc.id="rj";
		adoc.href="#";
		adoc.setAttribute("onclick","javascript:major();");
		adoc.innerHTML="软件工程";
	
		var doc = document.createElement("li");
		doc.appendChild(adoc);
	
		document.getElementById("ul2").appendChild(doc);
		document.getElementById("name1").innerHTML="软件学院";
		document.getElementById("position").innerHTML="当前位置:软件学院->";
	}
}

function major(){
	path = "/rjxy/rjgc";
	if(document.getElementById("zyxx") == null){
		var adoc1 = document.createElement("a");
		adoc1.id="zyxx";
		adoc1.href="#";
		adoc1.setAttribute("onclick","javascript:type1();");
		adoc1.innerHTML="专业限选课";
		
		var doc1 = document.createElement("li");
		doc1.appendChild(adoc1);
		document.getElementById("ul3").appendChild(doc1);
	}
	
	if(document.getElementById("zybx") == null){
		var adoc2 = document.createElement("a");
		adoc2.id="zybx";
		adoc2.href="#";
		adoc2.setAttribute("onclick","javascript:type2();");
		adoc2.innerHTML="专业必修课";
		var doc2 = document.createElement("li");
		doc2.appendChild(adoc2);
		document.getElementById("ul3").appendChild(doc2);
	}
	document.getElementById("position").innerHTML="当前位置:软件学院->软件工程->";
	document.getElementById("name2").innerHTML="软件工程";
}

function type1(){
	path = "/rjxy/rjgc";
	if(document.getElementById("No1") == null){
		if(document.getElementById("No3") != null){
			document.getElementById("No3").remove();
		}
		if(document.getElementById("No4") != null){
			document.getElementById("No4").remove();
		}
		var adoc1 = document.createElement("a");
		adoc1.id="No1";
		adoc1.href="#";
		adoc1.setAttribute("onclick","javascript:RJcourse1();");
		adoc1.innerHTML="软件体系结构";
		var doc1 = document.createElement("li");
		doc1.appendChild(adoc1);
		document.getElementById("ul4").appendChild(doc1);
		document.getElementById("position").innerHTML += "专业限选课->";
	}
	
	if(document.getElementById("No2") == null){
		if(document.getElementById("No3") != null){
			document.getElementById("No3").remove();
		}
		if(document.getElementById("No4") != null){
			document.getElementById("No4").remove();
		}
		var adoc2 = document.createElement("a");
		adoc2.id="No2";
		adoc2.href="#";
		adoc2.setAttribute("onclick","javascript:RJcourse2();");
		adoc2.innerHTML="软件综合实践";
		var doc2 = document.createElement("li");
		doc2.appendChild(adoc2);
		document.getElementById("ul4").appendChild(doc2);
	}
	document.getElementById("position").innerHTML="当前位置:软件学院->软件工程->专业限选课->";
	document.getElementById("name3").innerHTML="专业限选课";
}

function type2(){
	path = "/rjxy/rjgc";
	if(document.getElementById("No3") == null){
		if(document.getElementById("No1") != null){
			document.getElementById("No1").remove();
		}
		if(document.getElementById("No2") != null){
			document.getElementById("No2").remove();
		}
		var adoc1 = document.createElement("a");
		adoc1.id="No3";
		adoc1.href="#";
		adoc1.setAttribute("onclick","javascript:RJcourse3();");
		adoc1.innerHTML="程序设计基础";
		var doc1 = document.createElement("li");
		doc1.appendChild(adoc1);
		document.getElementById("ul4").appendChild(doc1);
	}
	
	if(document.getElementById("No4") == null){
		if(document.getElementById("No1") != null){
			document.getElementById("No1").remove();
		}
		if(document.getElementById("No2") != null){
			document.getElementById("No2").remove();
		}
		var adoc2 = document.createElement("a");
		adoc2.id="No4";
		adoc2.href="#";
		adoc2.setAttribute("onclick","javascript:RJcourse4();");
		adoc2.innerHTML="SOA";
		var doc2 = document.createElement("li");
		doc2.appendChild(adoc2);
		
		document.getElementById("ul4").appendChild(doc2);
	}
	document.getElementById("position").innerHTML="当前位置:软件学院->软件工程->专业必修课->";
	document.getElementById("name3").innerHTML="专业必修课";
}

function RJcourse1(){
	path = "/rjxy/rjgc/rjtxjg";
	if(document.getElementById("teacher3") != null){
		document.getElementById("teacher3").remove();
	}
	if(document.getElementById("teacher4") != null){
		document.getElementById("teacher4").remove();
	}
	if(document.getElementById("teacher5") != null){
		document.getElementById("teacher5").remove();
	}
	if(document.getElementById("teacher6") != null){
		document.getElementById("teacher6").remove();
	}
	if(document.getElementById("teacher7") != null){
		document.getElementById("teacher7").remove();
	}
	if(document.getElementById("teacher8") != null){
		document.getElementById("teacher8").remove();
	}
	if(document.getElementById("teacher1") == null){
		var adoc1 = document.createElement("a");
		adoc1.id="teacher1";
		adoc1.href="#";
		adoc1.setAttribute("onclick","javascript:zlg();");
		adoc1.innerHTML="曾立刚";
		var doc1 = document.createElement("li");
		doc1.appendChild(adoc1);
		document.getElementById("ul5").appendChild(doc1);
	}
	
	if(document.getElementById("teacher2") == null){
		var adoc2 = document.createElement("a");
		adoc2.id="teacher2";
		adoc2.href="#";
		adoc2.setAttribute("onclick","javascript:zhy();");
		adoc2.innerHTML="张红延";
		var doc2 = document.createElement("li");
		doc2.appendChild(adoc2);
		document.getElementById("ul5").appendChild(doc2);
	}
	document.getElementById("position").innerHTML="当前位置:软件学院->软件工程->专业限选课->软件体系结构->";
	filepath = "当前位置:软件学院->软件工程->专业限选课->软件体系结构->";
	document.getElementById("name4").innerHTML="软件体系结构";
}

function RJcourse2(){
	path = "/rjxy/rjgc/rjzhsj";
	if(document.getElementById("teacher1") != null){
		document.getElementById("teacher1").remove();
	}
	if(document.getElementById("teacher2") != null){
		document.getElementById("teacher2").remove();
	}
	if(document.getElementById("teacher5") != null){
		document.getElementById("teacher5").remove();
	}
	if(document.getElementById("teacher6") != null){
		document.getElementById("teacher6").remove();
	}
	if(document.getElementById("teacher7") != null){
		document.getElementById("teacher7").remove();
	}
	if(document.getElementById("teacher8") != null){
		document.getElementById("teacher8").remove();
	}
	if(document.getElementById("teacher3") == null){
		var adoc1 = document.createElement("a");
		adoc1.id="teacher3";
		adoc1.href="#";
		adoc1.setAttribute("onclick","javascript:zhy();");
		adoc1.innerHTML="张红延";
		var doc1 = document.createElement("li");
		doc1.appendChild(adoc1);
		document.getElementById("ul5").appendChild(doc1);
	}
	
	if(document.getElementById("teacher4") == null){
		var adoc2 = document.createElement("a");
		adoc2.id="teacher4";
		adoc2.href="#";
		adoc2.setAttribute("onclick","javascript:zlg();");
		adoc2.innerHTML="曾立刚";
		var doc2 = document.createElement("li");
		doc2.appendChild(adoc2);
		document.getElementById("ul5").appendChild(doc2);
	}
	document.getElementById("position").innerHTML="当前位置:软件学院->软件工程->专业限选课->软件综合实践->";
	filepath = "当前位置:软件学院->软件工程->专业限选课->软件综合实践->";
	document.getElementById("name4").innerHTML="软件综合实践";
}

function RJcourse3(){
	path = "/rjxy/rjgc/cxsjjc";
	if(document.getElementById("teacher1") != null){
		document.getElementById("teacher1").remove();
	}
	if(document.getElementById("teacher2") != null){
		document.getElementById("teacher2").remove();
	}
	if(document.getElementById("teacher3") != null){
		document.getElementById("teacher3").remove();
	}
	if(document.getElementById("teacher4") != null){
		document.getElementById("teacher4").remove();
	}
	if(document.getElementById("teacher7") != null){
		document.getElementById("teacher7").remove();
	}
	if(document.getElementById("teacher8") != null){
		document.getElementById("teacher8").remove();
	}
	if(document.getElementById("teacher5") == null){
		var adoc1 = document.createElement("a");
		adoc1.id="teacher5";
		adoc1.href="#";
		adoc1.setAttribute("onclick","javascript:cxd();");
		adoc1.innerHTML="陈旭东";
		var doc1 = document.createElement("li");
		doc1.appendChild(adoc1);
		document.getElementById("ul5").appendChild(doc1);
	}
	
	if(document.getElementById("teacher6") == null){
		var adoc2 = document.createElement("a");
		adoc2.id="teacher6";
		adoc2.href="#";
		adoc2.setAttribute("onclick","javascript:mdf();");
		adoc2.innerHTML="马迪芳";
		var doc2 = document.createElement("li");
		doc2.appendChild(adoc2);
		document.getElementById("ul5").appendChild(doc2);
	}
	document.getElementById("position").innerHTML="当前位置:软件学院->软件工程->专业必修课->程序设计基础->";
	filepath = "当前位置:软件学院->软件工程->专业必修课->程序设计基础->";
	document.getElementById("name4").innerHTML="程序设计基础";
}

function RJcourse4(){
	path = "/rjxy/rjgc/soa";
	if(document.getElementById("teacher1") != null){
		document.getElementById("teacher1").remove();
	}
	if(document.getElementById("teacher2") != null){
		document.getElementById("teacher2").remove();
	}
	if(document.getElementById("teacher3") != null){
		document.getElementById("teacher3").remove();
	}
	if(document.getElementById("teacher4") != null){
		document.getElementById("teacher4").remove();
	}
	if(document.getElementById("teacher5") != null){
		document.getElementById("teacher5").remove();
	}
	if(document.getElementById("teacher6") != null){
		document.getElementById("teacher6").remove();
	}
	if(document.getElementById("teacher7") == null){
		var adoc1 = document.createElement("a");
		adoc1.id="teacher7";
		adoc1.href="#";
		adoc1.setAttribute("onclick","javascript:zlg();");
		adoc1.innerHTML="曾立刚";
		var doc1 = document.createElement("li");
		doc1.appendChild(adoc1);
		document.getElementById("ul5").appendChild(doc1);
		document.getElementById("position").innerHTML += "SOA->";
	}
	
	if(document.getElementById("teacher8") == null){
		var adoc2 = document.createElement("a");
		adoc2.id="teacher8";
		adoc2.href="#";
		adoc2.setAttribute("onclick","javascript:zhy();");
		adoc2.innerHTML="张红延";
		var doc2 = document.createElement("li");
		doc2.appendChild(adoc2);
		document.getElementById("ul5").appendChild(doc2);
	}
	document.getElementById("position").innerHTML="当前位置:软件学院->软件工程->专业必修课->SOA->";
	filepath = "当前位置:软件学院->软件工程->专业必修课->SOA->";
	document.getElementById("name4").innerHTML="SOA";
}

function zlg(){
	teacher = "曾立刚";
	teacherpath = "/zlg/comments.txt";
	document.getElementById("commentlist").style.visibility="visible";
	document.getElementById("name5").innerHTML="曾立刚";
	document.getElementById("path").value=path+teacherpath;
	document.getElementById("position").innerHTML=filepath+teacher;
}

function zhy(){
	teacher = "张红延";
	teacherpath = "/zhy/comments.txt";
	document.getElementById("position").innerHTML=filepath+teacher;
	document.getElementById("commentlist").style.visibility="visible";
	document.getElementById("name5").innerHTML="张红延";
	document.getElementById("path").value=path+teacherpath;
}

function cxd(){
	teacher = "陈旭东";
	teacherpath = "/cxd/comments.txt";
	document.getElementById("commentlist").style.visibility="visible";
	document.getElementById("name5").innerHTML="陈旭东";
	document.getElementById("path").value=path+teacherpath;
	document.getElementById("position").innerHTML=filepath+teacher;
}

function mdf(){
	teacher = "马迪芳";
	teacherpath = "/mdf/comments.txt";
	document.getElementById("commentlist").style.visibility="visible";
	document.getElementById("name5").innerHTML="马迪芳";
	document.getElementById("path").value=path;
	document.getElementById("position").innerHTML=filepath+teacher;
}
