import readPkg from 'read-pkg-up';
import {save, fromRoot} from './utils/file';

const {pkg: PROJECT} = readPkg.sync();

function parseName(name) {
    return name.split('/')[1];
}

const generationTime = new Date();
const header = `# Night Hawk
# Auto-generated on ${generationTime
    .toISOString()
    .substring(0, 16)
    .replace('T', ' ')
    .replace(/\-/g, '/')}
`;

const normalizedName = parseName(PROJECT.name);

const name = `name: ${normalizedName}`;
const version = `version: ${PROJECT.version}`;
const license = `license: ${PROJECT.license}`;
const author = `author: ${PROJECT.author.name}`;
const url = `url: ${PROJECT.homepage}`;
const description = `description: ${PROJECT.description}`;
const colorschemes = `colorschemes:
    - name: ${normalizedName}
      background: 'dark'
      palette: ${normalizedName}`;

const lightline = `lightline:
    - name: ${normalizedName}
      palette: ${normalizedName}
      style: ${normalizedName}`;

const infoContents = `${header}
${name}
${version}
${license}
${author}
${url}
${description}
${colorschemes}
${lightline}`;

const infoFile = fromRoot('estilo.yml');

save(infoFile, infoContents);
