<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curve Outside in Active Tab</title>
    
    <script type="text/javascript">
    var duration = 300;
    var $side = $('#sidebar');

    $('#menu-button-line-wrapper').click(function(){
        $('.line').removeClass('init');
        $('#line-top').toggleClass('line-top').toggleClass('top-reverse');
        $('#line-mid').toggleClass('line-mid').toggleClass('mid-reverse');
        $('#line-bot').toggleClass('line-bot').toggleClass('bot-reverse');

            $side.toggleClass('open');

            if($side.hasClass('open')) {
                $side.stop(true).animate({left:'0px'}, duration);
                $('#menu-button').animate({left:'300px'},duration);
            }else{
                $side.stop(true).animate({left:'-300px'}, duration);
                $('#menu-button').animate({left:'0px'},duration);
            };
    });
    </script>
    
    
    <style>
  
    
    
    	#menu-button {
width:50px;
height:50px;
background: black;
position:absolute;
}
#menu-button-line-wrapper {
cursor:pointer;
width:40px;
height:28px;
position:relative;
top:4.5px;
left:4px;
}
.init {
animation:none !important;
}
.line {
background:#ffffff;
margin-top:6px;
margin-bottom:6px;
width:39px;
height:5px; 
border-radius:2px;
box-shadow:0 1px 3px rgba(0,0,0,.5);
position:relative;
}
.line-top {
animation:line-top .5s forwards ease-out,
            line-top-rotate .3s .5s forwards ease-out;
}
.top-reverse {
animation:line-top-rotate-reverse .3s forwards ease-out,
            line-top-reverse .5s .3s forwards ease-out;
}
.line-mid {
animation:line-mid .5s forwards ease-out;
}
.mid-reverse {
animation:line-mid-invisible .3s forwards ease-out, 
            line-mid-reverse .5s .3s forwards ease-out;
}

.line-bot {
animation:line-bot .5s forwards ease-out,
            line-bot-rotate .3s .5s forwards ease-out;
}
.bot-reverse {
animation:line-bot-rotate-reverse .3s forwards ease-out,
            line-bot-reverse .5s .3s forwards ease-out;
}
@keyframes line-top {
0% {transform:translateY(0px)}
100% {transform:translateY(13px)}
}
@keyframes line-top-reverse {
0% {transform:translateY(13px)}
100% {transform:translateY(0px)}
}
@keyframes line-top-rotate {
0% {transform:translateY(13px) rotateZ(0deg)}
100% {transform:translateY(13px) rotateZ(45deg)}
}
@keyframes line-top-rotate-reverse {
0% {transform:translateY(13px) rotateZ(45deg)}
100% {transform:translateY(13px) rotateZ(0deg)}
}
@keyframes line-mid {
0% {transform:scale(1)}
100% {transform:scale(0)}
}
@keyframes line-mid-reverse {
0% {transform:scale(0)}
100% {transform:scale(1)}
}
@keyframes line-mid-invisible {
0% {transform:scale(0)}
100% {transform:scale(0)}
}
@keyframes line-bot {
0% {transform:translateY(0px)}
100% {transform:translateY(-10px)}
}
@keyframes line-bot-reverse {
0% {transform:translateY(-10px)}
100% {transform:translateY(0px)}
}
@keyframes line-bot-rotate {
0% {transform:translateY(-10px) rotateZ(0deg)}
100% {transform:translateY(-10px) rotateZ(135deg)}
}
@keyframes line-bot-rotate-reverse {
0% {transform:translateY(-10px) rotateZ(135deg)}
100% {transform:translateY(-10px) rotateZ(0deg)}
}
    </style>
    
    
</head>
 <aside id="sidebar">
            
        </aside>
        <div id="header">
            <div id="menu-button">
                <div id="menu-button-line-wrapper">
                <div id="line-top" class="line init top-reverse"></div>
                <div id="line-mid" class="line init mid-reverse"></div>
                <div id="line-bot" class="line init bot-reverse"></div>
                </div>
            </div>
        </div>
        <div id="content">
            <div id="board-title">
                전체글 보기
            </div>
            <div id="wrap-inner">
                <div id="inner-left">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>작성자</th>
                            <th>제목</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>3</td>
                            <td>Doe</td>
                            <td>글 보기 영역 샘플 글 1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Moe</td>
                            <td>글 보기 영역 샘플 글 2</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Dooley</td>
                            <td>글 보기 영역 샘플 글 3</td>
                        </tr>
                        </tbody> 
                    </table>
                </div>
                <div id="inner-right">
                    <div id="notice">
                        <span>(공지사항)</span>
                        <table class="table">
                            <tbody>
                            <tr>
                                <td>샘플 공지사항 1</td>
                            </tr>
                            <tr>
                                <td>샘플 공지사항 2</td>
                            </tr>
                            <tr>
                                <td>샘플 공지사항 3</td>
                            </tr>
                            </tbody> 
                        </table>
                    </div>
                    <div id="best-posts">
                        <span>(추천글)</span>
                        <table class="table">
                            <tbody>
                            <tr>
                                <td>샘플 추천글 1</td>
                            </tr>
                            <tr>
                                <td>샘플 추천글 2</td>
                            </tr>
                            <tr>
                                <td>샘플 추천글 3</td>
                            </tr>
                            </tbody> 
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
     <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="javascripts/effect.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="script.js"></script>
</body>
</html>