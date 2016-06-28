# $Id: import.php $
# TomatoCart Open Source Shopping Cart Solutions
# http://www.tomatocart.com
#
# Copyright (c) 2009-2010 Wuxi Elootec Technology Co., Ltd
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License v2 (1991)
# as published by the Free Software Foundation.





$version =  array();

$version =  $osC_Cache->getCache();
if ($handle =  opendir('data/src')) {
while (false ! = = ($file = readdir($handle))) {
if ($file ! =  "." && $file != "..") {
$version[] =  $file;



$error =  false;
$response =  array();

$version =  $_REQUEST['version'];

$error =  true;

$response =  array('success' => false, 'feedback' => 'Versions can not be empty !' );

if ($error = == false) {

$response =  array('success' => true, 'feedback' => 'import English files success !');



if($handle =  @opendir($path)) {
while (false ! = = ($file = readdir($handle))) {
if ( $file ! =  '.' and $file != '..' ) {
$file_name =  explode(".", $file);

if ($file_name[1] = = 'xml' || $file_name[1] == 'php') {
$languages_id =  1;

$response =  array('success' => false, 'feedback' => 'Can not open the directory ' . $path . '!');




$group =  $file_name;

$dir_name =  explode( "/", $file );
$num =  count($dir_name);

for( $i = 0; $i<$num-1; $i++ ) {
if($dir_name[$i] = = 'modules') {
$group =  '';
$group . =  $dir_name[$i].'-';
$group . =  $file_name;

if( $group = = 'en_US' ) {
$group = 'general';

$file_handle =  fopen( $file, "rb" );

if(preg_match( '/ = /' , $line = fgets($file_handle) )) {
$line =  explode("=", $line, 2);

$key =  @trim($line[0]);
$value =  @rtrim($line[1]);


$xml =  @simplexml_load_file($file);

$group =  $child->group;

$group . =  '-' . $file_name;

$key =  $child->key;
$value =  $child->value;


$file_handle =  fopen( $file, "rb" );

if(preg_match( '/ = /' , $line = fgets($file_handle) )){
$line =  explode( "=", $line, 2 );
$group =  $file_name;

if($group = = 'en_US' ){
$group =  'general';

$key =  @trim($line[0]);
$value =  @rtrim($line[1]);


$file_handle =  fopen( $file, "rb" );

if(preg_match( '/ = /' , $line = fgets($file_handle) )){
$line =  explode( "=", $line, 2 );
$group =  'general';

$key =  @trim($line[0]);
$value =  @rtrim($line[1]);




$languages_id =  1;
$xml =  @simplexml_load_file($file);

$error =  true;
if ($child->getName() = ='tables') {
$error =  false;

if ($error = == false) {
$group =  'table-' . $child->meta->name;

$key =  $child->meta->key_field . '-' . $definition->key;
$data =  array();

$node_name =  $children->getName();
if($node_name ! =  'key'){
$children =  ' ' . $children;
$data[$node_name] =  $children;

$value =  serialize($data);




$Qimport =  $osC_Database->query("select definition_key from :table_languages_definitions where definition_key=:key and site=:site and content_group=:group");

$result =  $Qimport->value('definition_key');

$Qimport =  $osC_Database->query("insert into :table_languages_definitions (site, content_group, definition_key, definition_version) values (:site, :group, :key, :version)");

$Qimport =  $osC_Database->query("select languages_definitions_id from :table_languages_definitions where definition_key=:key and site=:site and content_group=:group");

$languages_definitions_id =  $Qimport->value('languages_definitions_id');

$Qversion =  $osC_Database->query("select version from :table_languages_definitions_version where languages_definitions_id = :languages_definitions_id and version = :version");

$version_data =  $Qversion->value('version');

$Qversion =  $osC_Database->query("insert into :table_languages_definitions_version (languages_definitions_id, version, date_added) values (:languages_definitions_id, :version, now())");

$Qimport =  $osC_Database->query("select languages_definitions_history_id from :table_languages_definitions_history where languages_definitions_id=:languages_definitions_id and languages_id=:languages_id");

$languages_definitions_history_id =  $Qimport->value('languages_definitions_history_id');

$Qimport =  $osC_Database->query("insert into :table_languages_definitions_history ( languages_definitions_id, languages_id, users_id, definition_value, date_added) values ( :languages_definitions_id, :languages_id, 0, :value, now())");

