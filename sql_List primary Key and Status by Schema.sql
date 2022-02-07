/*List primary Key and Status by Schema*/
SELECT t2.table_name, t3.constraint_name, t3.status, t1.column_name, t3.constraint_type FROM all_cons_columns T1
  INNER JOIN all_all_tables T2 ON t2.table_name = t1.table_name
  INNER JOIN all_constraints T3 ON t3.constraint_name = t1.constraint_name
WHERE t2.owner =:OWNER AND T3.CONSTRAINT_TYPE = 'P'
ORDER BY 1;

/*List all indexes in a Schema*/
SELECT T1.TABLE_NAME, t1.index_name, t1.index_type, t1.uniqueness, t1.status, t2.column_name FROM all_indexes T1
INNER JOIN all_ind_columns T2 ON t2.index_name = t1.index_name
WHERE t1.table_owner = :Owner
ORDER BY 1;