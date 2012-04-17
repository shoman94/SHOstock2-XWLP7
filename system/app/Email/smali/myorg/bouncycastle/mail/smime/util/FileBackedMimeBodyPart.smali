.class public Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "FileBackedMimeBodyPart.java"


# instance fields
.field private final _file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    .line 29
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->_file:Ljava/io/File;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .parameter "content"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1, p2}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->saveStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;-><init>(Ljava/io/File;)V

    .line 45
    return-void
.end method

.method private static saveContentToStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 4
    .parameter "out"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 123
    const/16 v2, 0x7ff8

    new-array v0, v2, [B

    .line 126
    .local v0, buf:[B
    :goto_0
    array-length v2, v0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, len:I
    if-lez v1, :cond_0

    .line 127
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 131
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 132
    return-void
.end method

.method private static saveStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .parameter "content"
    .parameter "tempFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p0}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->saveContentToStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 89
    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    check-cast v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-virtual {v0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->getRoot()Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->dispose()V

    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletion of underlying file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no longer exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 69
    return-void
.end method
