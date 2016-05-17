$(document).ready(
			function() {
				var nowimg = 0;
				$(".maonimen p").each(
					function(){
						var a = $(this).index() % 4 * 140;
						var b = parseInt($(this).index() / 4) * 100;
						$(this).css(
							{
								"left":a,
								"top": b,
								"background-position":(-a) + "px " + (-b) + "px"
							}
						);
					}
				);

				$(".rightbut").click(
					function(){
						if(nowimg < 4){
							nowimg ++;
						}else{
							nowimg = 0;
						}
						dong();
					}
				);
				$(".leftbut").click(
					function(){
						if(nowimg > 0 ){
							nowimg --;
						}else{
							nowimg = 4;
						}
						dong();
					}
				);
				function dong(){
						//加过渡：
						$(".maonimen p").css("transition","all 1s ease 0s");
						$(".maonimen").addClass("fei");
						
						$(".zhentu img").attr("src","images/" + nowimg + ".jpg");

						setTimeout(function(){
							//去掉过渡
							$(".maonimen p").css("transition","none");
							$(".maonimen p").css("background-image","url(images/" + nowimg + ".jpg)");
							//我们准备下一张图
							$(".maonimen").removeClass("fei");
						},1000);
				}
			}
		);