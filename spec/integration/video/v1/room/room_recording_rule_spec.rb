##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'RecordingRules' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .recording_rules.fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://video.twilio.com/v1/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/RecordingRules',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "rules": [
              {
                  "type": "include",
                  "all": true
              }
          ]
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .recording_rules.fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .recording_rules.update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://video.twilio.com/v1/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/RecordingRules',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "rules": [
              {
                  "type": "include",
                  "all": true
              }
          ]
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .recording_rules.update()

    expect(actual).to_not eq(nil)
  end
end