#!!!! GIVEN Step Definition

Given /^I visit CafeWell with a '([^']+)' user for '([^']+)'$/ do |user_type, company|
    eligibility = HAL::ADAPT::Eligibility.get()

    public_homepage = CafeWell::HomepagePublic.load(goto: true)
    public_homepage.sign_in.register

    code_check = CafeWell::SponsorCodeCheck.load()
    code_check.use_sponsor_code('hermes-adapt')

    eligibility_check = CafeWell::EligibilityCheck.load()
    eligibility_check.enter(eligibility)
    eligibility_check.submit()

    signup_form = CafeWell::SignUp.load()
    signup_form.username = "H#{eligibility.id1[('HERMES_20180212-'.length)..-1]}"
    signup_form.password = 'P@s5word'
    signup_form.accept_terms = true
    signup_form.sign_up()

    # TODO - Figure out this issue and fix it.
    # If a action is done too quickly after registration, a second eligibility check can appear sometimes.
    sleep(15)

    security_questions = CafeWell::SecurityQuestions.load()
    security_questions.submit_default()

    gtky = CafeWell::GTKYIntegration.load()
    gtky.select([:bdd])

    #email_confirmation = CafeWell::EmailConfirmation.load()
    #email_confirmation.skip()

    begin
        user_homepage = CafeWell::HomepageUser.load()
    rescue Selenium::WebDriver::Error::UnhandledAlertError
        driver.switch_to.alert.dismiss()
        user_homepage = CafeWell::HomepageUser.load()
    end
end