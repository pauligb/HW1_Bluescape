#include "randomwordgenerator.h"

#include <QFile>
#include <QTextStream>
#include <QRandomGenerator>
#include <QDebug>
#include <QTextCodec>

RandomWordGenerator::RandomWordGenerator(QObject *parent) : QObject(parent), m_current_index(-1)
{
    connect(this, &RandomWordGenerator::filePathChanged, this,
            &RandomWordGenerator::loadFile, Qt::ConnectionType::DirectConnection);
}

void RandomWordGenerator::loadFile() {
    qDebug() << "Loading file: " << m_filePath;

    if(m_filePath.isEmpty()) {
        return;
    }
    m_words.clear();

    QFile file(m_filePath);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Something failed";
        return;
    }

    QTextStream in(&file);

    // Required to read words in other languages, like japanese.
    // Required since we are not managing Internationalization.
    in.setCodec("UTF-8");
    QString line = in.readLine();
    while (!line.isNull()) {
        m_words.push_back(line);
        line = in.readLine();
    }

    qDebug() << "File loaded: " << m_filePath;
}

QString RandomWordGenerator::generateWord() {
    quint32 random_index =  QRandomGenerator::global()->bounded(m_words.size());

    if(m_words.size() == 1) {
        return m_words.at(0);
    }

    while(m_current_index == random_index) {
        random_index =  QRandomGenerator::global()->bounded(m_words.size());
    }
    m_current_index = random_index;

    return m_words.at(random_index);
}

QString RandomWordGenerator::getFilePath() const {
    return m_filePath;
}

void RandomWordGenerator::setFilePath(QString filePath) {
    if(filePath != m_filePath) {
        m_filePath = filePath;
        emit filePathChanged();
    }
}
