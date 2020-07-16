select
    enrollment.application_id
    ,program.Program_Name
    , program.Program_Id
FROM
    tbl_Applications enrollment
    INNER JOIN tbl_Programs program ON program.Program_Id = enrollment.Program_Id
    LEFT OUTER JOIN tbl_App_Mats_Received deposit on deposit.application_id=enrollment.Application_Id
    
WHERE
    Program_Term IN ('Maymester','Summer')
    AND Program_Year IN ('2021')
    AND Program_Type_ID IN (6)
    AND program.Group_ID IN (103,104)
    and [Program_Name] not like '%Test%'
    and [Application_Status] not like '%withdrawn%'
    and [Application_Status] not like '%rejected%'
    AND deposit.App_Material_Id IN ('325','326','327','317','318','319')
    