#!/bin/bash
date=`date '+%Y-%m-%d'`
time=`date '+%H:%M'`
mysqladmin=`which mysqladmin`

CONNECTED=`$mysqladmin extended-status -pitbank | grep Threads_connected | awk '{print $4}'`
Max_Conn=`$mysqladmin variables -pitbank | grep '| max_connections' | awk '{print $4}'`
Max_Used_Conn=`$mysqladmin extended-status -pitbank | grep Max_used_connections | awk '{print $4}'`
Try_conn=`$mysqladmin extended-status -pitbank | grep Connections | awk '{print $4}'`
Aborted_conn=`$mysqladmin extended-status -pitbank | grep Aborted_connects | awk '{print $4}'`

Conn_Usage=`expr $CONNECTED / $Max_Conn \* 100`
Conn_Miss=`expr $Aborted_conn / $Try_conn \* 100`

echo -e "## $date $time Monitoring ## \n최대 연결 가능 수: $Max_Conn \n현재 연결 수: $CONNECTED \n연결 포화도: $Conn_Miss% \n최고 동시 연결 수: $Max_Used_Conn \n연결 실패 수: $Aborted_conn \n연결 시도된 총 수: $Try_conn \n연결 실패 비율: $Conn_Miss %"
