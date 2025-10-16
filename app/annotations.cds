using { student_Details_JouleSrv } from '../srv/service.cds';

annotate student_Details_JouleSrv.Schools with @UI.HeaderInfo: { TypeName: 'School', TypeNamePlural: 'Schools', Title: { Value: schoolid } };
annotate student_Details_JouleSrv.Schools with {
  ID @UI.Hidden @Common.Text: { $value: schoolid, ![@UI.TextArrangement]: #TextOnly }
};
annotate student_Details_JouleSrv.Schools with @UI.Identification: [{ Value: schoolid }];
annotate student_Details_JouleSrv.Schools with @UI.DataPoint #SchoolName: {
  Value: SchoolName,
  Title: 'School Name',
};
annotate student_Details_JouleSrv.Schools with @UI.DataPoint #Principal: {
  Value: Principal,
  Title: 'Principal',
};
annotate student_Details_JouleSrv.Schools with @UI.DataPoint #Curriculum: {
  Value: Curriculum,
  Title: 'Curriculum',
};
annotate student_Details_JouleSrv.Schools with {
  schoolid @title: 'School ID';
  SchoolName @title: 'School Name';
  Principal @title: 'Principal';
  SchoolStrength @title: 'School Strength';
  Curriculum @title: 'Curriculum';
  rating @title: 'Rating';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate student_Details_JouleSrv.Schools with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: schoolid },
 { $Type: 'UI.DataField', Value: SchoolName },
 { $Type: 'UI.DataField', Value: Principal },
 { $Type: 'UI.DataField', Value: SchoolStrength },
 { $Type: 'UI.DataField', Value: Curriculum },
 { $Type: 'UI.DataField', Value: rating }
];

annotate student_Details_JouleSrv.Schools with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: schoolid },
 { $Type: 'UI.DataField', Value: SchoolName },
 { $Type: 'UI.DataField', Value: Principal },
 { $Type: 'UI.DataField', Value: SchoolStrength },
 { $Type: 'UI.DataField', Value: Curriculum },
 { $Type: 'UI.DataField', Value: rating },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy }
  ]
};

annotate student_Details_JouleSrv.Schools with {
  students @Common.Label: 'Students'
};

annotate student_Details_JouleSrv.Schools with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#SchoolName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#Principal' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#Curriculum' }
];

annotate student_Details_JouleSrv.Schools with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' },
  { $Type : 'UI.ReferenceFacet', ID : 'Students', Target : 'students/@UI.LineItem' }
];

annotate student_Details_JouleSrv.Schools with @UI.SelectionFields: [
  schoolid
];

annotate student_Details_JouleSrv.Students with @UI.HeaderInfo: { TypeName: 'Student', TypeNamePlural: 'Students', Title: { Value: studentid } };
annotate student_Details_JouleSrv.Students with {
  ID @UI.Hidden @Common.Text: { $value: studentid, ![@UI.TextArrangement]: #TextOnly }
};
annotate student_Details_JouleSrv.Students with @UI.Identification: [{ Value: studentid }];
annotate student_Details_JouleSrv.Students with {
  school @Common.ValueList: {
    CollectionPath: 'Schools',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: school_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'schoolid'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'SchoolName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Principal'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'SchoolStrength'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Curriculum'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'rating'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate student_Details_JouleSrv.Students with @UI.DataPoint #firstName: {
  Value: firstName,
  Title: 'First Name',
};
annotate student_Details_JouleSrv.Students with @UI.DataPoint #phoneNumber: {
  Value: phoneNumber,
  Title: 'Phone Number',
};
annotate student_Details_JouleSrv.Students with {
  studentid @title: 'Student ID';
  firstName @title: 'First Name';
  lastName @title: 'Last Name';
  dateOfBirth @title: 'Date of Birth';
  dateOfJoining @title: 'Date of Joining';
  email @title: 'Email';
  phoneNumber @title: 'Phone Number';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate student_Details_JouleSrv.Students with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: studentid },
 { $Type: 'UI.DataField', Value: firstName },
 { $Type: 'UI.DataField', Value: lastName },
 { $Type: 'UI.DataField', Value: dateOfBirth },
 { $Type: 'UI.DataField', Value: dateOfJoining },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: phoneNumber }
];

annotate student_Details_JouleSrv.Students with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: studentid },
 { $Type: 'UI.DataField', Value: firstName },
 { $Type: 'UI.DataField', Value: lastName },
 { $Type: 'UI.DataField', Value: dateOfBirth },
 { $Type: 'UI.DataField', Value: dateOfJoining },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: phoneNumber },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy }
  ]
};

annotate student_Details_JouleSrv.Students with {
  school @Common.Text: { $value: school.schoolid, ![@UI.TextArrangement]: #TextOnly }
};

annotate student_Details_JouleSrv.Students with {
  school @Common.Label: 'School'
};

annotate student_Details_JouleSrv.Students with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#firstName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#phoneNumber' }
];

annotate student_Details_JouleSrv.Students with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate student_Details_JouleSrv.Students with @UI.SelectionFields: [
  school_ID
];

