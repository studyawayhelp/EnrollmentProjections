select
    enrollment.application_id
    ,program.Program_Name
    ,enrollment.Application_Status
    ,deposit.App_Material_Received
    , program.Program_Id
FROM
    tbl_Applications enrollment
    INNER JOIN tbl_Programs program ON program.Program_Id = enrollment.Program_Id
    LEFT OUTER JOIN tbl_App_Mats_Received deposit on deposit.application_id=enrollment.Application_Id
    
WHERE
    Program_Term IN ('Fall','Winter Break-Fall', 'Fall Break')
    AND Program_Year IN ('2020')
    AND Program_Type_ID IN (6)
    AND program.Group_ID IN (124)
    AND [Program_Name] NOT LIKE '%Test%'
    AND deposit.App_Material_Id IN ('325','326','327','317','318','319')
    