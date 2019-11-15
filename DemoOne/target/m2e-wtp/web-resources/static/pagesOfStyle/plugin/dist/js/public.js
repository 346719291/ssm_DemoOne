// JavaScript Document
$(function(){
   $(".cztd").hide();
	//显示链接提示
	$(".cz").hover(function(){
		 var _this=$(this);
		_this.find(".cz_label").show();
		_this.siblings().find(".cz_label").hide();	
		});
	//隐藏链接提示
	$(".cz").mouseout(function(){
		var _this=$(this);
		_this.find(".cz_label").hide();
		});
	$(".info_tr").hover(function(){
		var _this=$(this);
		_this.find("td").find(".cztd").show();
		_this.siblings().find(".cztd").hide();	
		})
    $(".info_tr").mouseleave(function(){
		var _this=$(this);
		_this.find(".cztd").hide();
		});
	})