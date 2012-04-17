.class public Lcom/digc/seven/SevenBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SevenBroadCastReceiver.java"


# static fields
.field private static SEVEN_ACTION:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const-string v0, "SevenBroadCastReceiver"

    iput-object v0, p0, Lcom/digc/seven/SevenBroadCastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 28
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "=============================================="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "\tSevenBroadCastReceiver.onReceive() "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tintent.getAction() :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "=============================================="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    .line 37
    invoke-static {v11}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 46
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-static {p2, p1}, Lcom/digc/seven/SevenMessageManager;->makeMessage(Landroid/content/Intent;Landroid/content/Context;)V

    .line 75
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_RECEIVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_2
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_SENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    const-string v5, "message_id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/digc/seven/SevenMessageManager;->basicMoveToSent(Landroid/content/Context;I)V

    .line 110
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_SENT BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_3
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncUpdateMessage(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_REMOVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_4
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_UPDATED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 124
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncUpdateMessage(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_UPDATED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_5
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.FOLDER_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 128
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncFolder(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_FOLDER_ADDED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_6
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.FOLDER_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 138
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncFolder(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_FOLDER_REMOVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    :cond_7
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.ACCOUNT_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 171
    const-string v5, "isp_type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 172
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : EVENT_ACCOUNT_REMOVED from IM."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    :cond_8
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_ACCOUNT_REMOVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/android/email/adapter/SevenAdapter;->getAccountFacade()Lcom/android/email/combined/AccountFacade;

    move-result-object v5

    const-string v6, "account_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/email/combined/AccountFacade;->removeAccount(I)V

    goto/16 :goto_0

    .line 197
    :cond_9
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.ACCOUNT_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 199
    const-string v5, "isp_type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 200
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : ACCOUNT_ADDED from IM."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    :cond_a
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : ACCOUNT_ADDED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/email/adapter/SevenAdapter;->getAccountFacade()Lcom/android/email/combined/AccountFacade;

    move-result-object v5

    const-string v6, "account_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "account_name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/email/combined/AccountFacade;->addedAccount(ILjava/lang/String;)V

    .line 213
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End ACCOUNT_ADD BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    :cond_b
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "package:com.seven.Z7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "SEVEN_ACTION = package:com.seven.Z7 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p1}, Lcom/android/email/adapter/SevenAdapter;->deleteSevenAccountForEmail(Landroid/content/Context;)V

    .line 224
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "data clear success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 227
    .local v0, activityManager:Landroid/app/ActivityManager;
    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 233
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :cond_c
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 234
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBooleanExtra = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "package:com.seven.Z7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    const-string v5, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 240
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "SEVEN_ACTION = package:com.seven.Z7 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {p1}, Lcom/android/email/adapter/SevenAdapter;->deleteSevenAccountForEmail(Landroid/content/Context;)V

    .line 246
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "data clear success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_d
    invoke-static {v11}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Lcom/android/email/adapter/ProtocolAdapter;->setEnabled(ZZ)Z

    .line 255
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 257
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 265
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :cond_e
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.RANGE_EMAIL_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 266
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :EVENT_RANGE_EMAIL_REMOVED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 268
    .local v1, bun:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 269
    .local v4, se:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 270
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, key:Ljava/lang/String;
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 274
    .end local v3           #key:Ljava/lang/String;
    :cond_f
    invoke-static {p2, p1}, Lcom/digc/seven/SevenMessageManager;->syncMessageTimeLimit(Landroid/content/Intent;Landroid/content/Context;)V

    .line 275
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End TimeLimitMessage BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    .end local v1           #bun:Landroid/os/Bundle;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #se:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 280
    invoke-static {v11}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Lcom/android/email/adapter/ProtocolAdapter;->setEnabled(ZZ)Z

    goto/16 :goto_0

    .line 284
    :cond_11
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :Not Used Action Event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
