  // Print all the document present in Documents table
C_BOOLEAN:C305($pageBreak;$end)
C_LONGINT:C283($bestWidth;$bestHeight)
C_OBJECT:C1216($doc;$docs)

If (Form:C1466.trace)
	TRACE:C157
End if 

PRINT SETTINGS:C106
SET PRINT OPTION:C733(Paper option:K47:1;"A4")

If (OK=1)
	
	$docs:=ds:C1482.Documents.all()
	
	OPEN PRINTING JOB:C995
	
	
	For each ($doc;$docs)
		
		
		
		
		If ($doc.IsLandscape)
			  // Conversion of the 4D View pro document in SVG
			PictViewPro:=VP Convert to picture ($doc.Content;VP Cells ("ViewProArea";0;0;16;41))
			  // print option: Orientation of the document 
			SET PRINT OPTION:C733(Orientation option:K47:2;2)
			  // Form loading with the "Landscape" object to print  
			FORM LOAD:C1103("PrintForm_Landscape")
		Else 
			  // Conversion of the 4D View pro document in SVG
			PictViewPro:=VP Convert to picture ($doc.Content;VP Cells ("ViewProArea";0;0;12;41))
			  // print option: Orientation of the document 
			SET PRINT OPTION:C733(Orientation option:K47:2;1)
			  // Form loading with the "portrait" object to print 
			FORM LOAD:C1103("PrintForm_Portrait")
		End if 
		
		  // page break between all the document
		If ($pageBreak)
			PAGE BREAK:C6(>)
		End if 
		
		OBJECT GET BEST SIZE:C717(*;"PictViewPro";$bestWidth;$bestHeight)
		$end:=Print object:C1095(*;"PictViewPro";0;0;$bestWidth;$bestHeight)
		
		FORM UNLOAD:C1299
		$pageBreak:=True:C214
		
	End for each 
	
	CLOSE PRINTING JOB:C996
End if 