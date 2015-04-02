<fewfollowers> {
	let $doc := doc("users.xml")
	for $u1 in $doc//user
	let $leaders := tokenize($u1/follows/@who, "/s+")
	for $leader in $leaders
	return <who uid="{$leader}">
				<follower uid="{$ui/@uid}" />
			</who>
} </fewfollowers>	