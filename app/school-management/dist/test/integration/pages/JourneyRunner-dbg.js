sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"schoolmanagement/test/integration/pages/SchoolsList",
	"schoolmanagement/test/integration/pages/SchoolsObjectPage"
], function (JourneyRunner, SchoolsList, SchoolsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('schoolmanagement') + '/test/flpSandbox.html#schoolmanagement-tile',
        pages: {
			onTheSchoolsList: SchoolsList,
			onTheSchoolsObjectPage: SchoolsObjectPage
        },
        async: true
    });

    return runner;
});

