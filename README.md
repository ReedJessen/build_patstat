# Build SQLite database

Patstat is a dataset from the European Patent Office (EPO) containing bibliographic and legal status patent data for statistical analysis. This script provides the ability to build an SQLite database from the Patstat2017b data, but it does not provide the data itself. Patstat is a paid product and must be obtained from the EPO. *See* https://www.epo.org/searching-for-patents/business/patstat.html.

SQLite is an embedded relational database management system (RDBMS). SQLite requires very little (if any) configuration compared to other RDBMSes (e.g., MS SQL Server, MySQL, PostgreSQL). As such, it may be easier for individuals to use. *See* https://www.sqlite.org/.

The build_patstat2017b script will do the following,

  * Check the SHA1 hash values of the ZIP files downloaded from the EPO
  * Create an SQLite database with the appropriate tables
  * Load the Patstat2017b data from the EPO provided CSVs to the SQLite database
  * Build SQLite indexes
  * Check table row counts against counts provided by the EPO

The script supports the bibliographic and legal status datasets. It does not currently support register data. 

## Installation

This script uses a mix of Bash Script and Python. There is no installation needed; however, some prerequists are required.  Specifically,

* SQLite 3
* Python 3 with Pandas

## Usage

Place the ZIP files downloaded from the EPO along with the SHA.txt files in a directory. The directory can be further organized using sub-directories (e.g., a directory for biblio ZIPs and a directory for legal_status ZIPs); however, the SHA1.txt files must be in the same directory as their corresponding ZIP.

Run build_patstat2017b with the name of the directory containing the ZIP files provided as a positional argument. Optionally, the name of the output SQLite database can be specifiie using the -o flag.

For example

    build_patstat2017b ./downloads/ -o ./patstat2017b.db

The following help message can be displayed at the console by running build_patstat2017b -h

    $ build_patstat2017b -h
    Build Patstat2017b SQLite database
    See readme.md for detailed use information including structure of
    input directory
    
    Usage:
    build_patstat2017b <input_directory>
    
    Options:
    -o <file>     Output SQLite database (default: patstat2017b.db)
    -h            This help message

By default this script does not load tls203_appln_abstr or tls206_person. If you want these tables to load, you must open the script in a text editor and uncomment the lines for loading and testing these tables.

## Development

This script was developed and tested on macOS High Sierra for my personal use. Its level of optimization and polish reflect the fact that I only needed the script to be run once.  However,  if other's find the script useful, I may improve it.


## License

This script is provided under a two clause BSD license; it is provided "as is" and without any express or implied warranties. See LICENSE for full license agreement.