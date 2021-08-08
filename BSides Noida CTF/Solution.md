> Misc / Psst
>> Psst! Want to know a secret? Here, take this...
<br>

Here we have to download a compressed file. It contains nested directories each containing a .txt file. This text file contained a single character of the flag in sequence. So we write a bash script to recursively go to all the directories one inside the another and get the character from the text file present.

```
#!/bin/bash

for i in {1..100}
do
        filename=$(ls -l | tail -1 | awk 'FS=" " {print $9}')
        if [[ $filename =~ ".txt"$ ]]
        then
                cat $filename
                foldername=$(ls -l | head -2 | tail -1 | awk 'FS=" " {print $9}')
                cd $foldername
        else
                filename=$(ls -l | head -2 | tail -1 | awk 'FS=" " {print $9}')
                cat $filename
                foldername=$(ls -l | tail -1 | awk 'FS=" " {print $9}')
                cd $foldername
        fi
done

```
