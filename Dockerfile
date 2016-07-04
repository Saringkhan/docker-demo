FROM nginx

MAINTAINER saringkhan

RUN echo '\
<style>\
	@import "compass/css3";\
	html, body {\
	  padding: 0;\
	  margin: 0;\
	  height: 100%;\
	  background: black;\
	}\
	canvas {\
	  display: block;\
	}\
	#overlay {\
	  position: absolute;\
	  color: white;\
	  font-family: "Arial";\
	  width:100%;\
	  font-size:500%;\
	  padding-top:2%;\
	  text-align: center;\
	}\
</style>\
<html>\
	<div id="overlay">Cloud Architecture</div>\
	<canvas id="canvas"></canvas>\
</html>\
<script type="text/javascript">\
var colors = [\
    ["rgba(179,255,129,', 'rgba(0,255,0,"],\
    ["rgba(0,0,255,', 'rgba(100,217,255,"],\
    ["rgba(255,0,0,', 'rgba(255,255,0,"],\
    ["rgba(145,0,213,', 'rgba(251,144,204,"]\
  ];\
</script>\

'\
> /usr/share/nginx/html/index.html
