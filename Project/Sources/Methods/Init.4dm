//%attributes = {}
ARRAY TEXT:C222(Documents;0)
ARRAY TEXT:C222(WPDocuments;0)

EnableObject (False:C215)

Form:C1466.docs:=ds:C1482.Documents.all()

Doc:=Form:C1466.docs.first()
Form:C1466.WPArea:=WP Import document:C1318(Get 4D folder:C485(Current resources folder:K5:16)+"InvoiceDoc.4wp")

DocumentPicture:=VP Convert to picture (Doc.Content;VP Cells ("";1;20;11;20))
Form:C1466.displayPictViewPro:=VP Convert to picture (Doc.Content;VP Cells ("ViewProArea";0;0;12;41))

Form:C1466.trace:=False:C215

APPEND TO ARRAY:C911(Documents;"Document 1")
APPEND TO ARRAY:C911(Documents;"Document 2")
APPEND TO ARRAY:C911(Documents;"Document 3")
APPEND TO ARRAY:C911(Documents;"Document 4")
APPEND TO ARRAY:C911(Documents;"Document 5")

Documents:=1

APPEND TO ARRAY:C911(WPDocuments;"Document 1")
APPEND TO ARRAY:C911(WPDocuments;"Document 2")
APPEND TO ARRAY:C911(WPDocuments;"Document 3")
APPEND TO ARRAY:C911(WPDocuments;"Document 4")
WPDocuments:=1