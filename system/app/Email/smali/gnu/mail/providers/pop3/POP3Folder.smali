.class public final Lgnu/mail/providers/pop3/POP3Folder;
.super Ljavax/mail/Folder;
.source "POP3Folder.java"


# instance fields
.field deleted:Ljava/util/List;

.field inbox:Ljavax/mail/Folder;

.field open:Z

.field readonly:Z

.field type:I


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 57
    iput-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->readonly:Z

    iput-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    .line 70
    iput p2, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 292
    .line 295
    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getItems()[Ljavax/mail/FetchProfile$Item;

    move-result-object v6

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 296
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 298
    aget-object v7, v6, v0

    sget-object v8, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    if-ne v7, v8, :cond_0

    move v2, v5

    .line 296
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    aget-object v7, v6, v0

    sget-object v8, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    if-ne v7, v8, :cond_1

    move v3, v5

    .line 304
    goto :goto_1

    :cond_1
    move v4, v5

    .line 308
    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8

    .line 315
    :goto_2
    if-nez v5, :cond_4

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    .line 339
    :cond_3
    return-void

    .line 320
    :cond_4
    :goto_3
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 322
    aget-object v0, p1, v1

    instance-of v0, v0, Lgnu/mail/providers/pop3/POP3Message;

    if-eqz v0, :cond_6

    .line 324
    aget-object v0, p1, v1

    check-cast v0, Lgnu/mail/providers/pop3/POP3Message;

    .line 325
    if-eqz v2, :cond_5

    .line 327
    invoke-virtual {v0}, Lgnu/mail/providers/pop3/POP3Message;->fetchUid()V

    .line 329
    :cond_5
    if-eqz v3, :cond_7

    .line 331
    invoke-virtual {v0}, Lgnu/mail/providers/pop3/POP3Message;->fetchContent()V

    .line 320
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 335
    :cond_7
    invoke-virtual {v0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    goto :goto_4

    :cond_8
    move v5, v4

    goto :goto_2
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 391
    iget v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    packed-switch v0, :pswitch_data_0

    .line 400
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "This folder can\'t contain subfolders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_0
    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->inbox:Ljavax/mail/Folder;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lgnu/mail/providers/pop3/POP3Folder;

    iget-object v1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/mail/providers/pop3/POP3Folder;-><init>(Ljavax/mail/Store;I)V

    iput-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->inbox:Ljavax/mail/Folder;

    .line 398
    :cond_0
    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->inbox:Ljavax/mail/Folder;

    return-object v0

    .line 391
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Folder is not open"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/pop3/POP3Store;

    iget-object v1, v0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    .line 261
    monitor-enter v1

    .line 265
    :try_start_0
    invoke-virtual {v1, p1}, Lgnu/inet/pop3/POP3Connection;->list(I)I

    move-result v0

    .line 266
    new-instance v2, Lgnu/mail/providers/pop3/POP3Message;

    invoke-direct {v2, p0, p1, v0}, Lgnu/mail/providers/pop3/POP3Message;-><init>(Lgnu/mail/providers/pop3/POP3Folder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v1

    return-object v2

    .line 268
    :catch_0
    move-exception v0

    .line 270
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMessageCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/pop3/POP3Store;

    iget-object v1, v0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    .line 235
    monitor-enter v1

    .line 239
    :try_start_0
    invoke-virtual {v1}, Lgnu/inet/pop3/POP3Connection;->stat()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    monitor-exit v1

    return v0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    packed-switch v0, :pswitch_data_0

    .line 85
    const-string v0, "(Unknown)"

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    const-string v0, "/"

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v0, "INBOX"

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    return v0
.end method

.method public open(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    iput p1, p0, Ljavax/mail/Folder;->mode:I

    .line 145
    iput-boolean v1, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    .line 146
    invoke-virtual {p0, v1}, Lgnu/mail/providers/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 147
    return-void

    .line 137
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->readonly:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->deleted:Ljava/util/List;

    goto :goto_0

    .line 141
    :pswitch_1
    iput-boolean v1, p0, Lgnu/mail/providers/pop3/POP3Folder;->readonly:Z

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
