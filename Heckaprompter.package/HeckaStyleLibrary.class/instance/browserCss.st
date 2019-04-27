as yet unclassified
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
/*	background: blue; */
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

.clipartChooser {
	width: 132px;
	height:calc(100vh - 40px);	
	overflow-y: scroll;
/*	background: yellow;  */
	float: left;
	clear: all;
}

.blurbChooser {
	width: 220px;
	height:calc(100vh - 40px);	
	overflow-y: scroll;
/*	background: yellow;  */
	float: left;
	clear: none;
}
.hClipart {
    display: inline-block;
    width: 120px;
    height: 120px;
}

.hScrollClipart {
    overflow-x: scroll;
    overflow-y: hidden;
 /*   white-space: nowrap; */
/*	max-height:  164px; */
}

.hScrollBlurb {
	height: 8.5em;
    overflow-x: scroll;
    overflow-y: hidden;
 /*   white-space: nowrap; */
/*	max-height:  164px; */
}


.hBlurb {
    max-width: 240px;
    display: table-cell;
	padding: 10px;
    width: 200px;
    overflow-wrap: break-word;
/*    word-break: break-all; */
    height: 4em;
    white-space: pre-wrap;
    float: left;
	height: 100%;
}

'