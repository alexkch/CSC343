
<pairs> {
	let $users := doc("users.xml")//user
	where count($users//playlist) > 4
	return <user uid="{$users/@uid}"/>
} </pairs>