<popularity> {

let $under5 := (let $doc := doc("users.xml")
		let $allists := $doc//playlists
		return $allists/playlist[@playcount < 5]
		)
		
let $from5to49 := (let $doc := doc("users.xml")
		let $allists := $doc//playlists
		return $allists/playlist[@playcount < 50 and @playcount > 4]
		)
			

let $over49 := (let $doc := doc("users.xml")
		let $allists := $doc//playlists
		return $allists/playlist[@playcount > 49]
		)


let $doc2 := doc("music.xml")
let $musicplaylist := $doc2//playlists/playlist
for $a in $musicplaylist
return <histogram pid="{$a/@pid}"> {

let $low := count($under5[@pid = $a/@pid])
let $mid := count($from5to49[@pid = $a/@pid])
let $high := count($over49[@pid = $a/@pid])


return (<low count="{$low}" />, <medium count="{$mid}" />, <high count="{$high}" />)

}</histogram>	 

} </popularity>




