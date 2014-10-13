
<div class="container">
<div class="col-md" >
<div style="padding-bottom: 45px;">
    <div class="btn-group" data-toggle="buttons" style="float: left">
        <a href="#" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <a href="#" class="btn btn-primary"><i class="fa fa-minus"></i></a>
        <a href="#" class="btn btn-primary"><i class="fa fa-laptop"></i></a>
        <a href="#" class="btn btn-primary"><i class="fa fa-star-o"></i></a>
    </div>
    <div class="btn-group" data-toggle="buttons" style="float: right">
        <a href="#" class="btn btn-primary">히스토리</a>
        <a href="#" class="btn btn-primary">편집</a>
        <a href="#" class="btn btn-primary">삭제</a>
        <a href="#" class="btn btn-primary">잠금</a>
        <a href="#" class="btn btn-primary">자식위키생성</a>
        <a href="#" class="btn btn-primary">공간메인</a>
    </div>
</div>

<div class="row">
<div class="col-md-9" role="main" style="padding-bottom: 20px;">


<div class="bs-docs-section">
<h1 id="type" class="page-header">Typography</h1>

<!-- 스타일 -->
<h2 id="type-style">스타일</h2>
<p></p>
<div class="bs-example bs-example-type">
    <table class="table">
        <tbody>
        <tr>
            <td>돋움</td>
        </tr>
        <tr>
            <td>바탕</td>
        </tr>
        <tr>
            <td>굴림</td>
        </tr>
        <tr>
            <td>궁서</td>
        </tr>
        </tbody>
    </table>
</div>
<div class="highlight">
    <pre><code class="html">
        [font|돋움] 돋움폰트 [font]
        [font|바탕] 바탕폰트 [font]
        [font|굴림] 굴림폰트 [font]
        [font|궁서] 궁서폰트 [font]
    </code></pre>
</div>

<!-- 제목 -->
<h2 id="type-headings">제목</h2>
<p></p>
<div class="bs-example bs-example-type">
    <table class="table">
        <tbody>
        <tr>
            <td><h1>h1. 큰 제목 </h1></td>
        </tr>
        <tr>
            <td><h2>h2. 즁간 제목 </h3></td>
        </tr>
        <tr>
            <td><h3>h3. 작은 제목 </h3></td>
        </tr>
        </tbody>
    </table>
</div>
<div class="highlight">
    <pre><code class="html">
        # 큰제목
        ## 중간제목
        ### 작은제목
    </code></pre>
</div>


<!-- Inline text elements -->
<h2 id="type-lnline">Inline text elements</h2>

<h3>Bold</h3>
<div id="type-lnline-bold" class="bs-example">
    <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>
</div>
<div class="highlight">
    <pre><code class="html">
        The following snippet of text is **rendered as bold text**.
        The following snippet of text is *rendered as bold text*.
    </code></pre>
</div>

<h3>Italics</h3>
<div id="type-lnline-italics" class="bs-example">
    <p>The following snippet of text is <em>rendered as italicized text</em>.</p>
</div>
<div class="highlight">
    <pre><code class="html">
        The following snippet of text is _rendered as italicized text_
        The following snippet of text is __rendered as italicized text_
    </code></pre>
</div>

<h3>Deleted text</h3>
<div id="type-lnline-deleted" class="bs-example">
    <p><del>This line of text is meant to be treated as deleted text.</del></p>
</div>
<div class="highlight">
    <pre><code class="html">
        [d]This line of text is meant to be treated as deleted text.[d]
    </code></pre>
</div>

<h3>Underlined text</h3>
<div id="type-lnline-underlined" class="bs-example">
    <p><ins>This line of text will render as underlined</ins></p>
</div>
<div class="highlight">
    <pre><code class="html">
        //This line of text will render as underlined//
    </code></pre>
</div>

<h2 id="type-alignment">Alignment classes</h2>
<div class="bs-example">
    <p class="text-left">Left aligned text.</p>
    <p class="text-center">Center aligned text.</p>
    <p class="text-right">Right aligned text.</p>
</div>
<div class="highlight">
    <pre><code class="html">
        [align:left]Left aligned text.[align]
        [align:center]Center aligned text.[align]
        [align:right]Right aligned text.[align]
    </code></pre>
</div>

<h2 id="type-script">subscript, supscript</h2>
<div class="bs-example">
    <sub>subscript</sub>
    <sup>supscript</sup>
</div>
<div class="highlight">
    <pre><code class="html">
        [sb]subscript[sb]
        [sp]supscript[sp]
    </code></pre>
</div>

<h2 id="type-division">Division line</h2>
<div class="bs-example">
    <span class="nt">&lt;hr&gt;</span>
</div>
<div class="highlight">
    <pre><code class="html">
        ***
    </code></pre>
</div>

<!-- Blockquotes -->
<h3 id="type-division-blockquote">Blockquote</h3>
<div class="bs-example">
    <blockquote>
        <span class="nt">&lt;p&gt;</span> HTML CODE <span class="nt">&lt;p&gt;</span>
    </blockquote>
</div>
<div class="highlight">
    <pre><code class="html">
        [code]html code[code]
    </code></pre>
</div>

<!-- Lists -->
<h2 id="type-lists">Lists</h2>

<h3 id="type-lists-unordered">Unordered</h3>
<p>A list of items in which the order does <em>not</em> explicitly matter.</p>
<div class="zero-clipboard"><span class="btn-clipboard with-example">Copy</span></div><div class="bs-example">
    <ul>
        <li>Lorem ipsum dolor sit amet</li>
        <li>Consectetur adipiscing elit</li>
        <li>Integer molestie lorem at massa</li>
        <li>Facilisis in pretium nisl aliquet</li>
        <li>Nulla volutpat aliquam velit
            <ul>
                <li>Phasellus iaculis neque</li>
                <li>Purus sodales ultricies</li>
                <li>Vestibulum laoreet porttitor sem</li>
                <li>Ac tristique libero volutpat at</li>
            </ul>
        </li>
        <li>Faucibus porta lacus fringilla vel</li>
        <li>Aenean sit amet erat nunc</li>
        <li>Eget porttitor lorem</li>
    </ul>
</div>
<div class="highlight">
    <pre><code class="html">
        * number1
        * number2
        * number3
        * number3-1
        * number3-2
        * number4
    </code></pre>
</div>

<h3 id="type-lists-ordered">Ordered</h3>
<p>A list of items in which the order <em>does</em> explicitly matter.</p>
<div class="zero-clipboard"><span class="btn-clipboard with-example">Copy</span></div><div class="bs-example">
    <ol>
        <li>Lorem ipsum dolor sit amet</li>
        <li>Consectetur adipiscing elit</li>
        <li>Integer molestie lorem at massa</li>
        <li>Facilisis in pretium nisl aliquet</li>
        <li>Nulla volutpat aliquam velit</li>
        <li>Faucibus porta lacus fringilla vel</li>
        <li>Aenean sit amet erat nunc</li>
        <li>Eget porttitor lorem</li>
    </ol>
</div>
<div class="highlight">
    <pre><code class="html">
        1. number1
        1. number2
        1. number3
        1. number3-1
        1. number3-2
        1. number4
    </code></pre>
</div>

<h2 id="type-talbe">table</h2>
<div class="bs-example">
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
        </tr>
        </tbody>
    </table>
</div>
<div class="highlight">
    <pre><code class="html">
        ||셀제목1||셀제목2||셀제목3||셀제목4||
        |컬럼1|컬럼2|컬럼1|컬럼2|
        |컬럼3|컬럼4|컬럼3|컬럼4|
    </code></pre>
</div>

<h2 id="type-link">Link Url</h2>
<div class="bs-example">
    <span class="nt">&lt;a href="#"&gt;</span>a link<span class="nt">&lt;/ a&gt;</span>
    <span class="nt">&lt;img src="#"&gt;</span>
</div>
<div class="highlight">
    <pre><code class="html">
        [http url](http text)
        ![img text](img url)
    </code></pre>
</div>

<h2 id="type-field-panels">Field panels</h2>
<div class="bs-example">
    필드셋
</div>
<div class="highlight">
    <pre><code class="html">
        [field|필드셋 타이틀]필드셋 내용란[field]
    </code></pre>
</div>

<h2 id="type-alert-panels">Alert panels</h2>
<div class="bs-example">
    알림
</div>
<div class="highlight">
    <pre><code class="html">
        [alert]경고 알람[alert]
    </code></pre>
</div>

<h2 id="type-info-panels">Information panels</h2>
<div class="bs-example">
    정보
</div>
<div class="highlight">
    <pre><code class="html">
        [info]안내[info]
    </code></pre>
</div>



</div>

</div>

<div class="col-md-3">
    <div class="bs-docs-sidebar hidden-print hidden-xs hidden-sm" role="complementary">
        <ul class="nav bs-docs-sidenav">
            <li class="active">
                <a href="#type">Typography</a>
                <ul class="nav">
                    <li class=""><a href="#type-style">스타일</a></li>
                    <li class=""><a href="#type-headings">제목</a></li>
                    <li class="">
                        <a href="#type-lnline">Inline text elements</a>
                        <ul class="nav">
                            <li class=""><a href="#type-lnline-bold">Bold</a></li>
                            <li class=""><a href="#type-lnline-italics">Italics</a></li>
                            <li class=""><a href="#type-lnline-deleted">Deleted text</a></li>
                            <li class=""><a href="#type-lnline-underlined">Underlined text</a></li>
                        </ul>
                    </li>
                    <li class=""><a href="#type-alignment">Alignment classes</a></li>
                    <li class=""><a href="#type-script">subscript, supscript</a></li>
                    <li class="">
                        <a href="#type-division">Division line</a>
                        <ul class="nav">
                            <li class=""><a href="#type-division-blockquote">Blockquote</a></li>
                        </ul>
                    </li>
                    <li class="">
                        <a href="#type-lists">Lists</a>
                        <ul class="nav">
                            <li class=""><a href="#type-lists-unordered">Unordered</a></li>
                            <li class=""><a href="#type-lists-ordered">Ordered</a></li>
                        </ul>
                    </li>
                    <li class=""><a href="#type-talbe">Table</a></li>
                    <li class=""><a href="#type-link">Link</a></li>
                    <li class=""><a href="#type-field-panels">Field Panels</a></li>
                    <li class=""><a href="#type-alert-panels">Alert Panels</a></li>
                    <li class=""><a href="#type-info-panels">Information Panels</a></li>
                </ul>
            </li>

        </ul>

    </div>

    <div class="bs-docs-sidebar hidden-print hidden-xs hidden-sm" role="complementary">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>작성자</th>
                <th>SON.js</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>작성일</td>
                <td>2013.08.01 00:00:00</td>
            </tr>
            <tr>
                <td>수정일</td>
                <td>2013.08.01 00:00:00</td>
            </tr>
            <tr>
                <td>조회수</td>
                <td>312</td>
            </tr>
            <tr>
                <td>공감수</td>
                <td>1</td>
            </tr>
            <tr>
                <td>글상태</td>
                <td>기본</td>
            </tr>
            </tbody>
        </table>
        <a href="#" class="btn btn-primary">추천하기</a>
        <a href="#" class="btn btn-primary">인쇄하기</a>
    </div>
</div>




</div>


<div class="col-md">
    <div style="padding-bottom: 5px">
        링크목록
        <ul>
            <li>1. 다운로드 - http://son.com</li>
            <li>2. 다운로드 - http://son.com</li>
        </ul>
    </div>
    <div style="padding-bottom: 10px">
        관련키워드
        <div>
            <span class="label label-primary">Spring</span>
            <span class="label label-success">JAVA</span>
        </div>
    </div>
    <div style="padding-bottom: 5px">
        주석
        <ul>
            <li>son.js : 설명~~~</li>
            <li>glider.js : 설명~~~</li>
        </ul>
    </div>
    <div style="padding-bottom: 5px">
        첨부파일
        <div>
            <i class="fa fa-file">압축파일.zip</i>
            <i class="fa fa-file">압축파일.zip</i>
            <i class="fa fa-file">압축파일.zip</i>
        </div>
    </div>
</div>

<div class="col-md text-center">
    <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            EXPORT <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#">HTML</a></li>
            <li><a href="#">PDF</a></li>
        </ul>
    </div>
    <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="modal" data-target="#askModal">
            이 위키에 질문하기
        </button>
    </div>
    <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            이 위키 공유하기 <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#">페이스북에 공유</a></li>
            <li><a href="#" data-toggle="modal" data-target="#emailShareModal">이메일에 공유</a></li>
        </ul>
    </div>
</div>

<div class="col-md">
    <div class="nav-tabs-header">10개의 댓글</div>

    <div class="my-qna-item">
        <a class="pull-left" href="#">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
            </div>
        </a>
        <div class="row">
            <div class="col-md-10">
                <div class="my-my-qna-item-body">
                    <div class="media-heading">
                        2014-04-05 12:12
                        <span class="my-qna-writer">작성자 &nbsp;&nbsp;&nbsp;이온</span>
                        <strong><span class="pull-right">form facebook</span></strong>
                    </div>
                    여기서 질문을 해야 합니다. 질문은 제목만 보여주고요.내용은 일부만 보여줍니다. 첫 줄만?
                    나머지는 디테일...  내용은 일부만 보여줍니다. 첫 줄만? 나머지는 디테일...  내용은 일부만 보여줍니다. 첫 줄
                </div>
            </div>
            <div class="col-md-1 my-qna-rating pull-right">
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">추천 1</button>
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">비추천 1</button>
            </div>
        </div>
    </div>

    <div class="my-qna-item">
        <a class="pull-left" href="#">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
            </div>
        </a>
        <div class="row">
            <div class="col-md-10">
                <div class="my-my-qna-item-body">
                    <div class="media-heading">
                        2014-04-05 12:12
                        <span class="my-qna-writer">작성자 &nbsp;&nbsp;&nbsp;이온</span>
                        <strong><span class="pull-right">form facebook</span></strong>
                    </div>
                    여기서 질문을 해야 합니다. 질문은 제목만 보여주고요.내용은 일부만 보여줍니다. 첫 줄만?
                    나머지는 디테일...  내용은 일부만 보여줍니다. 첫 줄만? 나머지는 디테일...  내용은 일부만 보여줍니다. 첫 줄
                </div>
            </div>
            <div class="col-md-1 my-qna-rating pull-right">
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">추천 1</button>
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">비추천 1</button>
            </div>
        </div>
    </div>

    <div class="my-qna-item">
        <a class="pull-left" href="#">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
            </div>
        </a>
        <div class="row">
            <div class="col-md-10">
                <div class="my-my-qna-item-body">
                    <div class="media-heading">
                        2014-04-05 12:12
                        <span class="my-qna-writer">작성자 &nbsp;&nbsp;&nbsp;이온</span>
                        <strong><span class="pull-right">form facebook</span></strong>
                    </div>
                    여기서 질문을 해야 합니다. 질문은 제목만 보여주고요.내용은 일부만 보여줍니다. 첫 줄만?
                    나머지는 디테일...  내용은 일부만 보여줍니다. 첫 줄만? 나머지는 디테일...  내용은 일부만 보여줍니다. 첫 줄
                </div>
            </div>
            <div class="col-md-1 my-qna-rating pull-right">
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">추천 1</button>
                <button class="btn btn-sm btn-default btn-sm-fixed pull-right">비추천 1</button>
            </div>
        </div>
    </div>

</div>


<br>
<div class="col-md">
    <div class="nav-tabs-header">10개의 활동</div>

    <div class="my-qna-item">
        <a class="pull-left" href="#">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
            </div>
        </a>
        <div class="row">
            <div class="col-md-10">
                <div class="my-my-qna-item-body">
                    <div class="media-heading">
                        2014-04-05 12:12
                        <span class="my-qna-writer">XXX님이 이 위키를 5명의 이메일로 전송했습니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="my-qna-item">
        <a class="pull-left" href="#">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
            </div>
        </a>
        <div class="row">
            <div class="col-md-10">
                <div class="my-my-qna-item-body">
                    <div class="media-heading">
                        2014-04-05 12:12
                        <span class="my-qna-writer">XXX님이 이 위키를 5명의 facebook 전송했습니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="my-qna-item">
        <a class="pull-left" href="#">
            <div class="user-profile">
                <img alt="avatar" class="profile-image" src="../images/avatar.png" />
            </div>
        </a>
        <div class="row">
            <div class="col-md-10">
                <div class="my-my-qna-item-body">
                    <div class="media-heading">
                        2014-04-05 12:12
                        <span class="my-qna-writer">XXX님이 이 위키를 추천했습니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</div>
</div>


<div class="modal fade" id="askModal" tabindex="-1" role="dialog" aria-labelledby="askModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="askModalLabel">위키에 질문하기</h4>
            </div>
            <div class="modal-body" id="askEdit">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="emailShareModal" tabindex="-1" role="dialog" aria-labelledby="emailShareModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="emailShareModalLabel">이메일로 공유하기</h4>
            </div>
            <div class="modal-body">
                <form class="form-inline" role="form">
                    <div class="form-group">
                        <input type="text" class="form-control">
                    </div>
                    <button type="button" class="btn btn-primary">추가</button>
                </form>
                <br>
                <button type="button" class="btn btn-default btn-sm">cafeciel@hanmail.net <span class="glyphicon glyphicon-remove"></span></button>
                <button type="button" class="btn btn-default btn-sm">cafeciel@hanmail.net <span class="glyphicon glyphicon-remove"></span></button>
                <button type="button" class="btn btn-default btn-sm">cafeciel@hanmail.net <span class="glyphicon glyphicon-remove"></span></button>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<link href="http://getbootstrap.com/assets/css/docs.min.css" rel="stylesheet">
