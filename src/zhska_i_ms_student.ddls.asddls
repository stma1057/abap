@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data Definition'
define view entity ZHSKA_I_MS_STUDENT as select from zhska_ms_student {
    key student_id as StudentId,
    name as Name
}
