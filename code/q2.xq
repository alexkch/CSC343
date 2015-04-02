<fewfollowers> {
	let $doc := doc("users.xml")
	for $u1 in $doc//user
	return <who uid="{$u1/@uid}"/>
} </fewfollowers>