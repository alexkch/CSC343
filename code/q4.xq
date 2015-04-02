
<pairs> {
	let $users := doc("users.xml")//user
	where count($users//playlist) > 4
	return $users
} </pairs>