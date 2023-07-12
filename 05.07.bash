echo "Строка 1"
echo "Промежуточная строка" > file
echo "Строка 2" > file
cat file


echo "Строка 1"
echo "Промежуточная строка" > file
echo "Строка 2" >> file
cat file


ls badfile > file2
echo "Строка 2" >> file2
cat badfile
cat file2


ls badfile 2> errors
echo "Строка 1" > file3
echo "Строка 2" >> file3
cat errors
cat file3


ls -lh test badtest 2> errors
cat errors

ls -lh test test2 badtest 2> errors 1> output
cat errors
cat output

ls -lh test badtest &> output
cat output


vim test2
echo "Это сообщение об ошибке" >&2
echo "Это нормальное сообщение"
:wq
bash test2
bash test2 2>errors
cat errors


vim test3
exec 1> testout
echo "Это тест перенаправления всего вывода"
echo "из скрипта в другой файл"
echo "без использования временного перенаправления"
:wq
bash test3
cat testout


vim test4
exec 2> testerror
echo "Это начально скрипта"
echo "И это первые две строки"
exec 1> testout
echo "Вывод сценария перенаправлен"
echo "из с терминала в другой файл"
echo "но эта строка записана в файл ошибок" >&2
:wq
bash test4
cat testout
cat testerror