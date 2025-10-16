/**
 * 
 * @Before(event = { "CREATE","UPDATE" }, entity = "student_Details_JouleSrv.Schools")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(request) {
    const { Schools, Students } = cds.entities;

    // Get the school data from the request
    const schoolData = request.data;

    if (schoolData && schoolData.ID) {
        // Calculate the number of students in the school
        // const studentsCount = await SELECT.from(Students).where({ school_ID: schoolData.ID }).count();
		const studentsCount = await SELECT `count(school_ID)` .from(Students).where({ school_ID: schoolData.ID });

        // Assign the count to the SchoolStrength field
        schoolData.SchoolStrength = studentsCount;
    }

    // Check if the request is for Students entity
    if (request.target.name === 'student_Details_JouleSrv.Students') {
        const studentData = request.data;

        if (studentData && !studentData.email) {
            // Construct the default email
            const defaultEmail = `${studentData.firstName}.${studentData.lastName}@gmail.com`.toLowerCase();
            studentData.email = defaultEmail;
        }
    }
}