import {read, save, fromRoot} from './utils/file';

import colors from '../colors.json';
import semanticColors from '../semantic-colors.json';

export default function exportTmuxColors() {
    const generationTime = new Date();
    const colorsHeader = `# Night Hawk Tmux
# Ordered alphabetically
# Auto-generated on ${generationTime
        .toISOString()
        .substring(0, 16)
        .replace('T', ' ')
        .replace(/\-/g, '/')}
`;

    const printColorFormat = function(colorName, colorObject) {
        return `color_${colorName}="${colorObject.hex}"`;
    };

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

    const sourceConfigContent = read(fromRoot('src/tmux/nighthawk.tmux.conf'));

    const colorFilePath = fromRoot(`tmux/nighthawk.color.tmux.conf`);

    const configFilePath = fromRoot(`tmux/nighthawk.tmux.conf`);

    const colorFileContent = `${colorsHeader}
# ┌━━━━━━━━┐
# │ Colors │
# └━━━━━━━━┘
${colorStrings.join('\n')}
`;

    const configFileContent = `${colorFileContent}
# ┌━━━━━━━━┐
# │ Config │
# └━━━━━━━━┘

${sourceConfigContent}`;

    save(colorFilePath, colorFileContent);
    save(configFilePath, configFileContent);
}
