<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>上传一张图片</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<style>
#pic {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	margin: 20px auto;
	cursor: pointer;
}
</style>
</head>
<body>
	<form action="loadimg" enctype="multipart/form-data" method="post">
		<input type="file" name="file" /> <input type="submit" value="提交" />
	</form>
	<!-- <img alt="img" src="/JavaWeb/upload/joker.jpg"> -->


	<form action="loadimg" enctype="multipart/form-data" method="post">
	<!-- <input type="text" name="con"> -->
		<img id="pic" src="img/bg1.png"> <input id="upload" name="file"
			accept="image/*" type="file" style="display: none" /> <input
			type="submit" value="提交" />
	</form>
	<script>
		$(function() {
			$("#pic").click(function() {
				$("#upload").click(); //隐藏了input:file样式后，点击头像就可以本地上传
				$("#upload").on("change", function() {
					var objUrl = getObjectURL(this.files[0]); //获取图片的路径，该路径不是图片在本地的路径
					alert(objUrl);
					if (objUrl) {
						$("#pic").attr("src", objUrl); //将图片路径存入src中，显示出图片
					}
				});
			});
		});

		//建立一個可存取到該file的url
		function getObjectURL(file) {
			var url = null;
			if (window.createObjectURL != undefined) { // basic
				url = window.createObjectURL(file);
			} else if (window.URL != undefined) { // mozilla(firefox)
				url = window.URL.createObjectURL(file);
			} else if (window.webkitURL != undefined) { // webkit or chrome
				url = window.webkitURL.createObjectURL(file);
			}
			return url;
		}
	</script>
</body>
</html>