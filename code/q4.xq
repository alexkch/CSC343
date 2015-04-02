
<pairs> {
	let $users := doc("users.xml")//user
	for $user in $users
	where count($user//playlist) > 4
	return <user uid="{$user/@uid}"/>
} </pairs>