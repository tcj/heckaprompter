stylesheets
browserCss
	^ '
object {
	pointer-events: none;
}

.chooserClipartItemChosen {
	width: 95%;
	border-left: auto;
	border-right: auto;
	margin-top: 5px;
	margin-bottom: 5px;
	background: blue;
}

.chooserClipartItem {
	width: 95%;
	border-left: auto;
	border-right: auto;
	margin-top: 5px;
	margin-bottom: 5px;
}

#chosenClipart {
	background: blue;
}

a.svg {
  position: relative;
  display: block; 
}

a.svg:after {
  content: ""; 
  position: absolute; 
  top: 0; 
  right: 0; 
  bottom: 0; 
  left: 0;
}

.hScrollClipartFile {
 overflow-x: scroll;
 overflow-y: hidden;
 white-space: nowrap;
 max-height:  164px;
}

.hScrollBlurb {
	height: 8.5em;
	display: flex;
	overflow-x: scroll;
	flex-wrap: nowrap;
}

.hClipart {
    display: inline-block; 
	overflow: visible;
    width: 120px;
    height: 120px;
}

.hBlurb {
	width: 14em;
	padding: 10px;
	flex: 0 0 auto;
}

/*
a.hBlurb:after {
  content: ""; 
  position: absolute; 
  top: 0; 
  right: 0; 
  bottom: 0; 
  left: 0;
}
*/

'