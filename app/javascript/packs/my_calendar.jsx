import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import BigCalendar from 'react-big-calendar'
import moment from 'moment'

moment.locale('ja');
BigCalendar.setLocalizer(
  BigCalendar.momentLocalizer(moment)
)
const MyCalendar = props => (
  <BigCalendar
    events={ props.events }
  />
);


MyCalendar.propTypes = {
  events: PropTypes.array
}

const Calendar = document.getElementById('calendar')
const Events = [
  {
    'title': 'All Day Event',
    'allDay': true,
    'start': "2017-05-01",
    'end': "2017-05-01"
  },
  {
    'title': 'Long Event',
    'start': "2017-05-07",
    'end': "2017-05-10"
  }
]


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <MyCalendar events={ Events } />,
    calendar.appendChild(document.createElement('div')),
  )
})
