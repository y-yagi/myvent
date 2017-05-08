import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import BigCalendar from 'react-big-calendar'
import moment from 'moment'

moment.locale('ja')

BigCalendar.setLocalizer(
  BigCalendar.momentLocalizer(moment)
)

const MyCalendar = props => (
  <BigCalendar
    events={ props.events }
    onSelectEvent={ event => window.location.href = event.url }
  />
)

MyCalendar.propTypes = {
  events: PropTypes.array
}

const fetchEvents = () => {
  fetch('/events.json', { credentials: 'same-origin' }).then(response => {
    return response.json()
  }).then(events => {
    ReactDOM.render(
      <MyCalendar events={ events } />,
      calendar.appendChild(document.createElement('div')),
    )
  })
}

document.addEventListener('DOMContentLoaded', () => {
  fetchEvents();
})
