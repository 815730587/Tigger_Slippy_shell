echo "echo 4 >>a
echo 5 >>b
echo 6 >>c
echo 7 >d
echo 8 >e"
# for file in .tigger/index/*;do
#      file_name=$(basename $file)
#      if [ ! -d $file_name ];then
#           echo $file_name
#      fi
# done
# name_string=''
# for file_count in .tigger/index/.commit-0/*;do
#      file_count=$(basename $file_count)
#      name_string="$name_string $file_count"
#      echo $name_string
# done
# name_index_string=''
# for file_count_index in .tigger/index/*;do
#      file_count_index=$(basename $file_count_index)
#      if [ ! -d file_count_index ];then
#           name_index_string="$name_index_string\n$file_count_index"
#      fi
     
# done
# x='\na\nb\nc\na\nd'
# y='\na\nb\nc\nd'
# x=$(echo -e $x |sort|uniq)
# y=$(echo -e $y |sort|uniq)
# for name in $x;do
#     echo $name
# done
# if [ $x = $y ];then
#    echo "smae"
# fi
# a="0:s"
# b=":s"
# echo "'$b'"
# index=$(echo $b|cut -d':' -f1)
# if [ ! $index ];then
#    echo $index
# fi
# num=$(cat .tigger/commit.log|cut -d' ' -f1|sort|tail -1)
# echo $num
# file_index=$((num+1))
# old_index=$((num-1))
# while [ $old_index -ge 0 ];do
#         echo "$old_index"
#         old_index=$((old_index-1))
# done
# for file in .tigger/index/*;do
#     path=$(basename $file)
#     if [ -e .tigger/index/.commit-"$num"/"$path" ];then
#         echo $file
#         different=$(diff "$file" .tigger/index/.commit-"$num"/"$path")
#         temp=$different
#         temp_1=$(echo $temp|sed -e 's/ //g')
#         if [ $temp_1 ];then
#            echo "$path" no change
#         fi
#     fi
# done







# for index_living in dd/*;do
#      if [ ! -d $index_living ] ;then
#        echo $index_living 
#      fi
# done
ls -l .tigger/index





# old_index=$((file_index-1))
#       flag=1
#       while [ $old_index -ge 0 ];do
#            if [ -e .tigger/index/.commit-"$old_index"/"$file_name" ];then
#                flag=0
#                old_file=$old_index
#                break
#             else
#                flag=1
#            fi
#            old_index=$((old_index-1))
#       done
#       file_error=$(echo $file_index | sed -e 's/ //g')
#       if [ $flag -eq 1 ];then
#          if [ ! $file_index ] && [ ! -e .tigger/index/"$file_name" ];then
#             echo tigger-show: error: "'$file_name'" not found in index
#          elif [ $file_index ] && [ ! -e .tigger/index/.commit-"$file_index"/"$file_name" ];then
#             echo tigger-show: error: "'$file_name'" not found in commit "$file_index"
#          fi
#       elif [ $file_error ] && [ ! -e .tigger/index/.commit-"$file_index" ];then
#            echo tigger-show: error: unknown commit "'$file_index'"
#            exit 1
#       elif [ $flag -eq 0 ];then
#            cat .tigger/index/.commit-"$old_file"/"$file_name"
#      fi










##############commit###########################
# #!/bin/dash
# if [ ! -e .tigger/commit.log ];then
#    touch commit.log
# fi
# command='-a'
# if [ $1=-m -a $# -eq 2 ];then
#    if [ ! -e .tigger/index/.commit-0 ];then #first commit
#        mkdir .tigger/index/.commit-0
#        cp .tigger/index/* .tigger/index/.commit-0
#        cp .tigger/index/.commit-0/* .tigger/branches/master
#        echo 0 "$2" > .tigger/commit.log
#        echo Committed as commit 0
#    else
#        num=$(cat .tigger/commit.log|cut -d' ' -f1|sort|tail -1)
#        file_index=$((num+1))
#        for file in .tigger/index/*;do
#            path=$(basename $file)
#            if [ -e .tigger/index/.commit-"$num"/"$path" ];then
#                different=$(diff "$file" .tigger/index/.commit-"$num"/"$path")
#                temp=$different
#                temp_1=$(echo $temp|sed -e 's/ //g')
#                if [ $temp_1 ];then
#                   if [ ! -e .tigger/index/.commit-"$file_index" ];then
#                       mkdir .tigger/index/.commit-"$file_index"
#                       echo "$file_index" "$2" >> .tigger/commit.log
#                       echo "Committed as commit $file_index"
#                   fi
#                   for index_living in .tigger/index/*;do
#                      if [ ! -d $index_living ] && [ -f "$index_living" ];then
#                           index_living=$(basename $index_living)
#                           cp $index_living .tigger/index/.commit-"$file_index"
#                       fi
#                    done
#                   #cp .tigger/index/* .tigger/index/.commit-"$file_index"
#                fi
#            else
#                flag=0
#                old_index=$((num-1))
#                while [ $old_index -ge 0 ];do
#                      if [ ! -e .tigger/index/.commit-"$old_index"/"$path" ];then
#                          flag=0
#                      else
#                         in_index=$old_index
#                          flag=1
#                          break
#                      fi
#                      old_index=$((old_index-1))
#                done
#                if [ $flag -eq 0 ];then
#                   if [ ! -e .tigger/index/.commit-"$file_index" ];then
#                       mkdir .tigger/index/.commit-"$file_index"
#                       echo "$file_index" "$2" >> .tigger/commit.log
#                       echo "Committed as commit $file_index"
#                   fi
#                   for index_living in .tigger/index/*;do
#                      if [ ! -d $index_living ] && [ -f "$index_living" ];then
#                           index_living=$(basename $index_living)
#                           cp $index_living .tigger/index/.commit-"$file_index"
#                       fi
#                    done 
#                   #cp .tigger/index/* .tigger/index/.commit-"$file_index"
#                else
#                     different=$(diff "$file" .tigger/index/.commit-"$in_index"/"$path")
#                     temp=$different
#                     temp_1=$(echo $temp|sed -e 's/ //g')
#                     if [ $temp_1 ];then
#                         if [ ! -e .tigger/index/.commit-"$file_index" ];then
#                            mkdir .tigger/index/.commit-"$file_index"
#                            echo "$file_index" "$2" >> .tigger/commit.log
#                            echo "Committed as commit $file_index"
#                          fi
#                          for index_living in .tigger/index/*;do
#                              if [ ! -d $index_living ] && [ -f "$index_living" ];then
#                                 index_living=$(basename $index_living)
#                                 cp $index_living .tigger/index/.commit-"$file_index"
#                              fi
#                          done 
#                          #cp .tigger/index/* .tigger/index/.commit-"$file_index"
#                      fi
#                fi
                    
#            fi
#        done
#        #check rm
#        if [ ! -e .tigger/index/.commit-"$file_index" ];then
#                find_file=$num
#         else   
#                find_file=$file_index
#        fi

#        name_string=''
#        while [ $find_file -ge 0 ];do
#             for file_count in .tigger/index/.commit-"$find_file"/*;do
#                 file_count=$(basename $file_count)
#                 name_string="$name_string\n$file_count"
#             done
#             find_file=$((find_file-1))
#        done
#        name_index_string=''
#        for file_count_index in .tigger/index/*;do
#             file_count_index=$(basename $file_count_index)
#             if [ ! -d file_count_index ];then
#                 name_index_string="$name_index_string\n$file_count_index"
#             fi
#        done
#        name_index_string=$(echo -e $name_index_string| sort |uniq)
#        name_string=$(echo -e $name_string| sort |uniq)
#        commit_string=''
#        for commit_file in $name_string;do
#            commit_string="$commit_string$commit_file"
#        done
#        index_string=''
#        for index_commit_file in $name_index_string;do
#            index_string="$index_string$index_commit_file"
#        done
#        compare_string='-e'
#        for compare in .tigger/index/.commit-"$num"/*;do
#            compare=$(basename $compare)
#            compare_string="$compare_string$compare"
#        done
#        if [ $index_string != $commit_string ] && [ $index_string != $compare_string ];then
#             if [ ! -e .tigger/index/.commit-"$file_index" ];then
#                 mkdir .tigger/index/.commit-"$file_index"
#                 echo "$file_index" "$2" >> .tigger/commit.log
#                 echo "Committed as commit $file_index"
#             fi
#             for index_living in .tigger/index/*;do
#                 if [ ! -d $index_living ] && [ -f "$index_living" ];then
#                     index_living=$(basename $index_living)
#                     cp $index_living .tigger/index/.commit-"$file_index"
#                 fi
#             done 
#        fi
#        if [ ! -e .tigger/index/.commit-"$file_index" ];then
#            echo "nothing to commit"
#        else
#            for index_living in .tigger/index/.commit-"$file_index"/*;do
#                 if [ ! -d $index_living ] && [ -f "$index_living" ];then
#                     index_living=$(basename $index_living)
#                     cp $index_living .tigger/branches/master
#                 fi
#             done 
#           #cp .tigger/index/.commit-"$file_index"/* .tigger/branches/master
#         fi
#    fi
# elif [ "$1" = "-a" ] && [ $2 = -m ] && [ $# -eq 3 ];then
#      for file in .tigger/index/*;do
#         file_name=$(basename $file)
#         if [ ! -d $file_name ];then
#            tigger-add $file_name
#         fi
#      done
#      tigger-commit -m "$3"
# fi