<h1>WorkEarly Academy</h1>

<h2>SQL Bootcamp</h2>
<p>The aim of this repo is to hold files for practice and academic purposes. Please feel free to fork this repo and try in you own</p>
<h2>Preparation</h2>
<p> 
Install MySQL software from <a href="https://dev.mysql.com/downloads/file/?id=512698">here</a>
</p>

<h2>Usage</h2>
<p>
Each file will be the same name with different extension. For example test.sql will be the SQL statement, the text.html is the results of the related .sql file.
</p>
<p> 
From the '2.world-testDB' folder and after the 'world_test' database is used.
</p>

<h2>sakila-db</h2>
<p>
This folder consists of the creation queries as well as the schema of the sakila database.
</p>
<p>
In order to use it from the MySQL Workbench programme choose from the menu File --> Open Model and choose the 'sakila.mdb' file. As far as the rest 2 files they make the database. First open and run the file named 'sakila-schema' run it and then open and run the file named 'sakila-data'.
</p>

<h2>SQL Playground</h2>
<p>It is required to have installed the MySQL software before to continue in next steps.</p>
<h3>Steps</h3>
<ol>
	<li>Open MySQL Workbench on your personal device </li>
	<li>Click on the + symbol which resides next to MySQL connections </li>
	<li>Enter the following details: </li>

	<ul>
		<li>Connection Name =  enter any text you prefer </li>
		<li>Username = workearly1 </li>
		<li>Connection Method = Standard (TCP/IP) </li>
		<li>Hostname = 34.65.82.17 </li>
		<li>Port = 3306 </li>
		<li>Username = workearly1 </li>
		<li>password = work123 </li>
	</ul>

	<li>Run the following queries </li>
		<ol>
			<li> USE world;</li>
			<li> SELECT DISTINCT(EventName) FROM Event WHERE CountryID=7 AND CategoryID=9 </li>
			<li> USE world; </li>
			<li> SELECT COUNT(*) AS total_Countries,ContinentID FROM Country GROUP BY ContinentID;</li>
		</ol>
</ol>