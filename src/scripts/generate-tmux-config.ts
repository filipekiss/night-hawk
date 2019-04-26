import {fromRoot} from './utils/file';
import {getTemplates, renderTemplate, saveOutputFile} from './utils/templates';

import colors from '../colors.json';
import semanticColors from '../semantic-colors.json';

function printColorFormat(colorName: string, colorObject): string {
    return `color_${colorName}="${colorObject.hex}"`;
}

const semanticColorStrings = Object.entries(semanticColors).map(
    function outputColorString([semanticColor, colorName]) {
        return printColorFormat(semanticColor, colors[colorName]);
    }
);

const namedColorStrings = Object.entries(colors).map(
    function outputNamedColorString([colorKey, color]) {
        return printColorFormat(colorKey, color);
    }
);

const colorStrings = [...semanticColorStrings, ...namedColorStrings];

export default function generateFilesFromTemplates() {
    const tmuxTemplates = fromRoot('src/templates/tmux');
    const data = {
        colorsList: colorStrings.join('\n'),
    };
    const templates = getTemplates(tmuxTemplates);
    saveOutputFile(templates, data, {outDir: fromRoot('tmux')});
}
