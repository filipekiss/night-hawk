import program from 'commander';
import readPkg from 'read-pkg-up';
import generateScss from './generate-scss-from-json';
import generateEstiloPalette from './generate-estilo-palette-from-json';
import generateTmuxConfig from './generate-tmux-config';

const PROJECT = readPkg.sync();

program
    .version(PROJECT.pkg.version)
    .option('-a, --all', 'Generate all colors palette files - default')
    .option('--sass', 'Generate only SASS files')
    .option('--estilo', 'Generate only estilo files')
    .option('--tmux', 'Generate only tmux files')
    .parse(process.argv);

const allFormats =
    (!program.sass && !program.estilo && !program.tmux) || program.all;

if (allFormats || program.sass) generateScss();
if (allFormats || program.estilo) generateEstiloPalette();
if (allFormats || program.tmux) generateTmuxConfig();
