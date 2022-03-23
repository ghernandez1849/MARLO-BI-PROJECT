To create tables in MySQL:

Work with mysql as a command line program:

If there is not path associated to MySQL, go to:
c:\Program Files\MySQL\MySQL Server 8.0\bin>

Then, execute mysql program:
mysql -h localhost -u root -p marloBI --verbose --comments

Once in mysql, the prompt will change to:
mysql>

In mysql, use the following command:

\T: This command will sent the output to a file, example:

\T D:\sql\20210609_CrTables_BI.txt


After that, use the following command to execute the sql script to create tables:

\. D:\Github\MARLO-BI\Tables\Cr_all_tables_script_ejecutar.sql


Note: This is another way to execute the script, but the output file will have different information due to the --show-warnings command.

mysql -h localhost -u root -p marloBI --verbose --comments --show-warnings=TRUE < D:\Github\MARLO-BI\Tables\Cr_all_tables_script_ejecutar.sql > D:\SQL\20210609_resultsql.txt








