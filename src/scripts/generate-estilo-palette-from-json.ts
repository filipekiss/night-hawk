import {fromRoot} from './utils/file';
import {getTemplates, saveOutputFile} from './utils/templates';

import colors from '../colors.json';
import semanticColors from '../semantic-colors.json';

export default function exportEstiloPalette() {
    const printColorFormat = function(colorName, colorObject) {
        return `${colorName}: '${colorObject.hex}'`;
    };

    const colorStrings = Object.entries(semanticColors).map(
        function outputColorString([semanticColor, colorName]) {
            return printColorFormat(semanticColor, colors[colorName]);
        }
    );

    const templates = getTemplates(fromRoot('src/templates/estilo/palettes'));
    saveOutputFile(
        templates,
        {colorsList: colorStrings.join('\n')},
        {outDir: fromRoot('estilo/palettes')}
    );
}
