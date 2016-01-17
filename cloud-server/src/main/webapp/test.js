function validateInput() {
    var error = "";
    var isOk = true;
    var satisfied = $("input[name='satisfied'][value='yes']");
    var notSatisfied = $("input[name='satisfied'][value='no']");
    var donate = $("input[name='donate']");
    var reason = $("input[name='reason']");
    var divClassErrorMessage = $("div.error-message");

    var canBeDonate = satisfied.is(":checked");
    var shouldBeReason = notSatisfied.is(":checked");

    if(donate.is(":checked") && !canBeDonate){
        error = "RULE 1 FAILED";
        isOk = false;
    }

    if(shouldBeReason && $.trim(reason.val()) === ""){

        if(!isOk){
            error = "BOTH RULES FAILED";
        } else {
            error = "RULE 2 FAILED";
            isOk = false;
        }

    }

    if(!isOk){
        divClassErrorMessage.html(error);
    }

// function that validates inputs from form and displays the message
    return isOk;
}

/* Form's HTML code
 <!— Display error message in following div —>
 <div class="error-message"></div>

 <form id="satisfaction" onsubmit="return validateInput()">
 <input type="radio" name="satisfied" value="yes" required /> Satisfied
 <input type="checkbox" name="donate" /> Donate<br />
 <input type="radio" name="satisfied" value="no" required /> Not satisfied
 <input type="text" name="reason" /> Reason<br />
 <input type="submit" value="Submit" />
 </form>
 */
