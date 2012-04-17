.class public Lgnu/mail/providers/mbox/MboxFolder;
.super Ljavax/mail/Folder;
.source "MboxFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;
    }
.end annotation


# static fields
.field static final df:Ljava/text/DateFormat;


# instance fields
.field final file:Ljava/io/File;

.field final inbox:Z

.field messages:[Lgnu/mail/providers/mbox/MboxMessage;

.field open:Z

.field permanentFlags:Ljavax/mail/Flags;

.field readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM d H:m:s yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/mbox/MboxFolder;->df:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/io/File;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 96
    iput-object p2, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    .line 97
    iput-boolean p3, p0, Lgnu/mail/providers/mbox/MboxFolder;->inbox:Z

    .line 98
    iput-boolean v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->open:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->readOnly:Z

    .line 100
    new-array v0, v1, [Lgnu/mail/providers/mbox/MboxMessage;

    iput-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    .line 101
    return-void
.end method

.method private createNewFile(Ljava/io/File;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 981
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 982
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 983
    return-void
.end method

.method public static decodeFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 327
    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 330
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v1, -0x5

    if-ge v0, v2, :cond_0

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 333
    if-lez v0, :cond_1

    const/16 v3, 0x46

    if-ne v2, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x72

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 348
    :cond_0
    return-object p0

    .line 342
    :cond_1
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 907
    invoke-direct {p0}, Lgnu/mail/providers/mbox/MboxFolder;->isGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 911
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private isGzip()Z
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized acquireLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 938
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/mbox/MboxStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    :try_start_1
    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 943
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creating "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/mail/providers/mbox/MboxStore;->log(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 962
    :goto_0
    monitor-exit p0

    return v0

    .line 951
    :cond_0
    :try_start_2
    invoke-direct {p0, v3}, Lgnu/mail/providers/mbox/MboxFolder;->createNewFile(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 952
    const/4 v0, 0x1

    goto :goto_0

    .line 954
    :catch_0
    move-exception v2

    .line 956
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O exception acquiring lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/mail/providers/mbox/MboxStore;->log(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 962
    goto :goto_0

    .line 958
    :catch_1
    move-exception v2

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception acquiring lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/mail/providers/mbox/MboxStore;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2f

    .line 877
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Folder cannot contain folders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    if-eq v0, v1, :cond_1

    .line 884
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 886
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 887
    new-instance v1, Lgnu/mail/providers/mbox/MboxFolder;

    iget-object v2, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lgnu/mail/providers/mbox/MboxFolder;-><init>(Ljavax/mail/Store;Ljava/io/File;Z)V

    return-object v1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/mbox/MboxStore;

    .line 120
    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    .line 121
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_1
    if-nez v1, :cond_2

    .line 137
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 579
    add-int/lit8 v0, p1, -0x1

    .line 580
    if-ltz v0, :cond_0

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 582
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_1
    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    array-length v0, v0

    return v0
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    array-length v0, v0

    new-array v0, v0, [Ljavax/mail/Message;

    .line 596
    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    monitor-exit p0

    return-object v0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->open:Z

    return v0
.end method

.method public open(I)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 203
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 204
    if-ne p1, v4, :cond_2

    .line 206
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Folder is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lgnu/mail/providers/mbox/MboxFolder;->acquireLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to acquire lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    iput-boolean v1, p0, Lgnu/mail/providers/mbox/MboxFolder;->readOnly:Z

    .line 217
    :cond_2
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_3
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v1, Lgnu/mail/providers/mbox/MboxStore;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/mail/providers/mbox/MboxStore;->log(Ljava/lang/String;)V

    .line 229
    new-instance v11, Ljava/util/ArrayList;

    const/16 v0, 0x100

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    new-instance v7, Lgnu/inet/util/LineInputStream;

    invoke-direct {p0}, Lgnu/mail/providers/mbox/MboxFolder;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    new-instance v0, Lgnu/mail/treeutil/StatusEvent;

    const/4 v4, 0x0

    const-string v5, "open"

    invoke-direct {v0, v1, v4, v5}, Lgnu/mail/treeutil/StatusEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 240
    invoke-virtual {v1, v0}, Lgnu/mail/providers/mbox/MboxStore;->processStatusEvent(Lgnu/mail/treeutil/StatusEvent;)V

    .line 242
    invoke-virtual {v7}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move v0, v3

    move-object v3, v2

    :goto_0
    if-eqz v9, :cond_7

    .line 244
    const-string v4, "From "

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 246
    if-eqz v2, :cond_4

    .line 248
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 249
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 250
    new-instance v2, Lgnu/mail/providers/mbox/MboxMessage;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v2, p0, v3, v4, v0}, Lgnu/mail/providers/mbox/MboxMessage;-><init>(Lgnu/mail/providers/mbox/MboxFolder;Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 252
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v0, Lgnu/mail/treeutil/StatusEvent;

    const/4 v2, 0x1

    const-string v3, "open"

    const/4 v4, 0x1

    const/4 v5, -0x1

    add-int/lit8 v6, v8, -0x1

    invoke-direct/range {v0 .. v6}, Lgnu/mail/treeutil/StatusEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;III)V

    .line 260
    invoke-virtual {v1, v0}, Lgnu/mail/providers/mbox/MboxStore;->processStatusEvent(Lgnu/mail/treeutil/StatusEvent;)V

    move v0, v8

    .line 263
    :cond_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, v0

    move-object v0, v9

    .line 242
    :goto_1
    invoke-virtual {v7}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v3, v0

    move v0, v4

    goto :goto_0

    .line 265
    :cond_5
    if-eqz v2, :cond_6

    .line 267
    invoke-static {v9}, Lgnu/mail/providers/mbox/MboxFolder;->decodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 268
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 269
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    move v4, v0

    move-object v0, v3

    goto :goto_1

    .line 272
    :cond_7
    if-eqz v2, :cond_8

    .line 274
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 275
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 276
    new-instance v2, Lgnu/mail/providers/mbox/MboxMessage;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v2, p0, v3, v4, v0}, Lgnu/mail/providers/mbox/MboxMessage;-><init>(Lgnu/mail/providers/mbox/MboxFolder;Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 277
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v0, Lgnu/mail/treeutil/StatusEvent;

    const/4 v2, 0x1

    const-string v3, "open"

    const/4 v4, 0x1

    const/4 v5, -0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct/range {v0 .. v6}, Lgnu/mail/treeutil/StatusEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;III)V

    .line 285
    invoke-virtual {v1, v0}, Lgnu/mail/providers/mbox/MboxStore;->processStatusEvent(Lgnu/mail/treeutil/StatusEvent;)V

    .line 287
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/mail/providers/mbox/MboxMessage;

    iput-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    .line 288
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->messages:[Lgnu/mail/providers/mbox/MboxMessage;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    new-instance v0, Lgnu/mail/treeutil/StatusEvent;

    const/4 v2, 0x2

    const-string v3, "open"

    invoke-direct {v0, v1, v2, v3}, Lgnu/mail/treeutil/StatusEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 295
    invoke-virtual {v1, v0}, Lgnu/mail/providers/mbox/MboxStore;->processStatusEvent(Lgnu/mail/treeutil/StatusEvent;)V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/mail/providers/mbox/MboxFolder;->open:Z

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/mbox/MboxFolder;->notifyConnectionListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 310
    if-eqz v7, :cond_9

    .line 312
    :try_start_2
    invoke-virtual {v7}, Lgnu/inet/util/LineInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    :cond_9
    :goto_2
    return-void

    .line 301
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 303
    :goto_3
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :catchall_0
    move-exception v0

    move-object v7, v1

    .line 310
    :goto_4
    if-eqz v7, :cond_a

    .line 312
    :try_start_4
    invoke-virtual {v7}, Lgnu/inet/util/LineInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 318
    :cond_a
    :goto_5
    throw v0

    .line 315
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_5

    .line 308
    :catchall_1
    move-exception v0

    move-object v7, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 301
    :catch_3
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method
