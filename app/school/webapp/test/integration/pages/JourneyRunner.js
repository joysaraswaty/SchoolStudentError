sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"managestudent/school/test/integration/pages/SchoolsList",
	"managestudent/school/test/integration/pages/SchoolsObjectPage",
	"managestudent/school/test/integration/pages/StudentsObjectPage"
], function (JourneyRunner, SchoolsList, SchoolsObjectPage, StudentsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('managestudent/school') + '/test/flp.html#app-preview',
        pages: {
			onTheSchoolsList: SchoolsList,
			onTheSchoolsObjectPage: SchoolsObjectPage,
			onTheStudentsObjectPage: StudentsObjectPage
        },
        async: true
    });

    return runner;
});

