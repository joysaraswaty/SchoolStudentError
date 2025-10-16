sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'managestudent.school',
            componentId: 'SchoolsList',
            contextPath: '/Schools'
        },
        CustomPageDefinitions
    );
});