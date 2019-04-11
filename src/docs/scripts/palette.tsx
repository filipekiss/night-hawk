import * as React from 'react';
import ReactDOM from 'react-dom';

import Palette from './components/Palette';

import colors from '../../colors.json';

ReactDOM.render(
    <Palette colors={colors} />,
    document.querySelector('#palette')
);
