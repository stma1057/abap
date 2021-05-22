*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lhc_student DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS:
      validate_student_id FOR VALIDATE ON SAVE IMPORTING keys FOR Student~validateStudentId.


ENDCLASS.

CLASS lhc_student IMPLEMENTATION.

  METHOD validate_student_id.

    READ ENTITIES OF zhska_i_ms_student IN LOCAL MODE
    ENTITY Student
        FIELDS ( StudentId )
        WITH CORRESPONDING #( keys )
    RESULT DATA(lt_Students).

    SELECT FROM zhska_ms_stud_01
        FIELDS student_id
        INTO TABLE @DATA(student_ids).

    LOOP AT lt_students INTO DATA(student).

        IF line_exists( student_ids[ student_id = student-StudentId ] )
        OR student-StudentId IS INITIAL.

          APPEND VALUE #( studentguid = student-StudentGUID ) TO failed-student.
          APPEND VALUE #( studentguid = student-StudentGUID
                          %msg = new_message(
                            id          = 'ZHSKA_MS_MESSAGES'
                            number      = 001
                            severity    = if_abap_behv_message=>severity-error
                            v1          = student-StudentId
*                            v2          =
*                            v3          =
*                            v4          =
                          )
                          %element-studentid = if_abap_behv=>mk-on )
            TO reported-student.

        ELSE.

          APPEND VALUE #( student_id = student-StudentId ) TO student_ids.

        ENDIF.

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
