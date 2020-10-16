If (FORM Event:C1606.code=On Clicked:K2:4)
	C_OBJECT:C1216($doc)
	C_LONGINT:C283($columnNumber)
	
	$doc:=VP Export to object ("ViewProArea")
	If (Form:C1466.docs[Documents-1].IsLandscape)
		$columnNumber:=16
	Else 
		$columnNumber:=12
	End if 
	Form:C1466.displayPictViewPro:=VP Convert to picture ($doc;VP Cells ("ViewProArea";0;0;$columnNumber;41))
	
End if 
