#ifndef RANDOMWORDGENERATOR_H
#define RANDOMWORDGENERATOR_H

#include <QObject>
#include <QVector>
#include <QString>

class RandomWordGenerator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString filePath READ getFilePath WRITE setFilePath NOTIFY filePathChanged)

public:
    explicit RandomWordGenerator(QObject *parent = nullptr);

    Q_INVOKABLE QString generateWord();

    QString getFilePath() const;
    void setFilePath(QString filePath);

public slots:
    void loadFile();

signals:
    void filePathChanged();

private:
    quint32 m_current_index;
    QString m_filePath;
    QVector<QString> m_words;
};

#endif // RANDOMWORDGENERATOR_H
