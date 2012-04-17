.class public Lgnu/mail/util/MailboxURLConnection;
.super Ljava/net/URLConnection;
.source "MailboxURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mail/util/MailboxURLConnection$FolderWriter;,
        Lgnu/mail/util/MailboxURLConnection$MessageWriter;
    }
.end annotation


# instance fields
.field protected folder:Ljavax/mail/Folder;

.field private headerKeys:Ljava/util/List;

.field protected headers:Ljava/util/Map;

.field protected message:Ljavax/mail/Message;

.field protected store:Ljavax/mail/Store;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 95
    return-void
.end method

.method protected static asURLName(Ljava/net/URL;)Ljavax/mail/URLName;
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 233
    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 238
    if-eqz v6, :cond_2

    .line 240
    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 241
    if-eq v7, v8, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 242
    :goto_0
    if-eq v7, v8, :cond_0

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v6, v0

    .line 245
    :goto_1
    new-instance v0, Ljavax/mail/URLName;

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move-object v5, v6

    .line 241
    goto :goto_0

    :cond_2
    move-object v6, v0

    move-object v5, v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgnu/mail/util/MailboxURLConnection;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;)Ljavax/mail/Session;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->url:Ljava/net/URL;

    invoke-static {v1}, Lgnu/mail/util/MailboxURLConnection;->asURLName(Ljava/net/URL;)Ljavax/mail/URLName;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->store:Ljavax/mail/Store;

    .line 111
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Ljavax/mail/Store;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    .line 114
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljavax/mail/Folder;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v1

    iput-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    .line 131
    :cond_1
    iget-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Ljavax/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 173
    :try_start_2
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v0

    .line 174
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_8

    .line 175
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_2
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_3
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 122
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 125
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v3, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-virtual {v3, v2}, Ljavax/mail/Folder;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v2

    iput-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/mail/Folder;->open(I)V

    .line 137
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_6

    .line 140
    new-instance v1, Ljavax/mail/search/HeaderTerm;

    const-string v2, "Message-Id"

    invoke-direct {v1, v2, v0}, Ljavax/mail/search/HeaderTerm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2, v1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1

    .line 142
    array-length v2, v1

    if-lez v2, :cond_5

    .line 143
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;

    .line 150
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    instance-of v0, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_7

    .line 152
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    .line 153
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v1

    .line 154
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Header;

    .line 157
    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;

    invoke-virtual {v0}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 145
    :cond_5
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_6
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    .line 168
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    :cond_7
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lgnu/mail/util/MailboxURLConnection;->connected:Z

    goto/16 :goto_0

    .line 176
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    goto :goto_0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lgnu/mail/util/MailboxURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mail/util/MailboxURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    .line 215
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lgnu/mail/util/MailboxURLConnection$FolderWriter;

    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-direct {v0, v2, v1}, Lgnu/mail/util/MailboxURLConnection$FolderWriter;-><init>(Ljavax/mail/Folder;Ljava/io/OutputStream;)V

    .line 219
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "MailboxURLConnection.getInputStream"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 222
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0, v1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Lgnu/mail/util/MailboxURLConnection$MessageWriter;

    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    invoke-direct {v0, v2, v1}, Lgnu/mail/util/MailboxURLConnection$MessageWriter;-><init>(Ljavax/mail/Message;Ljava/io/OutputStream;)V

    goto :goto_0
.end method
