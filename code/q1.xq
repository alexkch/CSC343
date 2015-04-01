<noplaylist>{
	for $sid in doc("music.xml")//@sid
	return <song>{data(sid)}</song>
}</noplaylist>
