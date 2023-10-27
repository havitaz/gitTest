<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%-- 
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/sidebar.css">
    <link rel="stylesheet" href="./css/video.css">
--%>
<meta charset="UTF-8">
<title>Insert title here</title>


<%-- 
<style>
/* .video-grid {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
} */

.sidebar{
    position: fixed;
    left: 0;
    top: 0px;
    bottom: 0px;
    background: rgb(205, 165, 130);
    width: 200px;
    z-index: 200;
    /* padding: 0 4px;
    padding-top: 5px; */
    border-right: 1px solid rgb(133, 90, 71);

.top-section{
    height: 175px;
    display: flex;
    justify-content: center; /*정렬*/
    align-items: center;
    flex-direction: column; /*글자 아래로 정렬*/
    border-bottom: 1px solid rgb(133, 90, 71);
}

.Member-profile{
    background: rgb(133, 90, 71);
    border-radius: 15px;
    width: 180px;
    height: 115px;
    /* margin-top: 55px; */
    margin-bottom: 15px;
    list-style-type: none;
}


.sidebar-link:hover{ /*마우스오버시 색변환*/
    background-color: #4d4d4d;
}

.sidebar-link img{
    height: 24px;
    margin-bottom: 4px;

}

.sidebar-link div{
    font-size: 10px;
}

.logo{
    height: 50px;
}

.detail-profile{
    list-style: none;
}

.playlist{
    list-style: none;
}


.header{
    height: 55px;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
 
    position: fixed;
    top: 0;
    left: 200px;
    right: 0;
    z-index: 199;

    background-color: rgb(205, 165, 130);
    border-bottom: 1px solid rgb(133, 90, 71);

}

.left-section{
    display: flex;
    align-items: center;
    z-index: 300;
    height: 55px;

}

.hamburger-menu{
    height: 24px;
    margin: 0px 24px;
}


.middle-section{
    display: flex;
    align-items: center;
    max-width: 500px;
    margin-left: 70px;
    margin-right: 35px;
    flex: 1;
}

.search-button{
    height: 44px;
    width: 44px;
    background: #323232;
    margin-left: 10px;
    border-radius: 5px 5px 5px 5px;

}

.search-bar{
    height: 40px;
    /* padding-left: 10px; */
    /* font-size: 16px; */
    border: 1px solid #4d4d4d; 
    background: rgba(63, 47, 34, 0.9);
    border-radius: 12px 12px 12px 12px;   
    /* margin-right: 10px; */
    /* left: 0; */
    flex: 1px;
}

.search-icon{
    border-radius: 12px 12px 12px 12px;
    height: 42px;
    width: 42px;
    right: 12px;
    bottom: 1px;
}

.voice-search-button{
    height: 40px;
    width: 40px;
    border-radius: 20px;
    border: none;
    background: #121212;
}

.search-button,
.voice-search-button,
.search-icon,
.upload-icon-container{
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    cursor: pointer;
}

.tooltip{
    position: absolute;
    background: grey;
    color:white;
    padding: 4px 8px;
    bottom: -30px;
    border-radius: 2px;
    font-size: 12px;
    opacity: 0;
    transition: opacity 0.2s;
    white-space: nowrap;
    pointer-events: none;
}

.search-button:hover .tooltip,
.voice-search-button:hover .tooltip,
.upload-icon-container:hover .tooltip{
    opacity: 1;
}

.right-section{
    width: 150px;
    margin-right: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.current-user-picture{
    height: 32px;
    border-radius: 16px;
}

.notifications-icon,
.upload-icon{
    height: 24px;
}
.notifications-icon-container{
    position: relative;
}

.notifications-count{
    position: absolute;
    top: -6px;
    right: -6px;
    background-color: crimson;
    color: white;
    font-size: 11px;
    padding: 1px 5px;
    border-radius: 10px;
}

.btn-login{
    background-color: rgb(133, 90, 71);
    border: none;
    border-radius: 5px;
    width: 60px;
    height: 25px;
    color: #FFFFFF;
}

.playlist{
    color: rgba(63, 47, 34, 0.9);
}




body{
    margin: 0;
    color: white;
    padding-top: 80px;
    padding-left: 250px;
    padding-right: 20px;
    font-family: 'Noto Sans KR', sans-serif;
    background-image: url("./resources/images/XXXX.png");
    background-size: cover;
    background-repeat: no-repeat;
}

P{
    margin: 0;
}

.main-title{
    color: rgb(51, 51, 51);
    border-bottom: 1px solid rgb(51, 51, 51);
    font-weight: 900;
}


.video-grid{
    display: grid;
    column-gap: 16px;
    row-gap: 40px;
}

@media (max-width: 749px){
    .video-grid{
        grid-template-columns: 1fr 1fr;
    }
}

@media (min-width: 750px) and (max-width: 999px){
    .video-grid{
        grid-template-columns: 1fr 1fr 1fr;
    }
}

@media (min-width: 1000px){
    .video-grid{
        grid-template-columns: 1fr 1fr 1fr 1fr;
    }
}

.thumbnail-row{
    margin-bottom: 8px;
    position: relative;
}

.thumbnail{
    width: 100%;
    border-radius: 15px;
    cursor: pointer;
}

.thumbnail:hover{
    opacity: 0.9; 
    /* opacity대신에 어두워지게끔
    */
}


.video-time{
    position: absolute;
    bottom: 8px;
    right: 5px;
    font-size: 12px;
    font-weight: 900;
    border-radius: 2px;
    padding: 1px 4px;
    color: black;
}

.video-info-grid{
    display: grid;
    grid-template-columns: 50px 1fr;
}

.channel-picture > img{
    width: 36px;
    border-radius: 50px;
}

.video-title{
    font-size: 14px;
    font-weight: 500;
    line-height: 20px;
    margin-bottom: 10px;
}



.video-author,
.video-stats{
    font-size: 12px;
    color: #aaaaaa;
}




.music-grid{
    background: rgba(204, 91, 35, 0.9);
    height: 475px;
    width: 100%;
    border-radius: 15px;
    margin-top: 40px;
}

.top100grid{
    display: grid;
    column-gap: 16px;
    row-gap: 40px;
}

@media (min-width: 1000px) {
    .top100grid-grid {
        grid-template-columns: 1fr 1fr 1fr 1fr;
    }
}

.music-detail{
    position: absolute;
    left: 5px;
    right: 5px;
    font-size: 12px;
    font-weight: 900;
    border-radius: 2px;
    padding: 1px 4px;
    background: rgba(65, 64, 64, 0.668);
    color: rgb(255, 255, 255);
}
</style>
</head>

--%>

<body>
	
	 <header class="header">




        <div class="left-section">
                <img class= "hamburger-menu" src="assets/icons/hamburger-menu.svg" alt="메뉴"/>
        </div>




        <div class="middle-section">
            <!-- <div class="search-button">
                <img class="search-icon" src="assets/images/thumbnails/temp.jpg">
                <div class="tooltip">검색</div>
            </div> -->

            <div class="search-bar">
                <img class="search-icon" src="../resources/images/temp.jpg">
                                
                
                <div class="video-time">
                    14:48
                </div>6
            </div>

  
            <button class="voice-search-button">
                <img class="voice-search-icon" src="assets/images/thumbnails/">
                <div class="tooltip">음성으로 검색</div>
            </button>
        </div>


        <div class="right-section">
            <div class="notifications-icon-container">
             
            </div>
            <!-- <img class="current-user-picture" src="assets/images/avatars/avatar-1.png"> -->
            <button class="btn-login">로그인</button>
        </div>





    </header>



    <nav class="sidebar">


        
        <div class="top-section">
                <img class= "logo" src="./resources/images/logo.png" alt="로고"/> 
                
                
                <div class="Member-profile">
                    <ul class="detail-profile">
                        <li>ooo님</li>
                        <li><a href="">마이페이지</a></li>
                        <li>aaa@naver.com</li>
                        <li>010-xxxx-xxxx</li>
                    </ul>
                </div>
        </div>



        <div>
            <ul class="playlist">
                <h3>재생목록</h3> <button type="menu">></button>
                <li></li>
            </ul>
        </div>



    </nav>
</body>
</html>