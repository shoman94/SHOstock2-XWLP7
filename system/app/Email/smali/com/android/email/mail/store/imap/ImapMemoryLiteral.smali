.class public Lcom/android/email/mail/store/imap/ImapMemoryLiteral;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapMemoryLiteral.java"


# instance fields
.field private mData:[B


# direct methods
.method constructor <init>(Lcom/android/email/FixedLengthInputStream;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, pos:I
    :goto_0
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v2

    .line 52
    .local v2, read:I
    if-gez v2, :cond_2

    .line 57
    .end local v2           #read:I
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-eq v1, v3, :cond_1

    .line 58
    const-string v3, "Email"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1           #pos:I
    :cond_1
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1

    .line 55
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #pos:I
    .restart local v2       #read:I
    :cond_2
    add-int/2addr v1, v2

    .line 56
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 6
    .parameter "in"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, pos:I
    const/4 v1, 0x0

    .line 68
    .local v1, progress:I
    const/4 v3, 0x0

    .line 69
    .local v3, temp:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v5, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v5, v5

    sub-int/2addr v5, v0

    invoke-virtual {p1, v4, v0, v5}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v2

    .line 71
    .local v2, read:I
    if-gez v2, :cond_3

    .line 94
    .end local v2           #read:I
    :cond_1
    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v4, v4

    if-eq v0, v4, :cond_2

    .line 95
    const-string v4, "Email"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    return-void

    .line 74
    .restart local v2       #read:I
    :cond_3
    add-int/2addr v0, v2

    .line 76
    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 77
    const-string v4, "Email"

    const-string v5, "Attachmentdownload is cancelled in ImapMemoryLiteral"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_4
    if-eqz p2, :cond_0

    .line 85
    mul-int/lit8 v4, v0, 0x64

    iget-object v5, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v5, v5

    div-int v3, v4, v5

    .line 87
    if-eq v3, v1, :cond_0

    .line 88
    move v1, v3

    .line 89
    sget-object v4, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IMAPMEMORYLITERAL:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p2, v1, v4}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 102
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapString;->destroy()V

    .line 103
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string v0, "{%d byte literal(memory)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
