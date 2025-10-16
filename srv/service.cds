using { Student_Details_Joule as my } from '../db/schema.cds';

@path: '/service/student_Details_Joule'
@requires: 'authenticated-user'
service student_Details_JouleSrv {
  @odata.draft.enabled
  entity Schools as projection on my.Schools;
  entity Students as projection on my.Students;
}