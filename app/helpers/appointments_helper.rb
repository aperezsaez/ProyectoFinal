module AppointmentsHelper
  test 'cant create appointments with myself' do
    i = Appointments.new(client:users(:one), professional:users(:one))
    assert_not i.valid?, "cant interact with myself"
  end

end
