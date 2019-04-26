import {save, fromRoot} from './utils/file';
import {getTemplates, renderTemplate} from './utils/templates';

import colors from '../colors.json';

export default function exportScssPalette() {
    const printColorFormat = function(color, format) {
        const colorVarName = `$${color.key}:`;
        if (format === 'hex') return `${colorVarName} ${color.hex};`;
        if (format === 'rgb') return `${colorVarName} rgba(${color.rgba});`;
        return `${colorVarName} hsla(${color.hsla});`;
    };

    const colorFormats = ['hex', 'rgb', 'hsl'];

    colorFormats.forEach(function(format) {
        const colorStrings = Object.values(colors).map(
            function outputColorString(color) {
                return printColorFormat(color, format);
            }
        );

        const filePath = fromRoot(`sass/colors-${format}.scss`);
        const sassTemplate = fromRoot('src/templates/sass/colors.scss.njk');
        const data = {
            colorsList: colorStrings.join('\n'),
        };

        const fileContents = renderTemplate(sassTemplate, data);

        save(filePath, fileContents);
    });
}
