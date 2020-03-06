<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>
.slider {
	height: 150px;
	width: 828px;
	margin: 0px;
	position: relative;
}

.slider li {
	list-style-type: none;
	position: absolute;
	display: none;
}

.slider li:first-child {
	display: block;
}

.arrow {
	display: none;
}

.slider:hover .arrow {
	display: block;
}

.arrow-left, .arrow-right {
	font-family: "SimSun", "宋体";
	width: 30px;
	height: 60px;
	background-color: rgba(0, 0, 0, 0.1);
	position: absolute;
	top: 50%;
	margin-top: -30px;
	cursor: pointer;
	text-align: center;
	line-height: 60px;
	color: #fff;
	font-weight: 700;
	font-size: 30px;
}

.arrow-left:hover, .arrow-right:hover {
	background-color: rgba(0, 0, 0, .5);
}

.arrow-left {
	left: 0;
}

.arrow-right {
	right: 0;
}
</style>
<script src="JQ/jquery-1.12.4.js"></script>
<script>
	$(function() {
		var count = 0;
		var lenght = $(".slider li").length;
		$(".arrow-right").click(function() {
			count++;

			if (count == lenght) {
				count = 0;
			}
			$(".slider li").eq(count).fadeIn().siblings().fadeOut();
		});
		$(".arrow-left").click(function() {
			count--;
			if (count == -1) {
				count = lenght - 1;
			}
			$(".slider li").eq(count).fadeIn().siblings().fadeOut();
		});
	});
</script>

</head>

<body>
	<table width="1347" border="0">
		<tr>
			<td width="10">&nbsp;</td>
			<td width="165"><form id="form1" name="form1" method="post"
					action="">
					<input type="image" name="imageField" id="imageField"
						src="page3/logo.png" />
				</form></td>
			<td width="28">&nbsp;</td>
			<td width="22">&nbsp;</td>
			<td width="92">我的亚马逊</td>
			<td width="55">Z秒杀</td>
			<td width="59">礼品卡</td>
			<td width="76">我要开店</td>
			<td width="61">海外购</td>
			<td width="46">帮助</td>
			<td width="74">In English</td>
			<td width="143">&nbsp;</td>
			<td width="462"><form id="form2" name="form2" method="post"
					action="">
					<input type="image" name="imageField2" id="imageField2"
						src="page3/logo1.png" />
				</form></td>
		</tr>
	</table>
	<div>
		<table width="1347" border="0">
			<tr>
				<td width="10" height="59"><p>&nbsp;</p>
					<p>&nbsp;</p></td>
				<td width="32">浏览</td>
				<td width="129"><select name="select" id="select">
						<option>全部分类列表</option>
				</select></td>
				<td width="51">&nbsp;</td>
				<td width="84"><form id="form7" name="form7" method="post"
						action="">
						<select name="select5" id="select5">
							<option>全部分类</option>
						</select> <label for="select5"></label>
					</form></td>
				<td width="571"><form method="post" action="myServlet">
						<label></label> <label></label> <input name="context" type="text"
							size="60" /> <input type="submit" name="button" value="搜索" />
					</form></td>
				<td width="44">&nbsp;</td>
				<td width="33">你好</td>
				<td width="94"><form id="form6" name="form6">
						<select name="select4" id="select4">
							<option>我的账户</option>
						</select> <label for="select4"></label>
					</form></td>
				<td width="60"><form id="form5" name="form5">
						<label for="select3"></label> <input type="image"
							name="imageField3" id="imageField3" src="page3/logo2.png" /><br><br><br>
					</form><br></td>
				<td width="87"><select name="select3" id="select3">
						<option>购物车</option>
				</select><br><form action="test/Cart" method="get">id<input name="id"/>name<input name="name"/><input type="submit" value="提交"/><br><br><br></form></td>
				<td width="102"><form id="form4" name="form4" method="post"
						action="">
						<p>
							<select name="select2" id="select2">
								<option>心愿单</option>
							</select> <label for="select2"></label>
						</p>
					</form><br></td>
			</tr>
		</table>
	</div>
	<table width="1347" border="0">
		<tr>
			<td colspan="9">&nbsp;</td>
			<td width="53" rowspan="2">&nbsp;</td>
			<td width="388" rowspan="3"><form id="form3" name="form3"
					method="post" action="">
					<input type="image" name="imageField14" id="imageField14"
						src="page3/logo4.png" />
				</form></td>
		</tr>
		<tr>
			<td width="85">&nbsp;</td>
			<td width="83">&nbsp;</td>
			<td width="93">进口直采</td>
			<td width="90">电子书</td>
			<td width="80">kindle</td>
			<td>阅读软件</td>
			<td>移动客户端</td>
			<td>礼品卡</td>
			<td width="101">&nbsp;</td>
		</tr>
		<tr>
			<td rowspan="2">&nbsp;</td>
			<td colspan="8" rowspan="2"><input type="image"
				name="imageField4" id="imageField4" src="page3/logo3.png" /></td>
			<td rowspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td rowspan="3"><form id="form9" name="form9" method="post"
					action="">
					<input type="image" name="imageField6" id="imageField6"
						src="page3/logo5.png" />
				</form></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td colspan="3">&nbsp;</td>
			<td width="115">&nbsp;</td>
			<td width="147">&nbsp;</td>
			<td width="66">&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td rowspan="3">&nbsp;</td>
			<td height="134" colspan="8">
			  <form id="form10" name="form10"
					method="post" action="">
					<div class="slider">
						<ul>
							<li style="padding-left:0px;left:0px"><a href="#"><img
									src="page3/good.png" alt=""></a></li>
							<li style="padding-left:0px;left:0px"><a href="#"><img
									src="page3/2.jpg" alt=""></a></li>
							<li style="padding-left:0px;left:0px"><a href="#"><img
									src="page3/3.jpg" alt=""></a></li>
							<li style="padding-left:0px;left:0px"><a href="#"><img
									src="page3/4.jpg" alt=""></a></li>
							<li style="padding-left:0px;left:0px"><a href="#"><img 
							        src="page3/1.jpg" alt=""/>
							        </a></li>
						</ul>
						<!--箭头-->
						<div class="arrow">
							<span class="arrow-left">&lt;</span> <span class="arrow-right">&gt;</span>
						</div>
				</div>
		  </form></td>
			<td rowspan="3">&nbsp;</td>
		</tr>
		<!--<tr>
			<td height="29" colspan="8">&nbsp;</td>
			<td rowspan="2"><input type="image" name="imageField9"
				id="imageField9" src="page3/logo7.png" /></td>
		</tr>
		<tr>
			<td height="122" colspan="8"><form id="form16" name="form16"
					method="post" action="">
					<input type="image" name="imageField8" id="imageField8"
						src="page3/good.png" />
				</form></td>
		</tr>-->
	</table>
	<table width="1347" border="0">
		<tr>
			<td>&nbsp;</td>
			<td colspan="4">&nbsp;</td>
			<td width="43" rowspan="2">&nbsp;</td>
			<td width="388" rowspan="3"><form id="form11" name="form11"
					method="post" action=""></form></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td colspan="4">为你推荐</td>
		</tr>
		<tr>
			<td width="66" rowspan="2">&nbsp;</td>
			<td width="205" rowspan="2"><form id="form12" name="form12"
					method="post" action="">
					<input type="image" name="imageField10" id="imageField10"
						src="page3/good1.png" />
				</form></td>
			<td width="208" rowspan="2"><form id="form13" name="form13"
					method="post" action="">
					<input type="image" name="imageField11" id="imageField11"
						src="page3/good2.png" />
				</form></td>
			<td width="207" rowspan="2"><input type="image"
				name="imageField12" id="imageField12" src="page3/good3.png" /></td>
			<td width="200" rowspan="2"><form id="form15" name="form15"
					method="post" action="">
					<input type="image" name="imageField13" id="imageField13"
						src="page3/good4.png" />
				</form></td>
			<td rowspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td><input type="image" name="imageField5" id="imageField5"
				src="page3/logo8.png" /></td>
		</tr>
	</table>
	<form id="form14" name="form14" method="post" action="">
	<%-- <%Product outdata=(Product)request.getSession().getAttribute("outdata"); %>
	<%outdata.getName(); %>
	<%outdata.getId(); %> --%>
	</form>
	<p>&nbsp;</p>
</body>
</html>
