Installation
============

The app uses delayed_job to fetch the data, because it takes about 30 seconds on my machine. Go to [http://localhost:3000/events](http://localhost:3000/events) and click "Fetch all". Refresh the page after some time.

To run it, `bundle install & rake db:migrate & rails s`, and then `rake jobs:work` in another console.