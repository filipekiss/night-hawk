import {save, fromRoot} from './utils/file';

import colors from '../colors.json';
import semanticColors from '../semantic-colors.json';

export default function exportEstiloPalette() {
    const generationTime = new Date();
    const colorsHeader = `# Night Hawk Palette
# Ordered alphabetically
# Auto-generated on ${generationTime
        .toISOString()
        .substring(0, 16)
        .replace('T', ' ')
        .replace(/\-/g, '/')}
`;

    const printColorFormat = function(colorName, colorObject) {
        return `${colorName}: '${colorObject.hex}'`;
    };

    const colorStrings = Object.entries(semanticColors).map(
        function outputColorString([semanticColor, colorName]) {
            return printColorFormat(semanticColor, colors[colorName]);
        }
    );

    const filePath = fromRoot(`estilo/palettes/nighthawk.yml`);

    const fileContents = `${colorsHeader}
${colorStrings.join('\n')}
`;

    save(filePath, fileContents);
}
