.class public Lcom/android/mms/transaction/SmsSenderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsSenderReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecipients:[Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsSenderReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsSenderReceiver;->sendMessage()V

    return-void
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "dests"

    .prologue
    .line 52
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v3, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 54
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method

.method private sendMessage()V
    .locals 7

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mRecipients:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/transaction/SmsSenderReceiver;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v4

    .line 43
    .local v4, threadId:J
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mRecipients:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mText:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 45
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v6

    .line 47
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Mms/SmsSender "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mContext:Landroid/content/Context;

    .line 29
    const-string v0, "text"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mText:Ljava/lang/String;

    .line 30
    const-string v0, "recipient"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsSenderReceiver;->mRecipients:[Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/android/mms/transaction/SmsSenderReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsSenderReceiver$1;-><init>(Lcom/android/mms/transaction/SmsSenderReceiver;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsSenderReceiver$1;->start()V

    .line 38
    return-void
.end method
