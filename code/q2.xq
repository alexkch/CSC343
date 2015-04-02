<fewfollowers> {
	let $doc := doc("users.xml")
	for $u1 in $doc//user
	return <who uid="{tokenize("{$u1/follows/@who}", "/s+")}"/>
} </fewfollowers>