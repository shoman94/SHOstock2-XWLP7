.class public Ljavax/mail/internet/EASMIMEMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "EASMIMEMessage.java"


# instance fields
.field private bufferSize:I

.field isWriten:Z

.field mMessageInuputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 54
    iput-boolean v1, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    .line 81
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 82
    iput-object p2, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    .line 83
    iget-object v0, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/EASMIMEMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 85
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 86
    iput p3, p0, Ljavax/mail/internet/EASMIMEMessage;->bufferSize:I

    .line 87
    return-void
.end method


# virtual methods
.method protected getContentStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3e5

    const/16 v10, 0x9

    const/4 v1, 0x0

    .line 121
    iget-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MYMIMEMessage can be writen only one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    if-nez p1, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v0, :cond_2

    .line 130
    invoke-virtual {p0}, Ljavax/mail/internet/EASMIMEMessage;->saveChanges()V

    .line 133
    :cond_2
    const-string v5, "US-ASCII"

    .line 134
    const/4 v0, 0x2

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    .line 137
    invoke-virtual {p0, p2}, Ljavax/mail/internet/EASMIMEMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v7

    .line 138
    :cond_3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v2, "\r\n"

    invoke-direct {v8, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 143
    :goto_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 146
    if-lez v0, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_4

    .line 149
    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 157
    :cond_4
    if-lez v0, :cond_5

    move v2, v3

    .line 158
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v2, :cond_6

    .line 160
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 161
    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 162
    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 163
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 165
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move v2, v3

    .line 167
    goto :goto_1

    .line 157
    :cond_5
    const/16 v2, 0x3e6

    goto :goto_1

    .line 168
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 169
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 170
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    goto :goto_0

    .line 174
    :cond_7
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 176
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-nez v0, :cond_9

    .line 179
    :cond_8
    invoke-virtual {p0}, Ljavax/mail/internet/EASMIMEMessage;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Ljavax/mail/internet/EASMIMEMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 198
    :goto_2
    return-void

    .line 186
    :cond_9
    iget-object v2, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    .line 187
    iget v0, p0, Ljavax/mail/internet/EASMIMEMessage;->bufferSize:I

    new-array v3, v0, [B

    .line 188
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_3
    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    .line 191
    invoke-virtual {p1, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 188
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_3

    .line 193
    :cond_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 194
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    goto :goto_2

    .line 134
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
