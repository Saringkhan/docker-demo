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

'\
> /usr/share/nginx/html/index.html
