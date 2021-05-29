@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View'
define root view entity ZHSKA_C_MS_STUDENT as projection on ZHSKA_I_MS_STUDENT {
    key StudentGuid,
    StudentId,
    FirstName,
    LastName,
    IsMatriculated
}
