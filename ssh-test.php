<?php
while (true) {
    try {
        $ch = curl_init('https://www.google.com');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, 1);
        curl_setopt($ch, CURLOPT_PROXY, '127.0.0.1');
        curl_setopt($ch, CURLOPT_PROXYPORT, 8118);
        curl_setopt($ch, CURLOPT_TIMEOUT, 20);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 20);
        $output = curl_exec($ch);
        if (curl_errno($ch)) {
            throw new Exception(curl_error($ch));
        }
    } catch (\Exception $e) {
        echo "re connect\n";
        exec("ps auxf|grep qTfnN|grep -v grep|awk '{print $2}'|xargs kill");
        exec('ssh -qTfnN -D 7070 root@los.sdhou.com -p 26648');
    }
    sleep(10);
}
