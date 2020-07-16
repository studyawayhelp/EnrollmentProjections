select participation.application_id, program.Program_Name, participation.Application_Status, program.Program_Id

from tbl_Applications participation
    inner join tbl_Programs program ON program.Program_Id = participation.Program_Id

where
Program_Term in ('Fall') and Program_Year in ('2020')
and Program_Type_ID in (6)
and program.Group_ID in (104,103,124)
and [Program_Name] not like '%Test%'
and [Application_Status] not like '%withdrawn%'
and [Application_Status] not like '%rejected%'