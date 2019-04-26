import path from 'path';
import fs from 'fs-extra';
import nunjucks from 'nunjucks';
import CommentTag from './CommentTag';
import {listDir, save} from '../file';

const templateState = {
    hasAddedComment: false,
};

function getNunjucks(viewsFolder) {
    const njk = nunjucks.configure(viewsFolder, {autoescape: false});
    njk.addExtension('NightHawkComment', new CommentTag(templateState));
    return njk;
}

export function getTemplates(fromPath, extension = '.njk') {
    const allFiles: string[] = listDir(fromPath);
    const matchingFiles = allFiles
        .filter(function filterMatchingTemplates(file: string) {
            return file.endsWith(extension);
        })
        .map(function preprendFromPath(file: string) {
            return `${fromPath}/${file}`;
        });
    return matchingFiles;
}

export function renderTemplate(template, data = {}) {
    templateState.hasAddedComment = false;
    const templateLocation = path.dirname(template);
    const templateFilename = path.basename(template);
    const nunjucks = getNunjucks(templateLocation);
    return nunjucks.render(templateFilename, data);
}

function generateFilenameFromTemplate(template) {
    const templateFilename = path.basename(template);
    const templateExtension = path.extname(template);
    return templateFilename.replace(templateExtension, '');
}

export function saveOutputFile(templates, data = {}, options = {outDir: null}) {
    const availableTemplates = templates.filter(function checkIfTemplateExists(
        file
    ) {
        return fs.existsSync(file);
    });
    availableTemplates.forEach(function renderTemplateToFile(template) {
        const outputContents = renderTemplate(template, data);
        const outputFile = generateFilenameFromTemplate(template);
        const outputDir = options.outDir || path.dirname(template);
        const outputFilePath = path.resolve(outputDir, outputFile);
        save(outputFilePath, outputContents);
    });
}
