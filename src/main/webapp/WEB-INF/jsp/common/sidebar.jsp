<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
$(document).ready(function(){
	$( ".sidebar-nav li" ).click(function() { hash
		  $(".sidebar-nav li").each(function( index ) {
			  $( this ).removeClass('sideclick');
		  });
		  if($( this ).prop('class') != 'sidebar-brand'){
			  $( this ).addClass( 'sideclick' );
		  };
	});
});
</script> 
<!-- 사이드바 -->
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand" >사이드바</li>
      <li><a href="#">메뉴 1</a></li>
      <li><a href="#">메뉴 2</a></li>
      <li><a href="#">메뉴 3</a></li>
      <li class="sidebar-brand">사이드바 </li>
      <li><a href="#">메뉴 1</a></li>
      <li><a href="#">메뉴 2</a></li>
      <li><a href="#">메뉴 3</a></li>
    </ul>
  </div>
  <!-- /사이드바 -->
