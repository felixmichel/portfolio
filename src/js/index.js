'use strict'

if (module.hot) {
  module.hot.accept()
}

import { mount } from 'riot'
import contentData from '../data/content.json'
import '../styles/index.scss'
import './components/portfolio-app.tag'
import './components/raw.tag'

mount('portfolio-app', {
  content: contentData
})
