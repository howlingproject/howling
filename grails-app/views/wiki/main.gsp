
<!-- contents -->
<!--  메뉴  -->
<div class="container qna-top-search">
    <div class="navbar-form navbar-left" role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
        <a class="form-control btn btn-primary" data-toggle="modal" href="/howling/wiki/write" data-target="#writeModal">
            위키생성
        </a>
    </div>
    <div class="btn-group pull-right">
        <a href="#" class="btn btn-primary">총 질문(200)</a>
        <a href="#" class="btn btn-primary">총 답변(3000)</a>
        <a href="#" class="btn btn-primary">총 키워드(11200)</a>
        <a href="#" class="btn btn-primary">답변을 기다리는 Q & A(3000)</a>
    </div>
</div>


<div class="container contents-container top-buffer wiki-main">

<!-- 상단 컨텐츠 -->
<div class="col-md-12 col-lg-12">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">베스트 위키</h3>
        </div>
        <!-- BEST 위키 컨텐츠 -->
        <div class="panel-body" id="bestWikiList">
        </div>
        <!-- BEST 위키 컨텐츠 -->
    </div>
</div>

<!-- 상단 컨텐츠 -->
<!-- 하단 컨텐츠 -->
<div class="col-md-12 col-lg-12">
<!-- 전체 키워드 선택 -->
<div class="col-md-2" style="padding-left: 0px;">
    <div class="well">전체 키워드 선택</div>
    <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">Java(120/789)</a></li>
        <li><a href="#">Spring(120/539)</a></li>
        <li><a href="#">Groovy(100/299)</a></li>
        <li><a href="#">Grails(3/300)</a></li>
        <li><a href="#">Gradle(282/402)</a></li>
        <li><a href="#">Tomcat(282/402)</a></li>
        <li><a href="#">Apache(282/402)</a></li>
        <li><a href="#">Javascript(282/402)</a></li>
        <li><a href="#">NodeJS(282/402)</a></li>
        <li><a href="#">MySQL(282/402)</a></li>
        <li><a href="#">MariaDB(282/402)</a></li>
    </ul>
</div>
<!--// 전체 키워드 선택 -->

<div class="col-md-7">

    <!-- 전체 위키 -->
    <div id="allWikiList">
    </div>
    <!--// 위키 -->

</div>

<div class="col-md-3" style="padding-right: 0px;">
    <!-- 최근 활동 -->
    <div class="nav-tabs-header">최근 활동</div>
    <div id="recentWikiList">
    </div>
    <!--// 최근 활동 -->
</div>
</div>

<!-- 하단 컨텐츠 -->
<div class="modal fade" id="writeModal" role="dialog" aria-hidden="true" data-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        </div>
    </div>
</div>

</div>

<script type="text/javascript">
    $(document).ready(function() {
        Wiki.renderList();
    });
    var Wiki = {
        save:function(){
            var data = $("#wikiForm").serialize()
            data = data.replace("we_wiki_text","contentsMarkup");
            data += "&contents="+encodeURIComponent($("#wikimaincol").html());
            jQuery.ajax({
                type:'POST',
                data:data,
                url:'/howling/wiki/save',
                success:function(data,textStatus){
                    Wiki.saveComplete(data);
                },
                error:function(XMLHttpRequest,textStatus,errorThrown){}});
            return false;
        },

        saveComplete: function () {
            $('#writeModal').modal('hide');
            alert("저장을 완료했습니다.");
        },

        renderList: function() {
            $.ajax({
                url: '/howling/wiki/bestList',
                failure: function(){ },
                success: function(response) {
                    $('#bestWikiList').html(response);
                }
            });
            $.ajax({
                url: '/howling/wiki/allList',
                failure: function(){ },
                success: function(response) {
                    $('#allWikiList').html(response);
                }
            });
            $.ajax({
                url: '/howling/wiki/recentList',
                failure: function(){ },
                success: function(response) {
                    $('#recentWikiList').html(response);
                }
            });
        }
    }

</script>
