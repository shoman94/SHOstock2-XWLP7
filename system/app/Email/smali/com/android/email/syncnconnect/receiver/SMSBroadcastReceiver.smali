.class public Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSBroadcastReceiver.java"


# static fields
.field private static smsStats:Lcom/android/email/mail/transport/DiscourseLogger;


# instance fields
.field private CLASS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->smsStats:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-string v0, "SMSBroadcastReceiver"

    iput-object v0, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public static dumpStats()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->smsStats:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->smsStats:Lcom/android/email/mail/transport/DiscourseLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse(Z)V

    .line 38
    :cond_0
    return-void
.end method

.method private handleGetPinSMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "pin"

    .prologue
    const/4 v5, 0x0

    .line 112
    iget-object v3, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Into handleGetPinSMS() method"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "snc_settings_preferences"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 117
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "isSMSExpected"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 119
    .local v1, isSMSExpected:Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "PIN_KEY"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v3, "ProvisioningState"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v3, "isSMSExpected"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    if-nez v1, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "SMS is not expected"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addProcessSMSRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static initStats()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(IZ)V

    sput-object v0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->smsStats:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 32
    return-void
.end method

.method private logStats(Ljava/lang/String;)V
    .locals 1
    .parameter "sms"

    .prologue
    .line 41
    sget-object v0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->smsStats:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->smsStats:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/transport/DiscourseLogger;->logString(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 49
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Into onReceive for SMSBroadcastReceiver"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v4, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->smsStats:Lcom/android/email/mail/transport/DiscourseLogger;

    if-nez v4, :cond_0

    .line 52
    invoke-static {}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->initStats()V

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 56
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    const-string v4, "parameters"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_1
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS received with text :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz v0, :cond_3

    .line 63
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, payload:[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    aget-object v4, v2, v8

    if-eqz v4, :cond_3

    aget-object v4, v2, v7

    if-eqz v4, :cond_3

    .line 65
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PayLoad[0] :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PayLoad[1] :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    aget-object v4, v2, v8

    const-string v5, "VZWPIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 68
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPIN() SMS Notification Received with PIN :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->abortBroadcast()V

    .line 72
    sget-boolean v4, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    if-nez v4, :cond_2

    .line 73
    aget-object v4, v2, v7

    invoke-direct {p0, p1, v4}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->handleGetPinSMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->logStats(Ljava/lang/String;)V

    .line 109
    .end local v2           #payload:[Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 76
    .restart local v2       #payload:[Ljava/lang/String;
    :cond_4
    aget-object v4, v2, v8

    const-string v5, "VZWNMN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 77
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS Notification Received with Mail Count :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->abortBroadcast()V

    .line 80
    aget-object v4, v2, v7

    if-eqz v4, :cond_5

    .line 81
    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, newMailCount:I
    new-instance v4, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver$1;

    invoke-direct {v4, p0, v1}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver$1;-><init>(Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;I)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 89
    .end local v1           #newMailCount:I
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->logStats(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_6
    aget-object v4, v2, v8

    const-string v5, "VZWUEP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 91
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS Notification Received with Endpoint Operation :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->abortBroadcast()V

    .line 95
    invoke-static {p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v3

    .line 96
    .local v3, sncImpl:Lcom/android/email/syncnconnect/SyncConnectImpl;
    aget-object v4, v2, v7

    invoke-virtual {v3, p1, v4}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addUpdateEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->logStats(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v3           #sncImpl:Lcom/android/email/syncnconnect/SyncConnectImpl;
    :cond_7
    aget-object v4, v2, v8

    const-string v5, "VZWRSC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    iget-object v4, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS Notification Received for deactivating SnC :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->abortBroadcast()V

    .line 102
    aget-object v4, v2, v7

    if-eqz v4, :cond_8

    aget-object v4, v2, v7

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 103
    invoke-static {p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->deactivateSnCAccount(Landroid/content/Context;)V

    .line 105
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->logStats(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
