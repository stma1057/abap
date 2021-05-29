@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View Admin'
define root view entity ZHSKA_C_MS_STUDENT_ADMIN as projection on ZHSKA_I_MS_STUDENT {
    key StudentGuid,
    StudentId,
    FirstName,
    LastName,
    IsMatriculated
}
