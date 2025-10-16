namespace Student_Details_Joule;
using { cuid, managed } from '@sap/cds/common';

@assert.unique: { SchoolID_Unique: [schoolid] }
entity Schools : cuid, managed {
  schoolid: Integer @mandatory;
  SchoolName: String(100);
  Principal: String(100);
  SchoolStrength: Integer;
  Curriculum: String(100);
  rating: String(1);
  students: Composition of many Students on students.school = $self;
}

@assert.unique: { StudentID_Unique: [studentid] } 
entity Students : cuid, managed {
  studentid: Integer @mandatory;
  firstName: String(50);
  lastName: String(50);
  dateOfBirth: Date;
  dateOfJoining: Date;
  email: String(100);
  phoneNumber: String(15);
  school: Association to Schools;
}

