CREATE TABLE tls201_appln (
	appln_id INTEGER NOT NULL DEFAULT 0 PRIMARY KEY,
	appln_auth CHAR(2) NOT NULL DEFAULT '',
	appln_nr VARCHAR(15) NOT NULL DEFAULT '',
	appln_kind CHAR(2) NOT NULL DEFAULT '  ',
	appln_filing_date TEXT NOT NULL DEFAULT '9999-12-31',
	appln_filing_year SMALLINT NOT NULL DEFAULT 9999,
	appln_nr_epodoc VARCHAR(20)  NOT NULL DEFAULT '',
	appln_nr_original VARCHAR(100) NOT NULL DEFAULT '',
	ipr_type CHAR(2) NOT NULL DEFAULT '',
	internat_appln_id INTEGER NOT NULL DEFAULT 0,
	int_phase CHAR(1) NOT NULL DEFAULT 'N',
	reg_phase CHAR(1) NOT NULL DEFAULT 'N',
	nat_phase CHAR(1) NOT NULL DEFAULT 'N',
	earliest_filing_date TEXT NOT NULL DEFAULT '9999-12-31',
	earliest_filing_year SMALLINT NOT NULL DEFAULT 9999,
	earliest_filing_id INTEGER NOT NULL DEFAULT 0,
	earliest_publn_date TEXT NOT NULL DEFAULT '9999-12-31',
	earliest_publn_year SMALLINT NOT NULL DEFAULT 9999,
	earliest_pat_publn_id INTEGER NOT NULL DEFAULT 0,
	granted TINYINT NOT NULL DEFAULT 0,
	docdb_family_id INTEGER NOT NULL DEFAULT 0,
	inpadoc_family_id INTEGER NOT NULL DEFAULT 0,
	docdb_family_size SMALLINT NOT NULL DEFAULT 0,
	nb_citing_docdb_fam SMALLINT NOT NULL DEFAULT 0,
	nb_applicants SMALLINT NOT NULL DEFAULT 0,
	nb_inventors SMALLINT NOT NULL DEFAULT 0
);

CREATE TABLE tls202_appln_title (
	appln_id INTEGER NOT NULL DEFAULT 0 PRIMARY KEY,
	appln_title_lg CHAR(2) NOT NULL DEFAULT '',
	appln_title TEXT NOT NULL
);

CREATE TABLE tls203_appln_abstr (
	appln_id INTEGER NOT NULL DEFAULT 0 PRIMARY KEY,
	appln_abstract_lg CHAR(2) NOT NULL DEFAULT '',
	appln_abstract TEXT NOT NULL DEFAULT ''
);

CREATE TABLE tls204_appln_prior (
	appln_id INTEGER NOT NULL DEFAULT 0,
	prior_appln_id INTEGER NOT NULL DEFAULT 0,
	prior_appln_seq_nr SMALLINT NOT NULL DEFAULT 0,
	PRIMARY KEY (appln_id, prior_appln_id)
);

CREATE TABLE tls205_tech_rel (
	appln_id INTEGER NOT NULL DEFAULT 0,
	tech_rel_appln_id INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY (appln_id, tech_rel_appln_id)
);

CREATE TABLE tls206_person (
	person_id INTEGER NOT NULL DEFAULT 0 PRIMARY KEY,
	person_name NVARCHAR(500) NOT NULL DEFAULT '',
	person_address NVARCHAR(1000) NOT NULL DEFAULT '',
	person_ctry_code CHAR(2) NOT NULL DEFAULT '',
	doc_std_name_id INTEGER NOT NULL DEFAULT 0,
	doc_std_name NVARCHAR(500) NOT NULL DEFAULT '',
	psn_id INTEGER NOT NULL DEFAULT 0,
	psn_name VARCHAR(500) NOT NULL DEFAULT '',
	psn_level TINYINT NOT NULL DEFAULT 0,
	psn_sector VARCHAR(50) NOT NULL DEFAULT ''
);

CREATE TABLE tls207_pers_appln (
	person_id INTEGER NOT NULL DEFAULT 0,
	appln_id INTEGER NOT NULL DEFAULT 0,
	applt_seq_nr SMALLINT NOT NULL DEFAULT 0,
	invt_seq_nr SMALLINT NOT NULL DEFAULT 0,
	PRIMARY KEY (person_id, appln_id, applt_seq_nr, invt_seq_nr)
);

CREATE TABLE tls209_appln_ipc (
	appln_id INTEGER NOT NULL DEFAULT 0,
	ipc_class_symbol VARCHAR(15) NOT NULL DEFAULT '',
	ipc_class_level CHAR(1) NOT NULL DEFAULT '',
	ipc_version TEXT NOT NULL DEFAULT '9999-12-31',
	ipc_value CHAR(1) NOT NULL DEFAULT '',
	ipc_position CHAR(1) NOT NULL DEFAULT '',
	ipc_gener_auth CHAR(2) NOT NULL DEFAULT '',
	PRIMARY KEY (appln_id, ipc_class_symbol)
);

CREATE TABLE tls210_appln_n_cls (
	appln_id INTEGER NOT NULL DEFAULT 0,
	nat_class_symbol VARCHAR(15) NOT NULL DEFAULT '',
	PRIMARY KEY (appln_id, nat_class_symbol)
);

CREATE TABLE tls211_pat_publn (
	pat_publn_id INTEGER NOT NULL DEFAULT 0 PRIMARY KEY,
	publn_auth CHAR(2) NOT NULL DEFAULT '',
	publn_nr VARCHAR(15) NOT NULL DEFAULT '',
	publn_nr_original VARCHAR(100) NOT NULL DEFAULT '',
	publn_kind CHAR(2) NOT NULL DEFAULT '',
	appln_id INTEGER NOT NULL DEFAULT 0,
	publn_date TEXT NOT NULL DEFAULT '9999-12-31',
	publn_lg CHAR(2) NOT NULL DEFAULT '',
	publn_first_grant TINYINT NOT NULL DEFAULT '0',
	publn_claims SMALLINT NOT NULL DEFAULT '0'
);

CREATE TABLE tls212_citation (
	pat_publn_id INTEGER NOT NULL DEFAULT 0,
	citn_id SMALLINT NOT NULL DEFAULT 0,
	citn_origin CHAR(3) NOT NULL DEFAULT '',
	cited_pat_publn_id INTEGER NOT NULL DEFAULT 0,
	cited_appln_id INTEGER NOT NULL DEFAULT 0,
	pat_citn_seq_nr SMALLINT NOT NULL DEFAULT 0,
	cited_npl_publn_id INTEGER NOT NULL DEFAULT 0,
	npl_citn_seq_nr SMALLINT NOT NULL DEFAULT 0,
	citn_gener_auth CHAR(2) NOT NULL DEFAULT '',	
	PRIMARY KEY (pat_publn_id, citn_id)
);

CREATE TABLE tls214_npl_publn (
	npl_publn_id INTEGER NOT NULL DEFAULT 0,
	npl_type CHAR(1) NOT NULL DEFAULT '',
	npl_biblio TEXT NOT NULL DEFAULT '',
	npl_author NVARCHAR(1000) NOT NULL DEFAULT '',
	npl_title1 NVARCHAR(1000) NOT NULL DEFAULT '',
	npl_title2 NVARCHAR(1000) NOT NULL DEFAULT '',
	npl_editor NVARCHAR(500) NOT NULL DEFAULT '',
	npl_volume VARCHAR(50) NOT NULL DEFAULT '',
	npl_issue VARCHAR(50) NOT NULL DEFAULT '',
	npl_publn_date VARCHAR(8) NOT NULL DEFAULT '',
	npl_publn_end_date VARCHAR(8) NOT NULL DEFAULT '',
	npl_publisher NVARCHAR(500) NOT NULL DEFAULT '',
	npl_page_first VARCHAR(200) NOT NULL DEFAULT '',
	npl_page_last VARCHAR(200) NOT NULL DEFAULT '',
	npl_abstract_nr VARCHAR(50) NOT NULL DEFAULT '',
	npl_doi VARCHAR(500) NOT NULL DEFAULT '',
	npl_isbn VARCHAR(30) NOT NULL DEFAULT '',
	npl_issn VARCHAR(30) NOT NULL DEFAULT '',
	online_availability VARCHAR(500) NOT NULL DEFAULT '',
	online_classification VARCHAR(35) NOT NULL DEFAULT '',
	online_search_date VARCHAR(8) NOT NULL DEFAULT '',
	PRIMARY KEY (npl_publn_id)
);

CREATE TABLE tls215_citn_categ (
	pat_publn_id INTEGER NOT NULL DEFAULT 0,
	citn_id SMALLINT NOT NULL DEFAULT 0,
	citn_categ CHAR(1) NOT NULL DEFAULT '',
	PRIMARY KEY (pat_publn_id, citn_id, citn_categ)
);

CREATE TABLE tls216_appln_contn (
	appln_id INTEGER NOT NULL DEFAULT 0,
	parent_appln_id INTEGER NOT NULL DEFAULT 0,
	contn_type CHAR(3) NOT NULL DEFAULT '',
	PRIMARY KEY (appln_id, parent_appln_id)
);

CREATE TABLE tls222_appln_jp_class (
	appln_id INTEGER NOT NULL DEFAULT 0,
	jp_class_scheme VARCHAR(5) NOT NULL DEFAULT '',
	jp_class_symbol VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (appln_id, jp_class_scheme, jp_class_symbol)
);

CREATE TABLE tls223_appln_docus (
	appln_id INTEGER NOT NULL DEFAULT 0,
	docus_class_symbol VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (appln_id, docus_class_symbol)
);

CREATE TABLE tls224_appln_cpc (
	appln_id INTEGER NOT NULL DEFAULT 0,
	cpc_class_symbol VARCHAR(19) NOT NULL DEFAULT '',
	cpc_scheme VARCHAR(5) NOT NULL DEFAULT '',
	cpc_version TERXT NOT NULL DEFAULT '9999-12-31',
	cpc_value CHAR(1) NOT NULL DEFAULT '',
	cpc_position CHAR(1) NOT NULL DEFAULT '',
	cpc_gener_auth CHAR(2) NOT NULL DEFAULT '',
	PRIMARY KEY (appln_id, cpc_class_symbol, cpc_scheme)
);

CREATE TABLE tls226_person_orig(
	person_orig_id INTEGER NOT NULL DEFAULT 0 PRIMARY KEY,
	person_id INTEGER NOT NULL DEFAULT 0,
	source CHAR(5) NOT NULL DEFAULT '',
	source_version VARCHAR(10) NOT NULL DEFAULT '',
	name_freeform NVARCHAR(500) NOT NULL DEFAULT '',
	last_name NVARCHAR(500) NOT NULL DEFAULT '',
	first_name NVARCHAR(500) NOT NULL DEFAULT '',
	middle_name NVARCHAR(500) NOT NULL DEFAULT '',
	address_freeform NVARCHAR(1000) NOT NULL DEFAULT '',
	address_1 NVARCHAR(500) NOT NULL DEFAULT '',
	address_2 NVARCHAR(500) NOT NULL DEFAULT '',
	address_3 NVARCHAR(500) NOT NULL DEFAULT '',
	address_4 NVARCHAR(500) NOT NULL DEFAULT '',
	address_5 NVARCHAR(500) NOT NULL DEFAULT '',
	street NVARCHAR(500) NOT NULL DEFAULT '',
	city NVARCHAR(200) NOT NULL DEFAULT '',
  	zip_code NVARCHAR(30) NOT NULL DEFAULT '',
	state CHAR(2) NOT NULL DEFAULT '',
	person_ctry_code CHAR(2) NOT NULL DEFAULT '',
	residence_ctry_code CHAR(2) NOT NULL DEFAULT '',
	role VARCHAR(2) NOT NULL DEFAULT ''
);

CREATE TABLE tls227_pers_publn (
	person_id INTEGER NOT NULL DEFAULT 0,
	pat_publn_id INTEGER NOT NULL DEFAULT 0,
	applt_seq_nr SMALLINT NOT NULL DEFAULT 0,
	invt_seq_nr SMALLINT NOT NULL DEFAULT 0,
	PRIMARY KEY (person_id, pat_publn_id, applt_seq_nr, invt_seq_nr)
);

CREATE TABLE tls228_docdb_fam_citn (
	docdb_family_id INTEGER NOT NULL DEFAULT 0,
	cited_docdb_family_id INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY (docdb_family_id, cited_docdb_family_id)
);

CREATE TABLE tls229_appln_nace2 (
	appln_id INTEGER NOT NULL DEFAULT 0,
	nace2_code VARCHAR(5) NOT NULL DEFAULT '',
	weight REAL NOT NULL DEFAULT 1,
	PRIMARY KEY (appln_id, nace2_code)
);

CREATE TABLE tls230_appln_techn_field (
	appln_id INTEGER NOT NULL DEFAULT 0,
	techn_field_nr TINYINT NOT NULL DEFAULT 0,
	weight REAL NOT NULL DEFAULT 1,
	PRIMARY KEY (appln_id, techn_field_nr)
);

CREATE TABLE tls231_inpadoc_legal_event (
	appln_id INTEGER NOT NULL DEFAULT 0,
	event_seq_nr SMALLINT NOT NULL default 0,
	event_type CHAR(3) NOT NULL DEFAULT '	',
	event_auth CHAR(2) NOT NULL DEFAULT '  ',
	event_code VARCHAR(4)  NOT NULL DEFAULT '',
	event_filing_date TEXT NOT NULL DEFAULT '9999-12-31',
	event_publn_date TEXT NOT NULL DEFAULT '9999-12-31',
	event_effective_date TEXT NOT NULL DEFAULT '9999-12-31',
	event_text VARCHAR(1000) NOT NULL DEFAULT '',
	ref_doc_auth CHAR(2) NOT NULL DEFAULT '  ',
	ref_doc_nr VARCHAR(20) NOT NULL DEFAULT '',
	ref_doc_kind CHAR(2) NOT NULL DEFAULT '  ',
	ref_doc_date TEXT NOT NULL DEFAULT '9999-12-31',
	ref_doc_text VARCHAR(1000) NOT NULL DEFAULT '',
	party_type VARCHAR(3) NOT NULL DEFAULT '	',
	party_seq_nr SMALLINT NOT NULL default 0,
	party_new VARCHAR(1000) NOT NULL DEFAULT '',
	party_old VARCHAR(1000) NOT NULL DEFAULT '',
	spc_nr VARCHAR(40) NOT NULL DEFAULT '',
	spc_filing_date TEXT NOT NULL DEFAULT '9999-12-31',
	spc_patent_expiry_date TEXT NOT NULL DEFAULT '9999-12-31',
	spc_extension_date TEXT NOT NULL DEFAULT '9999-12-31',
	spc_text VARCHAR(1000) NOT NULL DEFAULT '',
	designated_states VARCHAR(1000) NOT NULL DEFAULT '',
	extension_states VARCHAR(30) NOT NULL DEFAULT '',
	fee_country CHAR(2) NOT NULL DEFAULT '  ',
	fee_payment_date DATE NOT NULL DEFAULT '9999-12-31',
	fee_renewal_year SMALLINT NOT NULL default '9999',
	fee_text VARCHAR(1000) NOT NULL DEFAULT '',
	lapse_country CHAR(2) NOT NULL DEFAULT '  ',
	lapse_date TEXT NOT NULL DEFAULT '9999-12-31',
	lapse_text VARCHAR(1000) NOT NULL DEFAULT '',
	reinstate_country CHAR(2) NOT NULL DEFAULT '  ',
	reinstate_date TEXT NOT NULL DEFAULT '9999-12-31',
	reinstate_text VARCHAR(1000) NOT NULL DEFAULT '',
	class_scheme VARCHAR(4) NOT NULL DEFAULT '',
	class_symbol VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (appln_id, event_seq_nr)
);

CREATE TABLE tls801_country (
	ctry_code CHAR(2) NOT NULL DEFAULT '' PRIMARY KEY,
	iso_alpha3 CHAR(3) NOT NULL DEFAULT '',
	st3_name VARCHAR(100) NOT NULL DEFAULT '',
	state_indicator CHAR(1) NOT NULL DEFAULT '',
	continent VARCHAR(25) NOT NULL DEFAULT '',
	eu_member CHAR(1) NOT NULL DEFAULT '',
	epo_member CHAR(1) NOT NULL DEFAULT '',
	oecd_member CHAR(1) NOT NULL DEFAULT '',
	discontinued CHAR(1) NOT NULL DEFAULT ''
);

CREATE TABLE tls803_legal_event_code (
	event_auth CHAR(2) NOT NULL DEFAULT '',
	event_code VARCHAR(4) NOT NULL DEFAULT '',
	event_impact CHAR(1) NOT NULL DEFAULT '',
	event_descr VARCHAR(250) NOT NULL DEFAULT '',
	event_descr_orig VARCHAR(250) NOT NULL DEFAULT '',
	lecg_name VARCHAR(6) NOT NULL DEFAULT '',
	lecg_descr VARCHAR(250) NOT NULL DEFAULT '',
	PRIMARY KEY (event_auth, event_code)
);


CREATE TABLE tls901_techn_field_ipc (
	ipc_maingroup_symbol VARCHAR(8) NOT NULL DEFAULT '' PRIMARY KEY,
	techn_field_nr TINYINT NOT NULL DEFAULT 0,
	techn_sector VARCHAR(50) NOT NULL DEFAULT '',
	techn_field VARCHAR(50) NOT NULL DEFAULT ''
);

CREATE TABLE tls902_ipc_nace2 (
	ipc VARCHAR(8) NOT NULL DEFAULT '',
	not_with_ipc VARCHAR(8) NOT NULL DEFAULT '',
	unless_with_ipc varchar(8) NOT NULL DEFAULT '',
	nace2_code VARCHAR(5) NOT NULL DEFAULT '',
	nace2_weight TINYINT NOT NULL DEFAULT 1,
	nace2_descr VARCHAR(150) NOT NULL DEFAULT '',
	PRIMARY KEY (ipc, not_with_ipc, unless_with_ipc, nace2_code) 
);

CREATE TABLE tls904_nuts (
	nuts3 VARCHAR(5) NOT NULL DEFAULT '' PRIMARY KEY,
	nuts3_name VARCHAR(250) NOT NULL DEFAULT ''
);

CREATE TABLE tls906_person (
	person_id INTEGER NOT NULL DEFAULT 0 PRIMARY KEY,
	person_name NVARCHAR(500) NOT NULL DEFAULT '',
	person_address NVARCHAR(1000) NOT NULL DEFAULT '',
	person_ctry_code CHAR(2) NOT NULL DEFAULT '',
	nuts VARCHAR(5) NOT NULL DEFAULT '',
	nuts_level TINYINT NOT NULL DEFAULT 9,
	doc_std_name_id INTEGER NOT NULL DEFAULT 0,
	doc_std_name NVARCHAR(500) NOT NULL DEFAULT '',
	psn_id INTEGER NOT NULL DEFAULT 0,
	psn_name NVARCHAR(500) NOT NULL DEFAULT '',
	psn_level TINYINT NOT NULL DEFAULT 0,
	psn_sector VARCHAR(50) NOT NULL DEFAULT '',
	han_id INTEGER NOT NULL DEFAULT 0,
	han_name NVARCHAR(500) NOT NULL DEFAULT '',
	han_harmonized INTEGER NOT NULL DEFAULT 0
);
