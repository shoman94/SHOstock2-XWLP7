.class public Lcom/android/email/mail/store/ImapStore;
.super Lcom/android/email/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ImapStore$ImapException;,
        Lcom/android/email/mail/store/ImapStore$ImapMessage;,
        Lcom/android/email/mail/store/ImapStore$ImapConnection;,
        Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;,
        Lcom/android/email/mail/store/ImapStore$ImapFolder;
    }
.end annotation


# static fields
.field private static final MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

.field private static sImapId:Ljava/lang/String;


# instance fields
.field public mCapabilityResponse:Ljava/lang/String;

.field private final mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/email/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected mFolderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ImapStore$ImapFolder;",
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
            "Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;",
            ">;"
        }
    .end annotation
.end field

.field private mIdPhrase:Ljava/lang/String;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPassword:Ljava/lang/String;

.field mPathPrefix:Ljava/lang/String;

.field mPathSeparator:Ljava/lang/String;

.field private mRootTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x4

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

    const/4 v1, 0x3

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v0}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

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

    .line 198
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 130
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    .line 143
    new-instance v7, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 158
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    .line 171
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mFolderIdleCache:Ljava/util/HashMap;

    .line 179
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 204
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 207
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v4, uri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "imap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 214
    :cond_0
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 209
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Invalid ImapStore URI"

    invoke-direct {v7, v8, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 217
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, connectionSecurity:I
    const/16 v1, 0x8f

    .line 220
    .local v1, defaultPort:I
    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 221
    const/4 v0, 0x1

    .line 222
    const/16 v1, 0x3e1

    .line 226
    :cond_2
    :goto_0
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 228
    .local v3, trustCertificates:Z
    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "IMAP"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    .line 229
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 230
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 232
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, userInfoParts:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 234
    aget-object v7, v6, v10

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 235
    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 236
    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOGIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/utility/Utility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;

    .line 245
    :cond_3
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 246
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 248
    :cond_4
    return-void

    .line 223
    .end local v3           #trustCertificates:Z
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_5
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 224
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$100()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/ImapStore;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 702
    sget-object v1, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, folder:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 706
    :cond_0
    return-object v0
.end method

.method static encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 680
    const-string v2, "INBOX"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    .end local p0
    :goto_0
    return-object p0

    .line 684
    .restart local p0
    :cond_0
    if-eqz p1, :cond_1

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 689
    :cond_1
    sget-object v2, Lcom/android/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 690
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 691
    .local v0, b:[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 693
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    const-class v7, Lcom/android/email/mail/store/ImapStore;

    monitor-enter v7

    .line 293
    :try_start_0
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 294
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 296
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 297
    if-nez v6, :cond_0

    .line 298
    const-string v6, ""

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/email/mail/store/ImapStore;->makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 304
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_2

    .line 315
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getDeviceUID()Ljava/lang/String;

    move-result-object v1

    .line 324
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 326
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 327
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 328
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 329
    const-string v2, " \"AGUID\" \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "yahoo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    const-string v1, " \"ACLID\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "Verzion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 336
    :cond_4
    :try_start_3
    const-string v1, "aol"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    const-string v1, " \"ACLID\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, "nmn:DROID.VZW#lr1Q@SAM.GALAXYS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    const-string v1, "Email"

    const-string v2, "couldn\'t obtain SHA-1 hash for device UID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 7
    .parameter "messages"

    .prologue
    .line 713
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 715
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

    .line 716
    .local v3, m:Lcom/android/emailcommon/mail/Message;
    if-eqz v4, :cond_0

    .line 717
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    :cond_0
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const/4 v4, 0x1

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
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
    .line 373
    const-string v2, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 374
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 377
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 378
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 379
    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 380
    invoke-virtual {v0, p6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 383
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\"name\" \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string v2, " \"os\" \"android\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v2, " \"os-version\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 393
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 400
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :cond_0
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 407
    const-string v2, " \"vendor\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    :cond_1
    const-string v2, "REL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 415
    const-string v2, " \"x-android-device-model\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 423
    const-string v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 396
    :cond_4
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 1
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v4, -0x1

    .line 577
    .local v4, result:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {v1, p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 580
    .local v1, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 581
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 590
    :goto_0
    const-string v5, "validate_result_code"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    return-object v0

    .line 582
    :catch_0
    move-exception v3

    .line 583
    .local v3, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v5, "validate_error_message"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {v3}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 588
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    goto :goto_0

    .line 585
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 586
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "connection error [IllegalArgumentException]"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    throw v5
.end method

.method ensurePrefixIsValid()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 605
    :cond_0
    return-void
.end method

.method public getAllFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v2

    .line 500
    .local v2, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v6, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    const-string v14, "NOOP"

    invoke-virtual {v2, v14}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 505
    const-string v8, "LIST \"\" \"*\""

    .line 506
    .local v8, imapCommand:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 507
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LIST \"\" \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "*\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 509
    :cond_0
    const/4 v11, 0x0

    .line 510
    .local v11, newFolder:Lcom/android/emailcommon/mail/Folder;
    const/4 v9, 0x0

    .line 511
    .local v9, inboxDelimiter:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v2, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 512
    .local v13, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 514
    .local v12, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v14, 0x0

    const-string v15, "LIST"

    invoke-virtual {v12, v14, v15}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 516
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 517
    .local v3, delimiter:Lcom/android/email/mail/store/imap/ImapString;
    sget-boolean v14, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 518
    const-string v14, "Email:ImapStore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delimiter = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_2
    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    .line 523
    .local v4, encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 525
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 526
    .local v5, folder:Ljava/lang/String;
    const-string v14, "INBOX"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 527
    move-object v9, v3

    .line 528
    goto :goto_0

    .line 530
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v11

    .line 533
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v14

    const-string v15, "\\NOSELECT"

    invoke-virtual {v14, v15}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 534
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/emailcommon/mail/Folder;->setSelect(Z)V

    .line 538
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 539
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/emailcommon/mail/Folder;->setDelimiter(I)V

    .line 543
    :goto_2
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 555
    .end local v3           #delimiter:Lcom/android/email/mail/store/imap/ImapString;
    .end local v4           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #folder:Ljava/lang/String;
    .end local v6           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #imapCommand:Ljava/lang/String;
    .end local v9           #inboxDelimiter:Lcom/android/email/mail/store/imap/ImapString;
    .end local v11           #newFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v12           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v13           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v10

    .line 556
    .local v10, ioe:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 557
    new-instance v14, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {v10}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v15

    const-string v16, "Unable to get folder list"

    invoke-direct/range {v14 .. v16}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    .end local v10           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v2, :cond_4

    .line 568
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 569
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_4
    throw v14

    .line 536
    .restart local v3       #delimiter:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v4       #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v5       #folder:Ljava/lang/String;
    .restart local v6       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #imapCommand:Ljava/lang/String;
    .restart local v9       #inboxDelimiter:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v11       #newFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v12       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v13       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_5
    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v11, v14}, Lcom/android/emailcommon/mail/Folder;->setSelect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 559
    .end local v3           #delimiter:Lcom/android/email/mail/store/imap/ImapString;
    .end local v4           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #folder:Ljava/lang/String;
    .end local v6           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #imapCommand:Ljava/lang/String;
    .end local v9           #inboxDelimiter:Lcom/android/email/mail/store/imap/ImapString;
    .end local v11           #newFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v12           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v13           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v1

    .line 563
    .local v1, afe:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :try_start_3
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 564
    const/4 v2, 0x0

    .line 565
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    .end local v1           #afe:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    .restart local v3       #delimiter:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v4       #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v5       #folder:Ljava/lang/String;
    .restart local v6       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #imapCommand:Ljava/lang/String;
    .restart local v9       #inboxDelimiter:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v11       #newFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v12       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v13       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_6
    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v11, v14}, Lcom/android/emailcommon/mail/Folder;->setDelimiter(I)V

    goto :goto_2

    .line 546
    .end local v3           #delimiter:Lcom/android/email/mail/store/imap/ImapString;
    .end local v4           #encodedFolder:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #folder:Ljava/lang/String;
    .end local v12           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_7
    const-string v14, "INBOX"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v11

    .line 547
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/emailcommon/mail/Folder;->setSelect(Z)V

    .line 548
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_9

    .line 549
    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/emailcommon/mail/Folder;->setDelimiter(I)V

    .line 553
    :goto_3
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const/4 v14, 0x0

    new-array v14, v14, [Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/android/emailcommon/mail/Folder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 567
    if-eqz v2, :cond_8

    .line 568
    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 569
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_8
    return-object v14

    .line 551
    :cond_9
    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v11, v14}, Lcom/android/emailcommon/mail/Folder;->setDelimiter(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;
    .locals 4

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .restart local v0       #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_1

    .line 616
    :try_start_0
    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v1

    const v2, 0xea60

    invoke-interface {v1, v2}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 621
    :cond_0
    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 628
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 633
    :cond_1
    if-nez v0, :cond_2

    .line 634
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .end local v0           #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    invoke-direct {v0, p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 635
    .restart local v0       #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    const-string v1, "Email:ImapStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT@CONN Got a new connection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :goto_1
    return-object v0

    .line 623
    :catch_0
    move-exception v1

    .line 628
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 630
    :goto_2
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 631
    const/4 v0, 0x0

    goto :goto_0

    .line 625
    :catch_1
    move-exception v1

    .line 628
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    throw v1

    .line 637
    :cond_2
    const-string v1, "Email:ImapStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT@CONN Reusing existing connection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method getConnectionPoolForTest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .line 440
    .local v0, folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 442
    .restart local v0       #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_0
    monitor-exit v2

    .line 445
    return-object v0

    .line 444
    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
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
    .line 451
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderIdleCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 468
    :try_start_0
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;-><init>(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 469
    .local v0, folder:Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;
    monitor-exit v2

    .line 470
    return-object v0

    .line 469
    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCapabilitySupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "cap"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2547
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2566
    :cond_0
    :goto_0
    return v2

    .line 2551
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 2553
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2562
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 2566
    goto :goto_0

    .line 2554
    :catch_0
    move-exception v1

    .line 2555
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    .line 2556
    goto :goto_0

    .line 2557
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2558
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    move v2, v3

    .line 2559
    goto :goto_0
.end method

.method poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 646
    if-eqz p1, :cond_0

    .line 647
    const-string v0, "Email:ImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT@CONN Released the connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_0
    return-void
.end method

.method public removeFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 488
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .line 490
    .local v0, folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_0
    monitor-exit v2

    .line 494
    return-void

    .line 493
    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public renameFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "orgName"
    .parameter "newName"

    .prologue
    .line 476
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .line 478
    .local v0, folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_0
    monitor-exit v2

    .line 483
    return-void

    .line 482
    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    .line 265
    return-void
.end method
