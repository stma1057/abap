@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data Definition'
@Metadata.allowExtensions: true
define root view entity ZHSKA_I_MS_STUDENT as select from zhska_ms_stud_01 {

    key student_guid as StudentGuid,
    key student_id as StudentId,
    firstname as FirstName,
    lastname as LastName
}
