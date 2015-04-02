<favourites> {
	let $users := doc("users.xml")//user
	for $user in $users
	let $hiplays := max($user//playlist/@playcount)
	for $playlist in $user//playlist
	where $playlist/@playcount=$hiplays
	return <user uid="{$user/@uid}"  pid="{$playlist/@pid}" playcount="{$hiplays}"/>
} </favourites>
	