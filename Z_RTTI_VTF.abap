*&---------------------------------------------------------------------*
*& Report  Z_RTTI_VTF
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT Z_RTTI_VTF. 
 
TYPES in_type TYPE i. 
 
DATA: in_var   TYPE in_type, 
      descr_ref TYPE ref to cl_abap_typedescr. 
 
START-OF-SELECTION. 
  descr_ref = cl_abap_typedescr=>describe_by_data( in_var ). 
 
  WRITE: / 'Nome de tipo absoluto:', descr_ref->absolute_name. 
  WRITE: / 'Categoria de dado:', descr_ref->type_kind. 
  WRITE: / 'Tamanho:', descr_ref->length. 
  WRITE: / 'Decimais:', descr_ref->decimals.