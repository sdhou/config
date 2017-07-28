while true
do
	ps aux|grep ':7071'|grep -v 'grep' || ssh -qTfnN -D 0.0.0.0:7071 sdhou@47.90.90.67
	sleep 10
done

