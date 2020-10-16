  // Print the current document
C_LONGINT:C283($bestwidth;$bestheight)
C_BOOLEAN:C305($end)

If (Form:C1466.trace)
	TRACE:C157
End if 

PRINT SETTINGS:C106
SET PRINT OPTION:C733(Paper option:K47:1;"A4")

If (OK=1)
	
	  // define orientation
	If (Form:C1466.docs[Documents-1].IsLandscape)
		SET PRINT OPTION:C733(Orientation option:K47:2;2)
	Else 
		SET PRINT OPTION:C733(Orientation option:K47:2;1)
	End if 
	
	OPEN PRINTING JOB:C995
	
	PictViewPro:=Form:C1466.displayPictViewPro
	
	  // define the form to load 
	If (Form:C1466.docs[Documents-1].IsLandscape)
		FORM LOAD:C1103("PrintForm_Landscape")
	Else 
		FORM LOAD:C1103("PrintForm_Portrait")
	End if 
	
	  // Print object in the loaded form 
	OBJECT GET BEST SIZE:C717(*;"PictViewPro";$bestwidth;$bestheight)
	$end:=Print object:C1095(*;"PictViewPro";0;0;$bestwidth;$bestheight)
	
	FORM UNLOAD:C1299
	
	CLOSE PRINTING JOB:C996
End if 