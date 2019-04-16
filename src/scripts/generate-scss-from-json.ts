import {save, fromRoot} from './utils/file';

import colors from '../colors.json';

export default function exportScssPalette() {
    const generationTime = new Date();
    const colorsHeader = `// Night Hawk Palette
// Ordered by color (Hue, Saturation and Lightness)
// Auto-generated on ${generationTime
        .toISOString()
        .substring(0, 16)
        .replace('T', ' ')
        .replace(/\-/g, '/')}
`;

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

        const fileContents = `${colorsHeader}
${colorStrings.join('\n')}
`;

        save(filePath, fileContents);
    });
}
