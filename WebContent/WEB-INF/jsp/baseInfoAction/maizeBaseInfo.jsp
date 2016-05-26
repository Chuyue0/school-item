<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>玉米基本信息简介</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
    <style type="text/css">
    	body{ padding:20px; font-size:16px; }
    	.fl{float:left;}
    	.tac{ text-align:center; }
    	.clear{clear:both;}
    	.yumititle{ font-size:22px;color:#333; line-height:30px;}
    	p{  width: 900px;line-height: 24px;}
    	p span{ color:#136ec2;}
    	.pic{ margin-left:50px; border:1px solid #ddd; box-shadow:1px 1px 1px #ccc;}
    	.pic span{ line-height:30px; }
    	.introduce .infor {width: 500px;}
    	.introduce .infor p{ border-bottom:1px dash #eee;}
    	.introduce .infor p span{ color:#666;}
    	.special{margin-top:20px;}
    </style>
</head>
<body>
	<div class="yumititle tac">玉米农作物基本信息介绍</div>
	<p>[yù mǐ]</p> 
	<div class="fl"> 
	<p ><span>玉米</span>（拉丁学名：Zea mays L.）是禾本科玉米属一年生<span>草本植物</span>。别名：玉蜀黍、<span>棒子</span>、<span>包谷</span>、包米、包粟、<span>玉茭</span>、<span>苞米</span>、<span>珍珠米</span>、苞芦、大芦粟，潮州话称薏米仁，粤语称为<span>粟米</span>，闽南语称作番麦。</p> 
	<p >秆直立，通常不分枝，基部各节具气生支柱根。<span>叶鞘</span>具横脉；<span>叶舌</span>膜质，叶片扁平宽大，线状披针形，基部圆形呈耳状，无毛或具疵柔毛，中脉粗壮。<span>颖果</span>球形或扁球形，成熟后露出颖片和稃片之外，其大小随生长条件不同产生差异。雌雄同株异花，花果期秋季。</p>
	<p >我国玉米的栽培历史大约有470多年。目前我国播种面积在3亿亩左右，仅次于稻、麦，在粮食作物中居第三位，在世界上仅次于<span>美国</span>。全世界热带和温带地区广泛种植，为一重要谷物。</p>
	<p >玉米味道香甜，可做各式<span>菜肴</span>，如<span>玉米烙</span>、<span>玉米汁</span>等，它也是工业酒精和烧酒的主要原料。</p>
	</div>
	<div class="fl pic tac">
		<img src="${pageContext.request.contextPath}/images/yumi.jpg" width="268" height="214" /><br>
		<span class="">玉米图片</span>
	</div>
	<div class="clear"></div>
	<div class="introduce">
		<div class="fl infor">
			<p>	<span>中文学名</span>&nbsp;&nbsp;&nbsp;玉米</p>
			<p>	<span>拉丁学名</span>&nbsp;&nbsp;&nbsp;Zea mays L.</p>
			<p>	<span>别&nbsp;&nbsp;称</span>&nbsp;&nbsp;&nbsp;包谷、包芦、玉茭、苞米、棒子、粟米</p>
			<p>	<span>界&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;植物界</p>
			<p>	<span>门&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;被子植物门</p>
			<p>	<span>亚&nbsp;&nbsp;门</span>&nbsp;&nbsp;&nbsp;被子植物亚门</p>
			<p>	<span>纲&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;单子叶植物纲</p>
			<p>	<span>目&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;禾本目</p>
		</div>
		<div class="fl infor">
			<p>	<span>科&nbsp;&nbsp;</span>	&nbsp;&nbsp;&nbsp;&nbsp;禾本科 Gramineae</p>
			<p>	<span>亚&nbsp;&nbsp;科</span>&nbsp;&nbsp;&nbsp;黍亚科 Panicoideae</p>
			<p>	<span>族&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;玉蜀黍族 Trib. Maydeae</p>
			<p>	<span>属&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;玉蜀黍属 Zea</p>
			<p>	<span>种&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;玉米</p>
			<p>	<span>分布区域</span>&nbsp;&nbsp;&nbsp;中国黄河以北地区居多</p>
			<p>	<span>英文名&nbsp;</span>&nbsp;&nbsp;&nbsp;corn</p>
			<p>	<span>特 &nbsp;&nbsp;点</span>&nbsp;&nbsp;&nbsp;雌雄同株异花</p>
		</div>
		<div class="clear"></div>
	</div>
	<div class="special fl">
		<h3>形态特征</h3>
		<p>茎秆</p>
		<p>&nbsp;&nbsp;玉米的秆直立，通常不分枝，高1~2.5米，基部各节具气生竿竿支柱根。须根系，除胚根外，还从茎节上长出节根：从地下节根长出的称为地下节根，一般4～7层；从地上茎节长出的节根又称支持根、气生根，一般2～3层。主要分布在0—30cm土层中，最深可达150—200cm，近地面茎节上轮生几层气生根，有支持茎秆不致倒伏和吸收养分的功能。茎，直径2—4cm，高0.5—4cm，茎有节和节间，茎内充满髓，地上有8一2O节，地下有3—7节，节间侧沟下方的节上着生腋芽，基部节间的顺芽可长成分枝。</p>
	</div>
	<div class="fl pic tac">
		<img src="${pageContext.request.contextPath}/images/yumigan.jpg" width="165" height="220" /><br>
		<span class="">玉米秆</span>
	</div>
	<div class="clear"></div>
</body>
</html>
	