#!/usr/bin/env python
# encoding utf-8
"""
Dictionary of dictionaries, which hold the default values used to fill
in NULL cells before uploading to SQLite.  These defaults have the
effect of overriding the defaults in the SQLite table definition for
the load process.
"""


TABLE_NAMES = {
    'tls201': 'tls201_appln',
    'tls202': 'tls202_appln_title',
    'tls203': 'tls203_appln_abstr',
    'tls204': 'tls204_appln_prior',
    'tls205': 'tls205_tech_rel',
    'tls206': 'tls206_person',
    'tls207': 'tls207_pers_appln',
    'tls209': 'tls209_appln_ipc',
    'tls210': 'tls210_appln_n_cls',
    'tls211': 'tls211_pat_publn',
    'tls212': 'tls212_citation',
    'tls214': 'tls214_npl_publn',
    'tls215': 'tls215_citn_categ',
    'tls216': 'tls216_appln_contn',
    'tls222': 'tls222_appln_jp_class',
    'tls223': 'tls223_appln_docus',
    'tls224': 'tls224_appln_cpc',
    'tls226': 'tls226_person_orig',
    'tls227': 'tls227_pers_publn',
    'tls228': 'tls228_docdb_fam_citn',
    'tls229': 'tls229_appln_nace2',
    'tls230': 'tls230_appln_techn_field',
    'tls231': 'tls231_inpadoc_legal_event',
    'tls801': 'tls801_country',
    'tls803': 'tls803_legal_event_code',
    'tls901': 'tls901_techn_field_ipc',
    'tls902': 'tls902_ipc_nace2',
    'tls904': 'tls904_nuts',
    'tls906': 'tls906_person'}

TLS201_APPLN_DEFAULTS = {
    'appln_id': 0,
    'appln_auth': '',
    'appln_nr': '',
    'appln_kind': '  ',
    'appln_filing_date': '9999-12-31',
    'appln_filing_year': 9999,
    'appln_nr_epodoc': '',
    'appln_nr_original': '',
    'ipr_type': '',
    'internat_appln_id': 0,
    'int_phase': 'N',
    'reg_phase': 'N',
    'nat_phase': 'N',
    'earliest_filing_date': '9999-12-31',
    'earliest_filing_year': 9999,
    'earliest_filing_id': 0,
    'earliest_publn_date': '9999-12-31',
    'earliest_publn_year': 9999,
    'earliest_pat_publn_id': 0,
    'granted': 0,
    'docdb_family_id': 0,
    'inpadoc_family_id': 0,
    'docdb_family_size': 0,
    'nb_citing_docdb_fam': 0,
    'nb_applicants': 0,
    'nb_inventors': 0
}

TLS202_APPLN_TITLE_DEFAULTS = {
    'appln_id': 0,
    'appln_title_lg': '',
    'appln_title': ''
}

TLS203_APPLN_ABSTR_DEFAULTS = {
    'appln_id': 0,
    'appln_abstract_lg': '',
    'appln_abstract': ''
}

TLS204_APPLN_PRIOR_DEFAULTS = {
    'appln_id': 0,
    'prior_appln_id': 0,
    'prior_appln_seq_nr': 0
}

TLS205_TECH_REL_DEFAULTS = {
    'appln_id': 0,
    'tech_rel_appln_id': 0
}

TLS206_PERSON_DEFAULTS = {
    'person_id': 0,
    'person_name': '',
    'person_address': '',
    'person_ctry_code': '',
    'doc_std_name_id': 0,
    'doc_std_name': '',
    'psn_id': 0,
    'psn_name': '',
    'psn_level': 0,
    'psn_sector': ''
}

TLS207_PERS_APPLN_DEFAULTS = {
    'person_id': 0,
    'appln_id': 0,
    'applt_seq_nr': 0,
    'invt_seq_nr': 0,
}

TLS209_APPLN_IPC_DEFAULTS = {
    'appln_id': 0,
    'ipc_class_symbol': '',
    'ipc_class_level': '',
    'ipc_version': '9999-12-31',
    'ipc_value': '',
    'ipc_position': '',
    'ipc_gener_auth': ''
}

TLS210_APPLN_N_CLS_DEFAULTS = {
    'appln_id': 0,
    'nat_class_symbol': ''
}

TLS211_PAT_PUBLN_DEFAULTS = {
    'pat_publn_id': 0,
    'publn_auth': '',
    'publn_nr': '',
    'publn_nr_original': '',
    'publn_kind': '',
    'appln_id': 0,
    'publn_date': '9999-12-31',
    'publn_lg': '',
    'publn_first_grant': 0,
    'publn_claims': 0
}

TLS212_CITATION_DEFAULTS = {
    'pat_publn_id': 0,
    'citn_id': 0,
    'citn_origin': '',
    'cited_pat_publn_id': 0,
    'cited_appln_id': 0,
    'pat_citn_seq_nr': 0,
    'cited_npl_publn_id': 0,
    'npl_citn_seq_nr': 0,
    'citn_gener_auth': ''    
}

TLS214_NPL_PUBLN_DEFAULTS = {
    'npl_publn_id': 0,
    'npl_type': '',
    'npl_biblio': '',
    'npl_author': '',
    'npl_title1': '',
    'npl_title2': '',
    'npl_editor': '',
    'npl_volume': '',
    'npl_issue': '',
    'npl_publn_date': '',
    'npl_publn_end_date': '',
    'npl_publisher': '',
    'npl_page_first': '',
    'npl_page_last': '',
    'npl_abstract_nr': '',
    'npl_doi': '',
    'npl_isbn': '',
    'npl_issn': '',
    'online_availability': '',   
    'online_classification': '',
    'online_search_date': ''
}

TLS215_CITN_CATEG_DEFAULTS = {
    'pat_publn_id': 0,
    'citn_id': 0,
    'citn_categ': '',
}


TLS216_APPLN_CONTN_DEFAULTS = {
    'appln_id': 0,
    'parent_appln_id': 0,
    'contn_type': '',
}

TLS222_APPLN_JP_CLASS_DEFAULTS = {
    'appln_id': 0,
    'jp_class_scheme': '',
    'jp_class_symbol': '',
}

TLS223_APPLN_DOCUS_DEFAULTS = {
    'appln_id': 0,
    'docus_class_symbol': '',
}

TLS224_APPLN_CPC_DEFAULTS = {
    'appln_id': 0,
    'cpc_class_symbol': '',
    'cpc_scheme': '',
    'cpc_version': '9999-12-31',
    'cpc_value': '',
    'cpc_position': '',
    'cpc_gener_auth': '' 
}

TLS226_PERSON_ORIG_DEFAULTS = {
    'person_orig_id': 0,
    'person_id': 0,
    'source': '',
    'source_version': '',
    'name_freeform': '',
    'last_name': '',
    'first_name': '',
    'middle_name': '',
    'address_freeform': '',
    'address_1': '',
    'address_2': '',
    'address_3': '',
    'address_4': '',
    'address_5': '',
    'street': '',
    'city': '',
    'zip_code': '',
    'state': '',
    'person_ctry_code': '',
    'residence_ctry_code': '',
    'role': ''
}

TLS227_PERS_PUBLN_DEFAULTS = {
    'person_id': 0,
    'pat_publn_id': 0,
    'applt_seq_nr': 0,
    'invt_seq_nr': 0
}

TLS228_DOCDB_FAM_CITN_DEFAULTS = {
    'docdb_family_id': 0,
    'cited_docdb_family_id': 0,
}

TLS229_APPLN_NACE2_DEFAULTS = {
    'appln_id': 0,
    'nace2_code': '',
    'weight': 1,
}

TLS230_APPLN_TECHN_FIELD_DEFAULTS = {
    'appln_id': 0,
    'techn_field_nr': 0,
    'weight': 1,
}

TLS231_INPADOC_LEGAL_EVENT_DEFAULTS = {
    'appln_id': 0,
    'event_seq_nr': 0,
    'event_type': '   ',
    'event_auth': '  ',
    'event_code': '',
    'event_filing_date':'9999-12-31',
    'event_publn_date': '9999-12-31',
    'event_effective_date': '9999-12-31',
    'event_text': '',
    'ref_doc_auth': '  ',
    'ref_doc_nr': '',
    'ref_doc_kind': '  ',
    'ref_doc_date': '9999-12-31',
    'ref_doc_text': '',
    'party_type': '   ',
    'party_seq_nr': 0,
    'party_new': '',
    'party_old': '',
    'spc_nr': '',
    'spc_filing_date': '9999-12-31',
    'spc_patent_expiry_date': '9999-12-31',
    'spc_extension_date': '9999-12-31',
    'spc_text': '',
    'designated_states': '',
    'extension_states': '',
    'fee_country': '  ',
    'fee_payment_date': '9999-12-31',
    'fee_renewal_year': '9999',
    'fee_text': '',
    'lapse_country': '  ',
    'lapse_date': '9999-12-31',
    'lapse_text': '',
    'reinstate_country': '  ',
    'reinstate_date': '9999-12-31',
    'reinstate_text': '',
    'class_scheme': '',
    'class_symbol': '',
}

TLS801_COUNTRY_DEFAULTS = {
    'ctry_code': '',
    'iso_alpha3': '',
    'st3_name': '',
    'state_indicator': '',
    'continent': '',
    'eu_member': '',
    'epo_member': '',
    'oecd_member': '',
    'discontinued': ''
}

TLS803_LEGAL_EVENT_CODE_DEFAULTS = {
    'event_auth': '',
    'event_code': '',
    'event_impact': '',
    'event_descr': '',
    'event_descr_orig': '',
    'lecg_name': '',
    'lecg_descr': '',
}


TLS901_TECHN_FIELD_IPC_DEFAULTS = {
    'ipc_maingroup_symbol': '',
    'techn_field_nr': 0,
    'techn_sector': '',
    'techn_field': ''
}

TLS902_IPC_NACE2_DEFAULTS = {
    'ipc': '',
    'not_with_ipc': '',
    'unless_with_ipc': '',
    'nace2_code': '',
    'nace2_weight': 1,
    'nace2_descr': ''
}

TLS904_NUTS_DEFAULTS = {
    'nuts3': '',
    'nuts3_name': ''
}

TLS906_PERSON_DEFAULTS = {
    'person_id ': 0,
    'person_name': '',
    'person_address': '',
    'person_ctry_code': '',
    'nuts': '',
    'nuts_level': 9,
    'doc_std_name_id': 0,
    'doc_std_name': '',
    'psn_id': 0,
    'psn_name': '',
    'psn_level': 0,
    'psn_sector': '',
    'han_id': 0,
    'han_name': '',
    'han_harmonized': 0
}

COLUMN_DEFAULTS = {
    'tls201': TLS201_APPLN_DEFAULTS,
    'tls202': TLS202_APPLN_TITLE_DEFAULTS,
    'tls203': TLS203_APPLN_ABSTR_DEFAULTS,
    'tls204': TLS204_APPLN_PRIOR_DEFAULTS,
    'tls205': TLS205_TECH_REL_DEFAULTS,
    'tls206': TLS206_PERSON_DEFAULTS,
    'tls207': TLS207_PERS_APPLN_DEFAULTS,
    'tls209': TLS209_APPLN_IPC_DEFAULTS,
    'tls210': TLS210_APPLN_N_CLS_DEFAULTS,
    'tls211': TLS211_PAT_PUBLN_DEFAULTS,
    'tls212': TLS212_CITATION_DEFAULTS,
    'tls214': TLS214_NPL_PUBLN_DEFAULTS,
    'tls215': TLS215_CITN_CATEG_DEFAULTS,
    'tls216': TLS216_APPLN_CONTN_DEFAULTS,
    'tls222': TLS222_APPLN_JP_CLASS_DEFAULTS,
    'tls223': TLS223_APPLN_DOCUS_DEFAULTS,
    'tls224': TLS224_APPLN_CPC_DEFAULTS,
    'tls226': TLS226_PERSON_ORIG_DEFAULTS,
    'tls227': TLS227_PERS_PUBLN_DEFAULTS,
    'tls228': TLS228_DOCDB_FAM_CITN_DEFAULTS,
    'tls229': TLS229_APPLN_NACE2_DEFAULTS,
    'tls230': TLS230_APPLN_TECHN_FIELD_DEFAULTS,
    'tls231': TLS231_INPADOC_LEGAL_EVENT_DEFAULTS,
    'tls801': TLS801_COUNTRY_DEFAULTS,
    'tls803': TLS803_LEGAL_EVENT_CODE_DEFAULTS,
    'tls901': TLS901_TECHN_FIELD_IPC_DEFAULTS,
    'tls902': TLS902_IPC_NACE2_DEFAULTS,
    'tls904': TLS904_NUTS_DEFAULTS,
    'tls906': TLS906_PERSON_DEFAULTS
}
