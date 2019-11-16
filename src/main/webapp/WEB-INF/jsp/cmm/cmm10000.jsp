<jsp:include page="../common/header.jsp" flush="false" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(
			function() {
				
				ajaxCall('/cmm10000/selectCmm10000List.do', 'POST', $("#cmm10000"),
						function success(data) {
							var list = data.list;

							for (var idx = 0; idx < list.length; idx++) {
								var vHtml = "";
								vHtml += "<tr>";
								vHtml += "<td class='text-center'>"
										+ list[idx].RNO + "</td>";
								vHtml += "<td>" + list[idx].TITLE + "</td>";
								vHtml += "<td class='text-center'>"
										+ list[idx].WRITER + "</td>";
								vHtml += "<td class='text-center'>"
										+ list[idx].BASEDATE + "</td>";
								vHtml += "<td class='text-center'>"
										+ list[idx].CNT + "</td>";
								vHtml += "</tr>";
								$("#table tbody").append(vHtml);
							}
						});
			}); 
</script>
<body>
    <div id="test">ddddd</div>
	<div id="page-content-wrapper">
		<div class="container-fluid">
			<h1>메인제목</h1>
			<table class="table table-striped" id="table">
				<colgroup>
					<col width="5%" />
					<col width="55%" />
					<col width="15%" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col" class="text-center">번호</th>
						<th scope="col" class="text-center">제목</th>
						<th scope="col" class="text-center">작성자</th>
						<th scope="col" class="text-center">날짜</th>
						<th scope="col" class="text-center">조회수</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<div class="tree ">
				<ul>
					<li><span><a
							style="color: #000; text-decoration: none;"
							data-toggle="collapse" href="#Web" aria-expanded="true"
							aria-controls="Web"><i class="collapsed"><i
									class="fas fa-folder"></i></i> <i class="expanded"><i
									class="far fa-folder-open"></i></i> Web</a></span>
						<div id="Web" class="collapse show">
							<ul>
								<li><span><i class="far fa-file"></i><a href="#!">
											Link 1</a></span></li>
								<li><span><a
										style="color: #000; text-decoration: none;"
										data-toggle="collapse" href="#page1" aria-expanded="false"
										aria-controls="page1"><i class="collapsed"><i
												class="fas fa-folder"></i></i> <i class="expanded"><i
												class="far fa-folder-open"></i></i> Page 1</a></span>
									<ul>
										<div id="page1" class="collapse">
											<li><span><i class="far fa-file"></i><a href="#!">
														Link 1</a></span></li>
											<li><span><i class="far fa-file"></i><a href="#!">
														Link 2</a></span></li>
											<li><span><i class="far fa-file"></i><a href="#!">
														Link 3</a></span></li>
											<li><span><i class="far fa-file"></i><a href="#!">
														Link 4</a></span></li>
										</div>
									</ul></li>
								<li><span><a
										style="color: #000; text-decoration: none;"
										data-toggle="collapse" href="#Page2" aria-expanded="false"
										aria-controls="Page2"><i class="collapsed"><i
												class="fas fa-folder"></i></i> <i class="expanded"><i
												class="far fa-folder-open"></i></i> Page 2</a></span>
									<ul>
										<div id="Page2" class="collapse">
											<li><span><a
													style="color: #000; text-decoration: none;"
													data-toggle="collapse" href="#folder1"
													aria-expanded="false" aria-controls="folder1"><i
														class="collapsed"><i class="fas fa-folder"></i></i> <i
														class="expanded"><i class="far fa-folder-open"></i></i>
														Folder 1</a></span>
												<ul>
													<div id="folder1" class="collapse">
														<li><span><i class="far fa-file"></i><a
																href="#!"> Link 1</a></span></li>
														<li><span><i class="far fa-file"></i><a
																href="#!"> Link 2</a></span></li>
														<li><span><i class="far fa-file"></i><a
																href="#!"> Link 3</a></span> <a href="#!">& More Link</a></li>
													</div>
												</ul></li>

											<li><span><a
													style="color: #000; text-decoration: none;"
													data-toggle="collapse" href="#folder2"
													aria-expanded="false" aria-controls="folder2"><i
														class="collapsed"><i class="fas fa-folder"></i></i> <i
														class="expanded"><i class="far fa-folder-open"></i></i>
														Folder 2</a></span>
												<ul>
													<div id="folder2" class="collapse">
														<li><span><i class="far fa-file"></i><a
																href="#!"> Link 1</a></span></li>
														<li><span><i class="far fa-file"></i><a
																href="#!"> Link 2</a></span></li>
														<li><span><i class="far fa-file"></i><a
																href="#!"> Link 3</a></span> <a href="#!">& More Link</a></li>
													</div>
												</ul></li>

											<li><span><a
													style="color: #000; text-decoration: none;"
													data-toggle="collapse" href="#folder3"
													aria-expanded="false" aria-controls="folder3"><i
														class="collapsed"><i class="fas fa-folder"></i></i> <i
														class="expanded"><i class="far fa-folder-open"></i></i>
														Folder 3</a></span>
												<ul>
													<div id="folder3" class="collapse">
														<li><span><i class="far fa-file"></i><a
																href="#!"> Link</a></span> <a href="#!">& More Link</a></li>
													</div>
												</ul></li>

											<li><span><i class="far fa-file"></i><a href="#!">
														Link</a></span></li>

										</div>
									</ul></li>


								<li><span><i class="far fa-file"></i><a href="#!">
											Link 2</a></span></li>



							</ul>
						</div></li>
				</ul>

			</div>
		</div>
	</div>
</body>

<jsp:include page="../common/footer.jsp" flush="false" />
