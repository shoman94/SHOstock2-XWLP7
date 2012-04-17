.class public Lcom/android/email/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Controller$ControllerStats;,
        Lcom/android/email/Controller$ControllerService;,
        Lcom/android/email/Controller$ServiceCallbackWrapper;,
        Lcom/android/email/Controller$ServiceCallback;,
        Lcom/android/email/Controller$LegacyListener;,
        Lcom/android/email/Controller$MessageRetrievalListenerBridge;,
        Lcom/android/email/Controller$Result;,
        Lcom/android/email/Controller$PendingDownloadController;,
        Lcom/android/email/Controller$AccountMoveMessageInfo;
    }
.end annotation


# static fields
.field private static final BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

.field private static mAttachdownstop:Z

.field private static mContextnoti:Landroid/content/Context;

.field private static mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

.field private static sCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/email/Controller;


# instance fields
.field public bEAS2POP_EASTrashMove_Complete:Z

.field public bLoadingMessages:Z

.field private mAccountMoveList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$AccountMoveMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

.field private final mContext:Landroid/content/Context;

.field public mLegacyController:Lcom/android/email/MessagingController;

.field final mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyListener:Lcom/android/email/Controller$LegacyListener;

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

.field private mProviderContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    sput-boolean v2, Lcom/android/email/Controller;->mAttachdownstop:Z

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 198
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    .line 214
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "_context"

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .line 167
    new-instance v0, Lcom/android/email/ControllerUtility$CallbackWrapper;

    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Lcom/android/email/ControllerUtility$CallbackWrapper;-><init>(Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    .line 172
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    .line 237
    iput-boolean v2, p0, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/email/Controller;->bLoadingMessages:Z

    .line 2687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 5931
    new-instance v0, Lcom/android/email/Controller$17;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$17;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    .line 292
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 293
    sput-object p1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    .line 294
    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 295
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    .line 296
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    sget-object v2, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    iget-object v3, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v4, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->initProtocolAdapter(Landroid/content/Context;Lcom/android/email/Controller$Result;Lcom/android/email/Controller$ServiceCallback;Lcom/android/email/MessagingController;Lcom/android/email/Controller$LegacyListener;)V

    .line 307
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/android/email/Controller$ControllerStats;->init()V

    .line 312
    :cond_0
    return-void
.end method

.method public static IsAttachdownstop()Z
    .locals 1

    .prologue
    .line 6982
    sget-boolean v0, Lcom/android/email/Controller;->mAttachdownstop:Z

    return v0
.end method

.method public static SetAttachdownstop(Z)V
    .locals 1
    .parameter "attachdownstop"

    .prologue
    .line 6986
    sput-boolean p0, Lcom/android/email/Controller;->mAttachdownstop:Z

    .line 6988
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6989
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->setCopyCancel(Z)V

    .line 6991
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/email/Controller;->deleteMessageSync([J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/Controller;[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/email/Controller;->deleteMessageSyncForAllAccount([J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/Controller;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/Controller;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/Controller;Lcom/android/email/Controller$PendingDownloadController;)Lcom/android/email/Controller$PendingDownloadController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/Controller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/email/Controller;->processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method private deleteMessageSync([J)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2080
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    aget-wide v1, p1, v10

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 2082
    if-nez v2, :cond_1

    .line 2286
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessageSync() is called : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v3, p1, v10

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    .line 2092
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    aget-wide v3, p1, v10

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2094
    if-eqz v0, :cond_0

    .line 2099
    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2101
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 2103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2104
    array-length v4, v0

    move v1, v10

    :goto_1
    if-ge v1, v4, :cond_2

    aget-wide v5, v0, v1

    .line 2105
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2107
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2108
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    aget-wide v3, p1, v10

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->getMailboxId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 2109
    const-string v0, "Controller"

    const-string v3, "Mail is getting deleted for Snc Account"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessage(Ljava/util/HashSet;JJ)Z

    goto :goto_0

    .line 2115
    :cond_3
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2116
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2117
    const-string v4, "mailboxKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2120
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v3

    if-ne v3, v9, :cond_8

    invoke-static {v8}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/adapter/ProtocolAdapter;->hasExpiredAccounts()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2125
    :cond_4
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, v11, :cond_6

    .line 2126
    :cond_5
    array-length v3, p1

    move v0, v10

    :goto_2
    if-ge v0, v3, :cond_7

    aget-wide v4, p1, v0

    .line 2131
    iget-object v6, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2134
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2139
    invoke-virtual {v1, v4, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2126
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2149
    :cond_6
    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    .line 2163
    :cond_7
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v1, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    .line 2278
    :goto_3
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    move v4, v11

    move v5, v10

    move v6, v10

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    .line 2271
    :cond_8
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessageSync([JJ)V

    goto :goto_3
.end method

.method private deleteMessageSyncForAllAccount([J)V
    .locals 13
    .parameter

    .prologue
    .line 2290
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 2292
    const-string v0, "Controller"

    const-string v1, "deleteMessageSyncForAllAccount() is called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    array-length v12, p1

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_6

    aget-wide v3, p1, v10

    .line 2295
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 2296
    if-nez v2, :cond_1

    .line 2449
    :cond_0
    :goto_1
    return-void

    .line 2298
    :cond_1
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2302
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x6

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v5

    .line 2305
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2307
    if-eqz v0, :cond_0

    .line 2312
    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2314
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2315
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2316
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->getMailboxId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 2317
    const-string v0, "Controller"

    const-string v3, "Mail is getting deleted for Snc Account"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    iget-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessage(Ljava/util/HashSet;JJ)Z

    .line 2294
    :goto_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 2323
    :cond_2
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2324
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2325
    const-string v8, "mailboxKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2327
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v7

    if-nez v7, :cond_5

    .line 2328
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 2332
    :cond_3
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2335
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2340
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 2348
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v7, 0x0

    aput-wide v3, v1, v7

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    goto :goto_2

    .line 2425
    :cond_5
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/adapter/ProtocolAdapter;->deleteMessageSync([JJ)V

    goto :goto_2

    .line 2431
    :cond_6
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2435
    invoke-static {v2, v3}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2436
    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    goto :goto_3

    .line 2444
    :cond_8
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .locals 2
    .parameter "_context"

    .prologue
    .line 328
    const-class v1, Lcom/android/email/Controller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/android/email/Controller;

    invoke-direct {v0, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    .line 331
    :cond_0
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getServiceCallback()Lcom/android/email/Controller$ServiceCallback;
    .locals 1

    .prologue
    .line 6708
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    return-object v0
.end method

.method public static declared-synchronized injectMockControllerForTest(Lcom/android/email/Controller;)V
    .locals 2
    .parameter "mockController"

    .prologue
    .line 340
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit v0

    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLegacy(J)Z
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3945
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3946
    .local v0, transportType:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPop(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 3950
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSnc(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 3955
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnifiedAccount(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 3960
    invoke-static {p0, p1}, Lcom/android/email/adapter/ProtocolAdapter;->getProviderType(J)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAttachmentOfEAS(JJJJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p7, p8, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v0

    .line 2811
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2812
    const-string v0, "loadAttachmentOfEAS"

    const-string v1, "Something goes wrong now.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const/4 v0, 0x0

    .line 2815
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2825
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2827
    const-string v2, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveMessageToSameAccount() is called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v13, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v13

    .line 2830
    :try_start_0
    array-length v6, p1

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget-wide v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2831
    const/4 v4, 0x0

    .line 2832
    iget-object v2, p0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2833
    iget-wide v9, v2, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-nez v2, :cond_0

    .line 2834
    const/4 v2, 0x1

    .line 2839
    :goto_1
    if-nez v2, :cond_1

    .line 2840
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2830
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 2844
    :cond_2
    invoke-static/range {p3 .. p4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-object v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/adapter/ProtocolAdapter;->moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    .line 3154
    monitor-exit v13

    .line 3155
    return-void

    .line 3154
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method private processPendingMessages_AccountmoveIsneededAfterAttachmentDownload()V
    .locals 36

    .prologue
    .line 2700
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    .local v21, final_messageId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v7, -0x1

    .line 2703
    .local v7, final_source_accountId:J
    const-wide/16 v13, -0x1

    .line 2704
    .local v13, final_source_boxId:J
    const-wide/16 v9, -0x1

    .line 2705
    .local v9, final_target_accountId:J
    const-wide/16 v11, -0x1

    .local v11, final_target_boxId:J
    move-wide/from16 v26, v11

    .end local v11           #final_target_boxId:J
    .local v26, final_target_boxId:J
    move-wide/from16 v24, v9

    .end local v9           #final_target_accountId:J
    .local v24, final_target_accountId:J
    move-wide/from16 v22, v7

    .line 2708
    .end local v7           #final_source_accountId:J
    .local v22, final_source_accountId:J
    :goto_0
    const/4 v15, 0x0

    .line 2709
    .local v15, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    const/16 v17, 0x0

    .line 2711
    .local v17, bDelay:Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 2714
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2715
    monitor-exit v31

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2802
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :goto_1
    return-void

    .line 2719
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    :cond_0
    const/16 v19, 0x0

    .line 2720
    .local v19, btrylater:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2721
    .local v16, AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    .line 2725
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_3

    .line 2726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2727
    const/16 v19, 0x1

    .line 2736
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_2
    if-eqz v19, :cond_4

    .line 2737
    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2781
    .end local v19           #btrylater:Z
    .end local v28           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :goto_3
    :try_start_1
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 2731
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v19       #btrylater:Z
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_2
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, 0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_1

    .line 2732
    const/16 v17, 0x1

    goto :goto_2

    .line 2740
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_4
    if-nez v17, :cond_a

    .line 2741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2742
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v15, v16

    .line 2744
    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, -0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_6

    .line 2745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2781
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :goto_4
    :try_start_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2783
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 2787
    .local v6, source_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/android/email/Controller;->moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V

    .line 2793
    .end local v6           #source_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_5
    const-wide/16 v4, 0x12c

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-wide/from16 v26, v11

    .end local v11           #final_target_boxId:J
    .restart local v26       #final_target_boxId:J
    move-wide/from16 v24, v9

    .end local v9           #final_target_accountId:J
    .restart local v24       #final_target_accountId:J
    move-wide/from16 v22, v7

    .line 2799
    .end local v7           #final_source_accountId:J
    .restart local v22       #final_source_accountId:J
    goto/16 :goto_0

    .line 2747
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_6
    :try_start_5
    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    const-wide/16 v32, 0x1

    cmp-long v4, v4, v32

    if-nez v4, :cond_7

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2748
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    goto :goto_4

    .line 2751
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    :cond_7
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 2753
    .local v30, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v0, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-wide/from16 v32, v0

    iget-wide v0, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, v34

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v30

    .line 2755
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2756
    iget-wide v4, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    iget-wide v7, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2759
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    :try_start_6
    iget-wide v13, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    .line 2760
    iget-wide v9, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_accountId:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2761
    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    :try_start_7
    iget-wide v11, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_boxId:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2763
    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 2781
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v19           #btrylater:Z
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v30           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v4

    goto/16 :goto_3

    .line 2765
    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v19       #btrylater:Z
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    .restart local v28       #i$:Ljava/util/Iterator;
    .restart local v30       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_8
    const/16 v18, 0x1

    .line 2766
    .local v18, bret:Z
    :try_start_9
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 2767
    .local v29, id:Ljava/lang/Long;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    iget-wide v9, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    iget-wide v11, v15, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/email/Controller;->loadAttachmentOfEAS(JJJJ)Z

    move-result v18

    .line 2769
    if-nez v18, :cond_9

    .line 2770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v29           #id:Ljava/lang/Long;
    :cond_9
    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .line 2778
    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    goto/16 :goto_4

    .line 2794
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v18           #bret:Z
    .end local v30           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception v20

    .line 2795
    .local v20, e:Ljava/lang/InterruptedException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2796
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 2797
    monitor-exit v5

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2799
    .end local v20           #e:Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v4

    throw v4

    .line 2781
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .restart local v16       #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    .restart local v30       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_4
    move-exception v4

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    goto/16 :goto_3

    .end local v11           #final_target_boxId:J
    .restart local v26       #final_target_boxId:J
    :catchall_5
    move-exception v4

    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    goto/16 :goto_3

    .end local v7           #final_source_accountId:J
    .end local v9           #final_target_accountId:J
    .end local v11           #final_target_boxId:J
    .end local v16           #AMitem:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v30           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22       #final_source_accountId:J
    .restart local v24       #final_target_accountId:J
    .restart local v26       #final_target_boxId:J
    :cond_a
    move-wide/from16 v11, v26

    .end local v26           #final_target_boxId:J
    .restart local v11       #final_target_boxId:J
    move-wide/from16 v9, v24

    .end local v24           #final_target_accountId:J
    .restart local v9       #final_target_accountId:J
    move-wide/from16 v7, v22

    .end local v22           #final_source_accountId:J
    .restart local v7       #final_source_accountId:J
    goto/16 :goto_4
.end method

.method private setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;
    .locals 7
    .parameter "messageIds"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "currentAccountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            "ZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3382
    new-instance v0, Lcom/android/email/Controller$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$14;-><init>(Lcom/android/email/Controller;[JLjava/lang/String;ZJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private setMessageInt([JLjava/lang/String;IJ)Landroid/os/AsyncTask;
    .locals 7
    .parameter "messageIds"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "currentAccountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            "IJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3517
    new-instance v0, Lcom/android/email/Controller$15;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$15;-><init>(Lcom/android/email/Controller;Ljava/lang/String;I[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static showSendingNotification_fail(JJLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 6344
    :try_start_0
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_fail() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6373
    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    .line 6374
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 6375
    iget-object p4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 6376
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 6379
    :goto_0
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 6381
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 6386
    :goto_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 6387
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    .line 6389
    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6391
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0202aa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 6392
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 6393
    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6394
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 6395
    long-to-int v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6396
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 6401
    :cond_0
    :goto_2
    return-void

    .line 6384
    :cond_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v3, 0x7f08050b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 6398
    :catch_0
    move-exception v0

    .line 6399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-wide v1, p2

    goto/16 :goto_0
.end method

.method public static showSendingNotification_finish(JJLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 6281
    :try_start_0
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_finish() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6310
    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    .line 6311
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 6312
    if-eqz v0, :cond_2

    .line 6313
    iget-wide p2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v1, p2

    .line 6316
    :goto_0
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 6318
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 6323
    :goto_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 6324
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    .line 6326
    sget-object v1, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6328
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0202aa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 6329
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 6330
    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v3, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v4, 0x7f08050c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6331
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    sget-object v2, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 6332
    long-to-int v2, p0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6333
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 6340
    :cond_0
    :goto_2
    return-void

    .line 6321
    :cond_1
    sget-object v0, Lcom/android/email/Controller;->mContextnoti:Landroid/content/Context;

    const v3, 0x7f08050c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 6336
    :catch_0
    move-exception v0

    .line 6337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-wide v1, p2

    goto/16 :goto_0
.end method


# virtual methods
.method public OnCleanup()V
    .locals 0

    .prologue
    .line 6604
    invoke-static {}, Lcom/android/email/adapter/ProtocolAdapter;->doCleanup()V

    .line 6605
    return-void
.end method

.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 364
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v1

    .line 377
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    .line 6645
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6646
    const-string v2, "EVENT@CONTR"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addUserAccount] [endpointName - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[userName - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[password - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-eqz v0, :cond_1

    move-object v0, p4

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[serviceList - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6650
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 6651
    :cond_0
    const-string v0, "Controller"

    const-string v2, "[addUserAccount] INVALID Arguments"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6652
    const-string v0, "status_text"

    const-string v2, "Invalid arguments"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6653
    const-string v0, "status_code"

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6654
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    .line 6679
    :goto_1
    return-void

    .line 6646
    :cond_1
    sget-object v0, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_0

    .line 6658
    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6659
    const-string v0, "EVENT@CONTR"

    const-string v2, "addUserAccount | Airplane mode ON"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6660
    const-string v0, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6662
    const-string v0, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6663
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_1

    .line 6667
    :cond_3
    sput-boolean v4, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    .line 6671
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->setRestoreFlowDone(Landroid/content/Context;Z)V

    .line 6673
    new-instance v0, Lcom/android/email/Controller$19;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$19;-><init>(Lcom/android/email/Controller;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public changeSmsSettings(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1689
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1703
    :goto_0
    return-void

    .line 1702
    :cond_0
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->changeSmsSettings(J)V

    goto :goto_0
.end method

.method public cleanupForTest()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 322
    return-void
.end method

.method public createFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;
    .locals 1
    .parameter "folderName"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    new-instance v0, Lcom/android/email/Controller$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(Ljava/lang/String;JJZ)Landroid/os/AsyncTask;
    .locals 8
    .parameter "folderName"
    .parameter "mailboxId"
    .parameter "accountKey"
    .parameter "root"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Lcom/android/email/Controller$5;

    move-object v1, p0

    move-wide v2, p2

    move v4, p6

    move-object v5, p1

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$5;-><init>(Lcom/android/email/Controller;JZLjava/lang/String;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method createMailbox(JI)J
    .locals 4
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 1455
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    .line 1456
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1457
    .local v1, mes:Ljava/lang/String;
    const-string v2, "Email"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1460
    .end local v1           #mes:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 1461
    .local v0, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-wide p1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1462
    iput p3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 1463
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 1464
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 1465
    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getMailboxServerName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1467
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 1468
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1469
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    return-wide v2
.end method

.method public deleteAccount(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 4139
    new-instance v0, Lcom/android/email/Controller$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$16;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 4144
    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 2
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 4154
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4248
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->deleteAccountSync(JLandroid/content/Context;)V

    .line 4250
    return-void
.end method

.method public deleteAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    const/4 v3, 0x0

    .line 2013
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2014
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2015
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2016
    return-void
.end method

.method public deleteAttachmentMessages()V
    .locals 9

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 444
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 446
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 451
    .local v7, mailboxId:J
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 452
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    .end local v7           #mailboxId:J
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_0
    throw v1

    :cond_1
    if-eqz v6, :cond_2

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_2
    return-void
.end method

.method public deleteCalendarInvitation(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6994
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "sync_data2=?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteFolder(J)Landroid/os/AsyncTask;
    .locals 1
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    new-instance v0, Lcom/android/email/Controller$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$3;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "accountKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    .local p3, deleteMailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/Controller$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$2;-><init>(Lcom/android/email/Controller;JLjava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessage([JJ)V
    .locals 3
    .parameter "messageIds"
    .parameter "accountId"

    .prologue
    .line 2029
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    new-instance v0, Lcom/android/email/Controller$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 2063
    return-void
.end method

.method public deleteMessageLocal([J)V
    .locals 10
    .parameter "messageIds"

    .prologue
    .line 2066
    move-object v0, p1

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-wide v3, v0, v2

    .line 2067
    .local v3, id:J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2068
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "EasLocalDeleteFlag"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2069
    iget-object v6, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2066
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2072
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #id:J
    :cond_0
    return-void
.end method

.method public deleteSyncedDataSync(J)V
    .locals 5
    .parameter

    .prologue
    .line 4266
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 4274
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4275
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4278
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? AND type!=68"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4280
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4283
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4284
    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4285
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id =?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4286
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4287
    const-string v3, "syncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4288
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4298
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->deleteAccountPIMData(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4304
    :goto_0
    return-void

    .line 4301
    :catch_0
    move-exception v0

    .line 4302
    const-string v1, "Email"

    const-string v2, "Exception while deleting account synced data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public emptyTrash(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 3937
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->emptyTrash(J)V

    .line 3939
    return-void
.end method

.method public declared-synchronized findOrCreateMailboxOfType(JI)J
    .locals 6
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v2, -0x1

    .line 1403
    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    if-gez p3, :cond_2

    :cond_0
    move-wide v0, v2

    .line 1407
    :cond_1
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 1406
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 1407
    .local v0, mailboxId:J
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/Controller;->createMailbox(JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 1403
    .end local v0           #mailboxId:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 473
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 475
    .local v7, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 489
    .end local v7           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .local v8, m:Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 479
    .end local v8           #m:Ljava/lang/Object;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 481
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 482
    .restart local v7       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 483
    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 485
    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 486
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 487
    const/16 v0, 0x101

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 488
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-object v8, v7

    .line 489
    .restart local v8       #m:Ljava/lang/Object;
    goto :goto_0
.end method

.method public getAvailableAccounts(I)V
    .locals 4
    .parameter

    .prologue
    .line 6614
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6615
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAvailableAccounts][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6617
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6618
    const-string v1, "EVENT@CONTR"

    const-string v2, "getAvailableAccounts | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6619
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6621
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6622
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getCachedEndpoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getAvailableAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    .line 6631
    :goto_0
    return-void

    .line 6626
    :cond_0
    new-instance v0, Lcom/android/email/Controller$18;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$18;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getConversationID(Ljava/lang/String;)[B
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v0, 0x0

    .line 6250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 6251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array to encript cannot be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6253
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    move v1, v0

    .line 6256
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    .line 6257
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 6259
    aget-byte v3, v2, v0

    const/16 v4, -0x80

    if-ne v3, v4, :cond_3

    .line 6265
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x2

    .line 6266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6261
    :cond_3
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_2

    .line 6262
    aget-byte v3, v2, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 6263
    aget-byte v3, v2, v0

    mul-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_1

    .line 6276
    :cond_4
    return-object v2
.end method

.method getMailboxServerName(I)Ljava/lang/String;
    .locals 1
    .parameter "mailboxType"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/activity/ActivityResourceInterface;->getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutOfOffice(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1627
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [getOutOfOffice] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1631
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    .line 1647
    :goto_0
    return-void

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1638
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOutOfOffice | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_0

    .line 1645
    :cond_1
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getOutOfOffice(J)V

    goto :goto_0
.end method

.method public getResultCallbacksForTest()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-exit v1

    return-object v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserConfiguredAccounts(I)V
    .locals 4
    .parameter

    .prologue
    .line 6688
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6689
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUserConfiguredAccounts][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6691
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6692
    const-string v1, "EVENT@CONTR"

    const-string v2, "getUserConfiguredAccounts | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6693
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6695
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6696
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getUserConfiguredAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    .line 6705
    :goto_0
    return-void

    .line 6700
    :cond_0
    new-instance v0, Lcom/android/email/Controller$20;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$20;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getUserProfile(I)V
    .locals 4
    .parameter

    .prologue
    .line 6809
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6810
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUserprofile][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6812
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6813
    const-string v1, "EVENT@CONTR"

    const-string v2, "getUserProfile | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6814
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6816
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6817
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/Controller$ServiceCallback;->getUserProfileStatus(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 6825
    :goto_0
    return-void

    .line 6820
    :cond_0
    new-instance v0, Lcom/android/email/Controller$21;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Controller$21;-><init>(Lcom/android/email/Controller;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public hasPremiumExpiredAccounts()Z
    .locals 1

    .prologue
    .line 6527
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->hasExpiredAccounts()Z

    move-result v0

    return v0
.end method

.method public hasPremiumExpiredAccounts(JJ)Z
    .locals 1
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 6509
    invoke-virtual {p0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    return v0
.end method

.method public hostChanged(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 6592
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->hostChanged(J)V

    .line 6593
    return-void
.end method

.method public isMessagingController(J)Z
    .locals 3
    .parameter

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4105
    if-nez v0, :cond_1

    .line 4106
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 4107
    const-string v1, "pop3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "imap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4108
    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4110
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 4107
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 4098
    if-nez p1, :cond_0

    .line 4099
    const/4 v0, 0x0

    .line 4100
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    goto :goto_0
.end method

.method public loadAttachment(JJJI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3666
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAttachment() is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3670
    if-nez v0, :cond_0

    .line 3671
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3742
    :goto_0
    return-void

    .line 3676
    :cond_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3692
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3694
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    .line 3695
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x0

    const/16 v8, 0x190

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    .line 3698
    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x0

    const/16 v8, 0x64

    move-wide v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    .line 3740
    :cond_2
    invoke-static {p5, p6}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/adapter/ProtocolAdapter;->loadAttachment(JJJI)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V
    .locals 13
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "accountId"
    .parameter "callback"
    .parameter "prune"
    .parameter "reconnect"

    .prologue
    .line 3758
    const/4 v12, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZZ)V

    .line 3760
    return-void
.end method

.method public loadAttachment(JJJJLcom/android/email/Controller$Result;ZZZ)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p1

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v4

    .line 3769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 3776
    const-string v6, "Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Controller:loadAttachment() START ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [loadAttachment] [accId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [mbId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [msgId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [attId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_1

    .line 3783
    :cond_0
    const-string v4, "Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachment | Invalid parameter accountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mailboxId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x3d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3880
    :goto_0
    return-void

    .line 3791
    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 3792
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    .line 3800
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    .line 3815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v5, 0x0

    const/16 v12, 0x64

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    .line 3821
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3822
    const-string v4, "Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachment | Airplane mode ON accountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mailboxId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x5d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v12, 0x0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto/16 :goto_0

    .line 3878
    :cond_5
    invoke-static/range {p7 .. p8}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v4 .. v15}, Lcom/android/email/adapter/ProtocolAdapter;->loadAttachment(JJJJZZZ)V

    goto/16 :goto_0
.end method

.method public loadMessageForView(J)V
    .locals 7
    .parameter "messageId"

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    .line 1339
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v2

    .line 1341
    .local v2, accountId:J
    :cond_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 1342
    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMessageForView | Invalid parameter msg: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x3d

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 1368
    :goto_0
    return-void

    .line 1352
    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1353
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMessageForView | Airplane mode ON messageId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x5d

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1363
    :cond_3
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "[loadMessageForView] [accId - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [msgId - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->loadMessageForView(J)V

    goto :goto_0
.end method

.method public loadMessageFromUri(Landroid/net/Uri;I)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 15
    .parameter "uri"
    .parameter "accountId"

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/email/Controller;->getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    .line 504
    .local v13, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v13, :cond_0

    .line 505
    const/4 v1, 0x0

    .line 555
    :goto_0
    return-object v1

    .line 507
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    .line 508
    .local v14, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 510
    .local v11, accountID:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 514
    .local v12, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "__attachment_message__"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 516
    .local v3, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v3, v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    .line 518
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 519
    .local v2, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move/from16 v0, p2

    int-to-long v4, v0

    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v8, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static/range {v1 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 521
    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "application/x-pkcs7-mime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    .line 524
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 533
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 536
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 542
    .local v10, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-object v5, v3

    move-object v6, v2

    move-object v7, v13

    invoke-virtual/range {v4 .. v10}, Lcom/android/email/adapter/ProtocolAdapter;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 549
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    goto/16 :goto_0

    .line 525
    .end local v10           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_2
    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/signed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 529
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 550
    .end local v2           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v3           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v1

    .line 555
    .end local v12           #is:Ljava/io/InputStream;
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 553
    :catch_1
    move-exception v1

    goto :goto_2

    .line 551
    .restart local v12       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public loadMore(J)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 3890
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v0

    .line 3892
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [loadMore] [accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [msgId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    cmp-long v2, p1, v6

    if-lez v2, :cond_0

    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 3896
    :cond_0
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore | Invalid parameter msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 3918
    :goto_0
    return-void

    .line 3906
    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3907
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMoreStatus | Airplane mode ON messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 3917
    :cond_2
    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->loadMore(J)V

    goto :goto_0
.end method

.method public loadMoreCancel()V
    .locals 1

    .prologue
    .line 3923
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->loadMoreCancel()V

    .line 3925
    return-void
.end method

.method public loadMoreMessages(J)V
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 1946
    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1988
    return-void
.end method

.method public lookupAccountForMessage(J)J
    .locals 8
    .parameter "messageId"

    .prologue
    const/4 v4, 0x1

    .line 1996
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1997
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2002
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2004
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2002
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 2004
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 6841
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6842
    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    .line 6843
    const-string v0, "Controller"

    const-string v1, "[modifyUserAccount] INVALID Arguments"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6866
    :goto_0
    return-void

    .line 6846
    :cond_0
    const-string v2, "EVENT@CONTR"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[modifyUserAccount] [password - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-eqz v0, :cond_1

    move-object v0, p3

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[account name - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[display name - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[serviceList - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6851
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6852
    const-string v0, "EVENT@CONTR"

    const-string v2, "modifyUserAccount | Airplane mode ON"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6853
    const-string v0, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6855
    const-string v0, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6856
    sget-object v0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    goto/16 :goto_0

    .line 6846
    :cond_1
    sget-object v0, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_1

    .line 6860
    :cond_2
    new-instance v0, Lcom/android/email/Controller$22;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$22;-><init>(Lcom/android/email/Controller;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public moveConversationAlways(JLjava/lang/String;JJI)V
    .locals 7
    .parameter "mailboxId"
    .parameter "conversationId"
    .parameter "accountId"
    .parameter "toMailboxId"
    .parameter "ignore"

    .prologue
    .line 3996
    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-nez v0, :cond_0

    .line 4014
    :goto_0
    return-void

    .line 4009
    :cond_0
    invoke-static {p4, p5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p6

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->moveConversationAlways(JJ[BI)V

    .line 4013
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    goto :goto_0
.end method

.method public moveConversationIgnore(JLjava/lang/String;J)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 3967
    .line 3970
    :try_start_0
    const-string v0, "CONVID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConversationID start conversationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "6"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3977
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3982
    invoke-static {p4, p5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->moveConversationAlways(JJ[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3987
    :cond_0
    if-eqz v7, :cond_1

    .line 3988
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p1

    move v5, v8

    .line 3991
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    .line 3992
    return-void

    .line 3987
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 3988
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3987
    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_0
.end method

.method public moveFolder(JJ)V
    .locals 7
    .parameter "mailboxId"
    .parameter "dstMailboxId"

    .prologue
    const/4 v6, 0x0

    .line 950
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 951
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_0

    .line 952
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1006
    .local v1, dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1008
    .local v3, uri:Landroid/net/Uri;
    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 1009
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 1011
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1013
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1080
    .end local v1           #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_0
    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/email/adapter/ProtocolAdapter;->moveFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1081
    return-void

    .line 1068
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    iput-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 1070
    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 1071
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1072
    .restart local v0       #cv:Landroid/content/ContentValues;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1073
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveMessage(J[JJ)Landroid/os/AsyncTask;
    .locals 7
    .parameter "targetAccountId"
    .parameter "messageIds"
    .parameter "targetMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[JJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2464
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 2465
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 2467
    :cond_1
    new-instance v0, Lcom/android/email/Controller$11;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;[JJJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V
    .locals 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2521
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2522
    const/4 v3, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v18

    .line 2527
    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-wide v6, p1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2528
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 2530
    if-nez v7, :cond_1

    .line 2527
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2535
    :cond_1
    iget v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    if-nez v8, :cond_2

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 2540
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2542
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2684
    :goto_2
    return-void

    .line 2547
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    .line 2551
    invoke-static/range {v20 .. v20}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v21

    .line 2555
    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_5

    .line 2557
    const-string v3, "moveMessageToOtherAccountFolder()"

    const-string v4, "target account server is invalid.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2564
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v22

    .line 2577
    const/4 v3, 0x6

    move/from16 v0, v22

    if-ne v0, v3, :cond_6

    .line 2578
    const-string v3, "moveMessageToOtherAccountFolder()"

    const-string v4, "source account server is invalid.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2587
    :cond_6
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2589
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_d

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 2593
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_7
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 2594
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2595
    new-instance v3, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v5, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p3

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v0, p3

    invoke-static {v4, v0, v1, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;

    move-result-object v4

    .line 2606
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2607
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    .line 2613
    :goto_4
    const/4 v5, 0x0

    .line 2614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2616
    iget-wide v7, v4, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_8

    .line 2617
    const/4 v4, 0x1

    .line 2623
    :goto_5
    if-nez v4, :cond_7

    .line 2624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2627
    :catchall_0
    move-exception v3

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2609
    :cond_9
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    const-wide/16 v4, 0x1

    iput-wide v4, v3, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    goto :goto_4

    .line 2627
    :cond_a
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2655
    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2662
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    move-object/from16 v4, v23

    move-wide/from16 v5, p3

    move-wide/from16 v7, p9

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, v18

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-virtual/range {v3 .. v16}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V

    .line 2670
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    monitor-enter v4

    .line 2671
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    if-nez v3, :cond_c

    .line 2673
    new-instance v3, Lcom/android/email/Controller$PendingDownloadController;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/Controller$PendingDownloadController;-><init>(Lcom/android/email/Controller;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/Controller;->mProcessAccountMovingPendingDownload:Lcom/android/email/Controller$PendingDownloadController;

    .line 2674
    new-instance v3, Lcom/android/email/Controller$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;)V

    invoke-virtual {v3}, Lcom/android/email/Controller$12;->start()V

    .line 2683
    :cond_c
    monitor-exit v4

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 2630
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 2631
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_e
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 2632
    new-instance v3, Lcom/android/email/Controller$AccountMoveMessageInfo;

    const/4 v5, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p3

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/android/email/Controller$AccountMoveMessageInfo;-><init>(Lcom/android/email/Controller;IJJJJJI)V

    .line 2636
    const/4 v5, 0x0

    .line 2637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 2638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2639
    iget-wide v7, v4, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_f

    .line 2640
    const/4 v4, 0x1

    .line 2646
    :goto_8
    if-nez v4, :cond_e

    .line 2647
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller;->mAccountMoveList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2651
    :catchall_2
    move-exception v3

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    :cond_10
    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_6

    :cond_11
    move v4, v5

    goto :goto_8

    :cond_12
    move v4, v5

    goto/16 :goto_5
.end method

.method public refreshIRMTemplates(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 4021
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->refreshIRMTemplates(J)V

    .line 4022
    return-void
.end method

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 415
    if-eqz p1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 417
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 419
    monitor-exit v1

    .line 430
    :cond_0
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renameFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;
    .locals 1
    .parameter "folderName"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    new-instance v0, Lcom/android/email/Controller$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public resetCheckSyncLookbackForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 6951
    if-nez p1, :cond_1

    .line 6952
    const-string v0, "Controller"

    const-string v1, "resetCheckSyncLookbackForAccount | account is null"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6976
    :cond_0
    :goto_0
    return-void

    .line 6955
    :cond_1
    const-string v0, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCheckSyncLookbackForAccount | For account - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6957
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3, v5, v5}, Lcom/android/emailcommon/utility/Utility;->restoreMailboxList(Landroid/content/Context;JLjava/lang/String;[Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 6958
    if-nez v2, :cond_2

    .line 6959
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCheckSyncLookbackForAccount | Fail. No mailboxes for account - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6964
    :cond_2
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 6965
    const-string v5, "Controller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting syncStatus to RESET for mailbox - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6966
    iget-object v5, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x3

    invoke-static {v5, v6, v7, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    .line 6964
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6970
    :cond_3
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 6971
    if-eqz v0, :cond_0

    .line 6972
    const-string v1, "Controller"

    const-string v2, "Restarting sync for INBOX based on new syncInterval"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6973
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    goto/16 :goto_0
.end method

.method public saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 5
    .parameter "message"
    .parameter "mailboxType"

    .prologue
    .line 1379
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1380
    .local v0, accountId:J
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 1381
    .local v2, mailboxId:J
    iput-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1383
    iput p2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    .line 1385
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1386
    return-void
.end method

.method public searchOnServer(JLjava/lang/String;)V
    .locals 1
    .parameter "mailboxId"
    .parameter "searchText"

    .prologue
    .line 1902
    new-instance v0, Lcom/android/email/Controller$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/Controller$8;->start()V

    .line 1934
    return-void
.end method

.method public sendMeetingEditedResponse(JJI)V
    .locals 7
    .parameter "messageId"
    .parameter "draftMessageId"
    .parameter "response"

    .prologue
    .line 3644
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 3646
    .local v6, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_0

    .line 3652
    :goto_0
    return-void

    .line 3650
    :cond_0
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->sendMeetingEditedResponse(JJI)V

    goto :goto_0
.end method

.method public sendMeetingResponse(JI)V
    .locals 3
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 3618
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 3620
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_0

    .line 3627
    :goto_0
    return-void

    .line 3624
    :cond_0
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->sendMeetingResponse(JI)V

    goto :goto_0
.end method

.method public sendMessage(JJ)V
    .locals 10
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1487
    .local v8, resolver:Landroid/content/ContentResolver;
    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_0

    .line 1488
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 1490
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x3d

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 1588
    :goto_0
    return-void

    .line 1502
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    .line 1503
    .local v1, outboxId:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1504
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "mailboxKey"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1507
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1508
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v9, v7, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1510
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v3, "sendMessage() MOVE TO OUTBOX"

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1578
    const-string v0, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage | Airplane mode ON messageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    .end local v1           #outboxId:J
    const/16 v3, 0x5d

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1586
    .restart local v1       #outboxId:J
    :cond_2
    invoke-static {p3, p4}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->sendMessage(JJJ)V

    goto :goto_0
.end method

.method public sendPendingMessages(J)V
    .locals 9
    .parameter "accountId"

    .prologue
    const/16 v3, 0x3d

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 1811
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [sendPendingMessages] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1815
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPendingMessages | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    .line 1854
    :goto_0
    return-void

    .line 1825
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1826
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1838
    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v7

    .line 1840
    .local v7, outboxId:J
    cmp-long v0, v7, v4

    if-nez v0, :cond_2

    .line 1841
    const-string v0, "Controller"

    const-string v1, "Outbox not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/ControllerUtility$CallbackWrapper;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1852
    :cond_2
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->sendPendingMessages(J)V

    goto :goto_0
.end method

.method public serviceCheckMail(JJJ)V
    .locals 9
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    const-wide/16 v1, 0x0

    const/16 v6, 0x64

    .line 1154
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail | Airplane mode ON mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    .line 1185
    :goto_0
    return-void

    .line 1166
    :cond_0
    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    cmp-long v0, p3, v1

    if-gtz v0, :cond_2

    .line 1167
    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    .line 1178
    :cond_2
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [serviceCheckMail] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Tag - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v7, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/adapter/ProtocolAdapter;->serviceCheckMail(JJJLcom/android/email/Controller$Result;)V

    goto/16 :goto_0
.end method

.method public serviceLogging(I)V
    .locals 2
    .parameter "debugFlags"

    .prologue
    .line 564
    new-instance v0, Lcom/android/email/Controller$1;

    const-string v1, "serviceLogging"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/email/Controller$1;->start()V

    .line 570
    return-void
.end method

.method public setMessageFavorite([JZJ)Landroid/os/AsyncTask;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3362
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 3368
    const-string v2, "flagFavorite"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JIJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;III)V

    .line 3511
    const-string v2, "flagStatus"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageInt([JLjava/lang/String;IJ)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageRead([JZJ)Landroid/os/AsyncTask;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    invoke-static {p1}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 3202
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3203
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    if-eqz v1, :cond_0

    .line 3204
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEasLocalChangeEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3205
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageReadLocal([JZJ)Landroid/os/AsyncTask;

    move-result-object v0

    .line 3208
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "flagRead"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0
.end method

.method public setMessageRead(JZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3246
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 3247
    if-nez v0, :cond_0

    .line 3319
    :goto_0
    return-void

    .line 3251
    :cond_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 3252
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v1

    if-nez v1, :cond_1

    .line 3253
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3254
    const-string v2, "flagRead"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3255
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3257
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3258
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3310
    :cond_1
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->setMessageRead(JZ)V

    .line 3314
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_0
.end method

.method public setMessageReadLocal([JZJ)Landroid/os/AsyncTask;
    .locals 1
    .parameter "messageIds"
    .parameter "isRead"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3214
    new-instance v0, Lcom/android/email/Controller$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$13;-><init>(Lcom/android/email/Controller;[JZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .locals 6
    .parameter "accountId"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1664
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [setOutOfOffice] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1668
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid account ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    .line 1685
    :goto_0
    return-void

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1676
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutOfOffice | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_0

    .line 1683
    :cond_1
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto :goto_0
.end method

.method public setProviderContext(Landroid/content/Context;)V
    .locals 0
    .parameter "providerContext"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 352
    return-void
.end method

.method public setupPushForUnifiedAccount()V
    .locals 5

    .prologue
    .line 6873
    const-string v0, "EVENT@CONTR"

    const-string v1, "setupPushForUnifiedAccount"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6874
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 6875
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 6876
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 6877
    :cond_0
    const-string v2, "TAG_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupPushForUnifiedAccount | No unified account/mailbox -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6883
    :goto_0
    return-void

    .line 6882
    :cond_1
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/MessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V

    goto :goto_0
.end method

.method public updateMailbox(JJZ)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 1281
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller:updateMailbox() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [updateMailbox] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox | Airplane mode ON accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1312
    :goto_0
    return-void

    .line 1298
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    cmp-long v0, p3, v3

    if-gtz v0, :cond_2

    .line 1299
    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailbox | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    .line 1309
    :cond_2
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/ProtocolAdapter;->updateMailbox(JJZ)V

    goto :goto_0
.end method

.method public updateMailboxList(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 649
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList | Airplane mode ON accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 677
    :goto_0
    return-void

    .line 660
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 661
    :cond_1
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMailboxList | Invalid parameter accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/android/email/ControllerUtility$CallbackWrapper;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 672
    :cond_2
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getTransportString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [updateMailboxList] [accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->updateMailboxList(J)V

    goto :goto_0
.end method

.method public updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 6894
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6895
    const-string v1, "EVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateUserprofile][mType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[SncProfile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6898
    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailConnectivityManager;->canConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6899
    const-string v1, "EVENT@CONTR"

    const-string v2, "updateUserProfile | Airplane mode ON"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6900
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6902
    const-string v1, "status_code"

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6903
    sget-object v1, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller$ServiceCallback;->updateUserProfileStatus(Landroid/os/Bundle;)V

    .line 6912
    :goto_0
    return-void

    .line 6907
    :cond_0
    new-instance v0, Lcom/android/email/Controller$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$23;-><init>(Lcom/android/email/Controller;ILcom/android/email/syncnconnect/utils/SncProfile;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
