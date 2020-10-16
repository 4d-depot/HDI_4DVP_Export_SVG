If (FORM Event:C1606.code=On Data Change:K2:15)
	C_LONGINT:C283($id)
	
	If (Form:C1466.trace)
		TRACE:C157
	End if 
	
	  // change the current document for the Write Pro document references
	Doc:=Form:C1466.docs[WPDocuments-1]
	
	  // conversion in SVG
	DocumentPicture:=VP Convert to picture (Form:C1466.docs[WPDocuments-1].Content;VP Cells ("";1;20;11;20))
	
	  // Comput the write pro area to update the fields
	ST COMPUTE EXPRESSIONS:C1285(*;"WriteProArea";ST Start text:K78:15;ST End text:K78:16)
	
End if 