.class public Lgnu/mail/providers/imap/IMAPBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "IMAPBodyPart.java"

# interfaces
.implements Lgnu/inet/imap/IMAPConstants;


# instance fields
.field protected lines:I

.field protected message:Lgnu/mail/providers/imap/IMAPMessage;

.field multipart:Lgnu/mail/providers/imap/IMAPMultipart;

.field protected section:Ljava/lang/String;

.field protected size:I


# direct methods
.method protected constructor <init>(Lgnu/mail/providers/imap/IMAPMessage;Lgnu/mail/providers/imap/IMAPMultipart;Ljava/lang/String;Ljavax/mail/internet/InternetHeaders;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p4, v0}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    .line 78
    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    .line 92
    iput-object p2, p0, Ljavax/mail/BodyPart;->parent:Ljavax/mail/Multipart;

    .line 93
    iput-object p1, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->message:Lgnu/mail/providers/imap/IMAPMessage;

    .line 94
    iput-object p3, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->section:Ljava/lang/String;

    .line 95
    iput p5, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->size:I

    .line 96
    iput p6, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->lines:I

    .line 97
    return-void
.end method


# virtual methods
.method fetch([Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->message:Lgnu/mail/providers/imap/IMAPMessage;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    .line 120
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->message:Lgnu/mail/providers/imap/IMAPMessage;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMessage;->getMessageNumber()I

    move-result v3

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 122
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    invoke-virtual {v2, v0, p1}, Lgnu/inet/imap/IMAPConnection;->fetch([I[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;

    move-result-object v4

    move v0, v1

    .line 125
    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_1

    .line 127
    aget-object v1, v4, v0

    invoke-virtual {v1}, Lgnu/inet/imap/MessageStatus;->getMessageNumber()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 129
    aget-object v1, v4, v0

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPBodyPart;->update(Lgnu/inet/imap/MessageStatus;)V

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    monitor-exit v2

    .line 138
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method fetchContent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 106
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BODY.PEEK["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->section:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 107
    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPBodyPart;->fetch([Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 278
    const-string v1, "multipart"

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPBodyPart;->fetchContent()V

    .line 295
    :cond_0
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, "multipart"

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lgnu/mail/providers/imap/IMAPMultipartDataSource;

    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-direct {v1, v2}, Lgnu/mail/providers/imap/IMAPMultipartDataSource;-><init>(Lgnu/mail/providers/imap/IMAPMultipart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 270
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPBodyPart;->fetchContent()V

    .line 270
    :cond_1
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 238
    iget v0, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->size:I

    return v0
.end method

.method update(Lgnu/inet/imap/MessageStatus;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p1}, Lgnu/inet/imap/MessageStatus;->getCode()Ljava/util/List;

    move-result-object v4

    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    .line 149
    :goto_0
    if-ge v2, v5, :cond_9

    .line 151
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 153
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 154
    instance-of v6, v0, Lgnu/inet/imap/Pair;

    if-eqz v6, :cond_0

    .line 156
    check-cast v0, Lgnu/inet/imap/Pair;

    .line 157
    invoke-virtual {v0}, Lgnu/inet/imap/Pair;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lgnu/inet/imap/Pair;->getValue()Ljava/util/List;

    move-result-object v0

    .line 169
    :goto_1
    const-string v6, "BODY"

    if-ne v1, v6, :cond_8

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    if-lez v1, :cond_7

    .line 174
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 178
    check-cast v0, Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPBodyPart;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    .line 190
    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 149
    :goto_2
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 160
    :cond_0
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 162
    check-cast v0, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    .line 166
    :cond_1
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_2
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 193
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v6, "charset"

    invoke-virtual {v1, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    if-nez v1, :cond_4

    .line 196
    const-string v1, "US-ASCII"

    .line 199
    :cond_4
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 201
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-direct {v1}, Ljavax/mail/MessagingException;-><init>()V

    .line 204
    invoke-virtual {v1, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 205
    throw v1

    .line 209
    :cond_5
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected MIME body part content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_6
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected section number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_7
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not a section!"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_8
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown section status key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_9
    return-void
.end method
