<fewfollowers> {
	let $doc := doc("users.xml")
	for $u1 in $doc//user
	for $fu in tokenize({$u1/follows/@who}, "/s+")
	return <who uid="{$fu}"/>
} </fewfollowers>	