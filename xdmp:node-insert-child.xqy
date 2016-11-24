(: create a document :)
xdmp:document-insert("/example.xml",
    <html><head>HEAD</head><body><items><row>row1</row></items></body></html>);

(: insert a child of /html/body/items :)    
xdmp:node-insert-child(doc("/example.xml")/html/body/items,
    <row>row2</row>);
    
(: insert a child of /html/body :)    
xdmp:node-insert-child(doc("/example.xml")/html/body,
    <items><row>row3</row></items>);

(: look at the new document :)
fn:doc("/example.xml")
