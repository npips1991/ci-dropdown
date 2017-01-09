# crud-multidropdown
This CRUD for dependent dan multiple dropdown menggunakan CodeIgniter 3.x dan AJAX

## Documentation
https://satyakresna.gitbooks.io/csrf-ajax-dalam-codeigniter/content/ in bahasa. :)

## Screenshots
### Homepage: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/homepage.png "Homepage") <br>

### Dependent dropdown <br>
#### Homepage: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/dependent%20dropdown.png "Dependent Dropdown homepage")<br>
#### Add: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/dependent%20dropdown%20add.png "Dependent Dropdown Add")<br>
#### Edit: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/dependent%20dropdown%20edit.png "Dependent Dropdown Edit")<br>
#### Delete: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/dependent%20dropdown%20delete.png "Dependent Dropdown Delete")<br>

### Multidependent dropdown <br>
#### Homepage: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/Multidependent%20dropdown.png "Multidependent dropdown homepage")<br>
#### Add: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/Multidependent%20dropdown%20add.png "Dependent Dropdown Add")<br>
#### Edit: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/Multidependent%20dropdown%20edit.png "Multidependent dropdown Edit")<br>
### Delete: <br>
![alt-text](https://github.com/satyakresna/crud-multidropdown/blob/old-cookie-plugin/screenshots/Multidependent%20dropdown%20delete.png "Multidependent dropdown Delete")<br>

## Short description
This source code contain Dependent Dropdown and Multiple Dropdown. <br>
Controller `Mahasiswa` for Dependent Dropdown. <br>
Controller `SKKM` for Multiple Dropdown. <br>

## Step by step tu run crud-multidropdown
1. Copy folder `system` from [CodeIgniter](https://codeigniter.com/download) that you have downloaded and put it in folder crud-multidropdown.
See the following crud-multidropdown structure below:
```
crud-multidropdown
|__application
|__assets
|__sql
|__system
|__.gitignore
|__.htaccess
|__composer.json
|__index.php
|__README.md
```
2. Import file `cidropdown.sql` from folder `sql/cidropdown.sql` to phpmyadmin.
3. Type `localhost/crud-multidropdown` in your browser and choose option:

  * Dependent Dropdown (Mahasiswa)
  * Multiple Dropdown (SKKM)

4. I already add file `jquery.min.js` to folder `assets`. This function make AJAX can run.

## Branch
I divide to several branch:
1. master (AJAX only no CSRF)
2. old-cookie-plugin (AJAX and CSRF, using old cookie plugin)
3. new-cookie-plugin (AJAX and CSRF, using new cookie plugin)

You can choose which one is suitable with your project.
