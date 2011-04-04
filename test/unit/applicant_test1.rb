require 'C:/uplbdps/test/test_helper'

class ApplicantTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
	a = Applicant.new :name => applicants(:one).name,
		:sNum => applicants(:one).sNum,
		:sex => applicants(:one).sex,
		:course => applicants(:one).course,
		:college => applicants(:one).college,
		:address => applicants(:one).address,
		:province => applicants(:one).province,
		:pEmail => applicants(:one).pEmail,
		:pNum => applicants(:one).pNum,
		:pAreaCode => applicants(:one).pAreaCode,
		:pCell => applicants(:one).pCell,
		:mens => applicants(:one).mens,
		:acci => applicants(:one).acci,
		:ati => applicants(:one).ati
		
    assert_match /[A-Za-z]/, a.name
    assert_match /[0-9]/, a.sNum
    assert_match /[A-Za-z]/, a.sex
    assert_match /[A-Za-z]/, a.course
    assert_match /[A-Za-z]/, a.college
    assert_match /[A-Za-z0-9]/, a.address
    #assert_match /[0-9]/, a.province, "error sa province"
	assert_instance_of Fixnum, a.province
    assert_match /[A-Za-z0-9]/, a.pEmail
    assert_match /[0-9]/, a.pNum
    assert_match /[0-9]/, a.pAreaCode
    assert_match /[0-9]/, a.pCell
    assert_instance_of Fixnum, a.mens
    assert_instance_of Fixnum, a.acci
    assert_instance_of Fixnum, a.ati
  end
end
