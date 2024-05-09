<cfparam name="variables.errorMessage" default="">
<cfset variables.strFirstName="">
<cfset variables.strLastName="">
<cfset variables.strBirthday="">
<cfset variables.strAddress="">
<cfset variables.strStreet="">
<cfset variables.intPincode="">
<cfset variables.strEmailID="">
<cfset variables.intPhoneNumber="">


<cfif structKeyExists(FORM, "strFirstName")>
    <cfset local.result=createObject("component", "controllers.addressBook").savePageValidation(strFirstName=form.strFirstName,strLastName=form.strLastName,strBirthday=form.strBirthday,strAddress=form.strAddress,strStreet=form.strStreet,intPincode=form.intPincode,strEmailID=form.strEmailID,intPhoneNumber=form.intPhoneNumber)>
    
    <cfset variables.strFirstName=form.strFirstName>
    <cfset variables.strLastName=form.strLastName>
    <cfset variables.strBirthday=form.strBirthday>
    <cfset variables.strAddress=form.strAddress>
    <cfset variables.strStreet=form.strStreet>
    <cfset variables.intPincode=form.intPincode>
    <cfset variables.strEmailID=form.strEmailID>
    <cfset variables.intPhoneNumber=form.intPhoneNumber>
        <cfif isArray(local.result)>
            <cfloop array="#local.result#" index="error">
                <cfset variables.errorMessage&=error & "<br>">
            </cfloop>
        <cfelse>
        <cfset variables.errorMessage="Form submitted successfully!">
        <!---<cfset result=createObject("component", "models.signUp").saveUser(strUsername=form.strUsername,strPassword=form.strPassword,intRole=form.intRole,strName=form.strName)>
        <cfif result eq true>
            <cfset variables.message="Form submitted successfully!">
        <cfelse>
            <cfset variables.message="Form is not submitted!">
        </cfif>--->
    </cfif>
</cfif>




