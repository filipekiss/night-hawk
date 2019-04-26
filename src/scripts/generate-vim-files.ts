import {fromRoot} from './utils/file';
import {getTemplates, saveOutputFile} from './utils/templates';

import colors from '../colors.json';

const templates = getTemplates(fromRoot('src/templates/vim/plugin'));

saveOutputFile(
    templates,
    {
        colors,
    },
    {outDir: fromRoot('plugin')}
);
