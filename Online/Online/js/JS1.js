var SysSecond;
var InterValObj;
  
$(document).ready(function() {
  SysSecond = parseInt($("#remainSeconds").html()); 
  InterValObj = window.setInterval(SetRemainTime, 1000); 
});
function SetRemainTime() {
  if (SysSecond > 0) {
   SysSecond = SysSecond - 1;
   var second = Math.floor(SysSecond % 60);            // 计算秒     
   var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
   var hour = Math.floor((SysSecond / 3600) % 24);      //计算小时
   var day = Math.floor((SysSecond / 3600) / 24);       //计算天 
 
   var hourDiv = "<span id='hourSpan'>"+ hour + "小时"+"</span>";
   var dayDiv = "<span id='daySpan'>"+ day + "天"+"</span>";
 
    $("#remainTime").html(dayDiv + hourDiv + minite + "分" + second + "秒");
 
    if(hour === 0) {//当不足1小时时隐藏小时
        $('#hourSpan').css('display','none');
    }
	if(day === 0) {//当不足1天时隐藏天
        $('#daySpan').css('display','none');
    }
 
  } else {
      window.clearInterval(InterValObj);
      alert("时间到，请点击确定交卷！");
      window.location.replace("http://localhost:1936/Student/StuJump");
  }
}