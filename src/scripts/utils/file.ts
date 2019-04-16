import path from 'path';
import fs from 'fs-extra';

const PROJECT_ROOT = path.resolve(__dirname, '../../../');

export function fromRoot(relativePath) {
    return path.resolve(PROJECT_ROOT, relativePath);
}

export function save(filePath, fileContents) {
    try {
        console.log(`Writing file to ${filePath}`);
        fs.outputFileSync(filePath, fileContents);
    } catch (e) {
        console.log(e);
    }
}
