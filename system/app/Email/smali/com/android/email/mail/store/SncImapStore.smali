.class public Lcom/android/email/mail/store/SncImapStore;
.super Lcom/android/email/mail/BaseSncStore;
.source "SncImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/SncImapStore$ImapException;,
        Lcom/android/email/mail/store/SncImapStore$ImapMessage;,
        Lcom/android/email/mail/store/SncImapStore$ImapConnection;,
        Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;,
        Lcom/android/email/mail/store/SncImapStore$ImapFolder;
    }
.end annotation


# static fields
.field private static final MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

.field public static mContext:Landroid/content/Context;

.field private static sImapId:Ljava/lang/String;


# instance fields
.field public mCapabilityResponse:Ljava/lang/String;

.field private final mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/email/mail/store/SncImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/SncImapStore$ImapFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderIdleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;",
            ">;"
        }
    .end annotation
.end field

.field private mIdPhrase:Ljava/lang/String;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPassword:Ljava/lang/String;

.field private mPathPrefix:Ljava/lang/String;

.field protected mRootTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/SncImapStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/store/SncImapStore;->sImapId:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v0}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/SncImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/email/mail/BaseSncStore;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mIdPhrase:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderCache:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderIdleCache:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 215
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 227
    invoke-direct {p0}, Lcom/android/email/mail/BaseSncStore;-><init>()V

    .line 166
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mIdPhrase:Ljava/lang/String;

    .line 170
    new-instance v7, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 185
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderCache:Ljava/util/HashMap;

    .line 193
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderIdleCache:Ljava/util/HashMap;

    .line 201
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    sput-object p1, Lcom/android/email/mail/store/SncImapStore;->mContext:Landroid/content/Context;

    .line 231
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v4, uri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "snc"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "imap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 240
    :cond_0
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 233
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Invalid SncImapStore URI"

    invoke-direct {v7, v8, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 243
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_1
    const/4 v0, 0x0

    .line 244
    .local v0, connectionSecurity:I
    const/16 v1, 0x8f

    .line 246
    .local v1, defaultPort:I
    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 247
    const/4 v0, 0x1

    .line 248
    const/16 v1, 0x3e1

    .line 252
    :cond_2
    :goto_0
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 254
    .local v3, trustCertificates:Z
    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "IMAP"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    .line 255
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 256
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 258
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, userInfoParts:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 260
    aget-object v7, v6, v10

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mUsername:Ljava/lang/String;

    .line 261
    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 262
    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mPassword:Ljava/lang/String;

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOGIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore;->mPassword:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/utility/Utility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mLoginPhrase:Ljava/lang/String;

    .line 271
    :cond_3
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 272
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore;->mPathPrefix:Ljava/lang/String;

    .line 274
    :cond_4
    return-void

    .line 249
    .end local v3           #trustCertificates:Z
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_5
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 250
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/email/mail/store/SncImapStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/SncImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/mail/store/SncImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mIdPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/email/mail/store/SncImapStore;->mIdPhrase:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/SncImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mLoginPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/mail/store/SncImapStore;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static decodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "name"

    .prologue
    .line 801
    const-string v6, "&-"

    const-string v7, " &- "

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, beforeDecodeFolder:Ljava/lang/String;
    :try_start_0
    const-string v6, "US-ASCII"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 804
    .local v3, encoded:[B
    sget-object v6, Lcom/android/email/mail/store/SncImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 808
    .local v2, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, folder:Ljava/lang/String;
    const-string v6, " & "

    const-string v7, "&"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 811
    .local v0, afterFolder:Ljava/lang/String;
    return-object v0

    .line 812
    .end local v0           #afterFolder:Ljava/lang/String;
    .end local v2           #cb:Ljava/nio/CharBuffer;
    .end local v3           #encoded:[B
    .end local v4           #folder:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 817
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to decode folder name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method static encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    .line 768
    const-string v7, "&"

    const-string v8, " & "

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 770
    .local v5, beforeEncodeName:Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/android/email/mail/store/SncImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v5}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 771
    .local v4, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    new-array v3, v7, [B

    .line 772
    .local v3, b:[B
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 776
    new-instance v2, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v2, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 777
    .local v2, afterEncodeName:Ljava/lang/String;
    const-string v7, " &- "

    const-string v8, "&-"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, afterAfterEncodeName:Ljava/lang/String;
    const-string v7, " & "

    const-string v8, "&"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 780
    .local v0, afterAfterAfterEncodeName:Ljava/lang/String;
    return-object v0

    .line 782
    .end local v0           #afterAfterAfterEncodeName:Ljava/lang/String;
    .end local v1           #afterAfterEncodeName:Ljava/lang/String;
    .end local v2           #afterEncodeName:Ljava/lang/String;
    .end local v3           #b:[B
    .end local v4           #bb:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v6

    .line 787
    .local v6, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unabel to encode folder name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method static getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/email/mail/store/imap/ImapResponse;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    const-class v7, Lcom/android/email/mail/store/SncImapStore;

    monitor-enter v7

    .line 373
    :try_start_0
    sget-object v0, Lcom/android/email/mail/store/SncImapStore;->sImapId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 374
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 376
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 377
    if-nez v0, :cond_0

    .line 378
    const-string v0, ""

    .line 379
    :cond_0
    const-string v6, "verizon"

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/SncImapStore;->makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/SncImapStore;->sImapId:Ljava/lang/String;

    .line 385
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/email/mail/store/SncImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/email/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_2

    .line 396
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getDeviceUID()Ljava/lang/String;

    move-result-object v1

    .line 405
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 407
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 408
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 409
    new-instance v2, Ljava/lang/String;

    new-instance v3, Lcom/android/email/codec/binary/Base64;

    invoke-direct {v3}, Lcom/android/email/codec/binary/Base64;-><init>()V

    invoke-virtual {v3, v1}, Lcom/android/email/codec/binary/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 410
    const-string v1, " \"AGUID\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "yahoo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    const-string v1, " \"ACLID\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, "Verzion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 417
    :cond_4
    :try_start_3
    const-string v1, "aol"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    const-string v1, " \"ACLID\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, "nmn:DROID.VZW#lr1Q@SAM.GALAXYS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    const-string v1, "Z7App"

    const-string v2, "couldn\'t obtain SHA-1 hash for device UID"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 7
    .parameter "messages"

    .prologue
    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 827
    .local v4, notFirst:Z
    move-object v0, p0

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 828
    .local v3, m:Lcom/android/emailcommon/mail/Message;
    if-eqz v4, :cond_0

    .line 829
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    :cond_0
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const/4 v4, 0x1

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    .end local v3           #m:Lcom/android/emailcommon/mail/Message;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "version"
    .parameter "codeName"
    .parameter "model"
    .parameter "id"
    .parameter "vendor"
    .parameter "networkOperator"

    .prologue
    .line 459
    const-string v2, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 460
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 461
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 463
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 464
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 465
    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 466
    invoke-virtual {v0, p6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 469
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\"name\" \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    const-string v2, " \"os\" \"android\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v2, " \"os-version\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 479
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 486
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    :cond_0
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 493
    const-string v2, " \"vendor\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_1
    const-string v2, "REL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 501
    const-string v2, " \"x-android-device-model\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 509
    const-string v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 482
    :cond_4
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;
    .locals 2
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "Z7App"

    const-string v1, "SncImapStore::newInstance: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lcom/android/email/mail/store/SncImapStore;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/SncImapStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkStoreCapability(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, result:Z
    const-string v3, "Z7App"

    const-string v4, " checkStoreCapability "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v0

    .line 309
    .local v0, connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 318
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->close()V

    .line 322
    .end local v0           #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    .line 344
    .end local v2           #result:Z
    :cond_1
    :goto_0
    return v2

    .line 310
    .restart local v0       #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    .restart local v2       #result:Z
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 312
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {v1}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->close()V

    throw v3

    .line 314
    :catch_1
    move-exception v1

    .line 315
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 316
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    .end local v0           #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    .end local v1           #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_2
    const-string v3, "QRESYNC"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    const-string v4, "CONDSTORE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 338
    :cond_3
    const-string v3, "PUSH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    const-string v4, "IDLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 340
    :cond_4
    const-string v3, "FORWDWITHOUTDOWNLOAD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public closePooledConnections()V
    .locals 2

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    check-cast v0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .restart local v0       #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->close()V

    goto :goto_0

    .line 750
    :cond_0
    return-void
.end method

.method getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    .locals 4

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    check-cast v0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .restart local v0       #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    if-eqz v0, :cond_1

    .line 705
    :try_start_0
    iget-object v1, v0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, v0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v2, 0xea60

    invoke-interface {v1, v2}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 709
    :cond_0
    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 716
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 721
    :cond_1
    if-nez v0, :cond_2

    .line 722
    new-instance v0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .end local v0           #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    invoke-direct {v0, p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;-><init>(Lcom/android/email/mail/store/SncImapStore;)V

    .line 723
    .restart local v0       #connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    const-string v1, "SncImapStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT@CONN Got a new connection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :goto_1
    return-object v0

    .line 711
    :catch_0
    move-exception v1

    .line 716
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 718
    :goto_2
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->close()V

    .line 719
    const/4 v0, 0x0

    goto :goto_0

    .line 713
    :catch_1
    move-exception v1

    .line 716
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    throw v1

    .line 725
    :cond_2
    const-string v1, "SncImapStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT@CONN Reusing existing connection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method getConnectionPoolForTest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/mail/store/SncImapStore$ImapConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 520
    const-string v1, "SncImapStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;

    .line 523
    .local v0, folder:Lcom/android/email/mail/store/SncImapStore$ImapFolder;
    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;

    .end local v0           #folder:Lcom/android/email/mail/store/SncImapStore$ImapFolder;
    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V

    .line 525
    .restart local v0       #folder:Lcom/android/email/mail/store/SncImapStore$ImapFolder;
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_0
    monitor-exit v2

    .line 528
    return-object v0

    .line 527
    .end local v0           #folder:Lcom/android/email/mail/store/SncImapStore$ImapFolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFolder(Ljava/lang/String;Z)Lcom/android/emailcommon/mail/Folder;
    .locals 3
    .parameter "name"
    .parameter "idle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 533
    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore;->mFolderIdleCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 550
    :try_start_0
    new-instance v0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;-><init>(Lcom/android/email/mail/store/SncImapStore;Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V

    .line 551
    .local v0, folder:Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;
    monitor-exit v2

    .line 552
    return-object v0

    .line 551
    .end local v0           #folder:Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPersonalNamespaces()[Lcom/android/emailcommon/mail/Folder;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v1

    .line 630
    .local v1, connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v4, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    const-string v11, "LIST \"\" \"%s*\""

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/SncImapStore;->mPathPrefix:Ljava/lang/String;

    if-nez v10, :cond_3

    const-string v10, ""

    :goto_0
    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 633
    .local v9, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 635
    .local v8, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v10, 0x0

    const-string v11, "LIST"

    invoke-virtual {v8, v10, v11}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 636
    const/4 v6, 0x1

    .line 639
    .local v6, includeFolder:Z
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    .line 640
    .local v2, encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 642
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/email/mail/store/SncImapStore;->decodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, folder:Ljava/lang/String;
    const-string v10, "INBOX"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 648
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v10

    const-string v11, "\\NOSELECT"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 649
    const/4 v6, 0x0

    .line 651
    :cond_1
    if-eqz v6, :cond_0

    .line 652
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/SncImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 658
    .end local v2           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v3           #folder:Ljava/lang/String;
    .end local v4           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #includeFolder:Z
    .end local v8           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v9           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v7

    .line 659
    .local v7, ioe:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->close()V

    .line 660
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {v7}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v11

    const-string v12, "Unable to get folder list"

    invoke-direct {v10, v11, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 672
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    :cond_2
    throw v10

    .line 631
    .restart local v4       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    :cond_3
    :try_start_2
    iget-object v10, p0, Lcom/android/email/mail/store/SncImapStore;->mPathPrefix:Ljava/lang/String;

    goto :goto_0

    .line 656
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v9       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_4
    const-string v10, "INBOX"

    invoke-virtual {p0, v10}, Lcom/android/email/mail/store/SncImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/emailcommon/mail/Folder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 670
    if-eqz v1, :cond_5

    .line 671
    invoke-virtual {v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 672
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    :cond_5
    return-object v10

    .line 662
    .end local v4           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v0

    .line 666
    .local v0, afe:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :try_start_3
    invoke-virtual {v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 667
    const/4 v1, 0x0

    .line 668
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getStoreCapability()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    return-object v0
.end method

.method public isCapabilitySupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "cap"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2254
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2273
    :cond_0
    :goto_0
    return v2

    .line 2258
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v0

    .line 2260
    .local v0, connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->open()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2269
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 2273
    goto :goto_0

    .line 2261
    :catch_0
    move-exception v1

    .line 2262
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    .line 2263
    goto :goto_0

    .line 2264
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2265
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    move v2, v3

    .line 2266
    goto :goto_0
.end method

.method poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 736
    const-string v0, "SncImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT@CONN Released the connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_0
    return-void
.end method

.method public requireCopyMessageToTrashFolder()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method
