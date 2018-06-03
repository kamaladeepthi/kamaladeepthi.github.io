require('date')

module Events
  class Generator < Jekyll::Generator
    def generate(site)
      events = site.data["events"]

      upcoming, past = events.partition { |event| Date.parse(event["date"]) >= Date.today }
      past = past.group_by { |event| Date.parse(event["date"]).year }

      reading = site.pages.detect { |page| page.path == "events.html" }
      reading.data['upcoming'] = upcoming
      reading.data['past'] = past
    end
  end
end
