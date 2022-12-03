echo "This is a shell script "  
echo "Task number 1"

#50MB files list 
for fileslist in {1..10..1}
	do
		echo "50MB file list : $fileslist"
		truncate -s 50M "50MB_file-$fileslist".txt
done

#100MB files list
for fileslist in {1..20..1}
	do
		echo "100MB file list : $fileslist"
		truncate -s 100M "100MB_file-$fileslist".txt
done

#500MB files list 
for fileslist in {1..30..1}
	do
		echo "500MB file list : $fileslist"
		truncate -s 500M "500MB_file-$fileslist".txt
done

#1GB files list 
for fileslist in {1..5..1}
	do
		echo "1GB file list : $fileslist"
		truncate -s 1G "1GB_file-$fileslist".txt
done

#5GB files list 
for fileslist in {1..3..1}
	do
		echo "5GB file list : $fileslist"
		truncate -s 5G "5GB_file-$fileslist".txt
done

#10GB files list 
for fileslist in {1..1..1}
	do
		echo "10GB file list : $fileslist"
		truncate -s 10G "10GB_file-$fileslist".txt
done
#********************end of task 1**************

echo "Task number 2"

#ls -lahS
#find . -type f -size +50M

find . -type f -size +50M -exec ls -laSh {} \; -print

#***************END*******************