If (FORM Event:C1606.code=On Data Change:K2:15)
	C_LONGINT:C283($id;$columnNumber)
	
	
	If (Form:C1466.trace)
		TRACE:C157
	End if 
	
	
	
	VP IMPORT FROM OBJECT ("ViewProArea";Form:C1466.docs[Documents-1].Content)
	If (Form:C1466.docs[Documents-1].IsLandscape)
		$columnNumber:=16
	Else 
		$columnNumber:=12
	End if 
	  // SVG Conversion
	Form:C1466.displayPictViewPro:=VP Convert to picture (Form:C1466.docs[Documents-1].Content;VP Cells ("ViewProArea";0;0;$columnNumber;41))
	
End if 