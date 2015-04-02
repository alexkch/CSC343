<<<<<<< HEAD

<songcounts> {

let $listplaycounts := ( 
let $doc := doc("music.xml")
let $allplay := $doc//playlists/playlist
for $playlist in $allplay
return <playlist pid="{$playlist/@pid}" tcount="{ sum(
let $doc2 := doc("users.xml")
let $allist := $doc2//playlists
for $a in $allist
return $a/playlist[@pid = $playlist/@pid]/@playcount) }" /> )


let $tempmusiclist := (
let $doc := doc("music.xml")
let $music := $doc//songs/song

for $song in $music
return <song sid="{$song/@sid}" title="{$song/title}"> { 
let $allist := $doc//playlists/playlist
for $plist in $allist
	
return <plist pid="{$plist[track/@sid = $song/@sid]/@pid}" />
}
</song>)


for $song in $tempmusiclist
return <song sid="{$song/@sid}" title="{$song/@title}" 
playcount="{ sum (for $plist in $song/plist
for $count in $listplaycounts
where $plist/@pid = $count/@pid
return $count/@tcount)


}"/>


} </songcounts>










=======
<songcounts> {

	let $listplaycounts := ( 
	let $doc := doc("music.xml")
	let $allplay := $doc//playlists/playlist
	for $playlist in $allplay
	return <playlist pid="{$playlist/@pid}" tcount="{ sum(
	let $doc2 := doc("users.xml")
	let $allist := $doc2//playlists
	for $a in $allist
	return $a/playlist[@pid = $playlist/@pid]/@playcount) }" /> )


	let $tempmusiclist := (
	let $doc := doc("music.xml")
	let $music := $doc//songs/song

	for $song in $music
	return <song sid="{$song/@sid}" title="{$song/@title}"> { 
	let $allist := $doc//playlists/playlist
	for $plist in $allist
		
	return <plist pid="{$plist[track/@sid = $song/@sid]/@pid}" />
	}
	</song>)


	for $song in $tempmusiclist
	return <song sid="{$song/@sid}" title="{$song/title}" 
	playcount="{ for $count in $listplaycounts
	return sum(data($song[plist/@pid = $count/@pid]))

	}"/>


} </songcounts>
>>>>>>> 091fdb2f7f9a33565305f08e21a9ca4879e053c0
