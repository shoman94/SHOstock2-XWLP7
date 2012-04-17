.class public Lcom/seven/Z7/app/SubscriptionStatus;
.super Ljava/lang/Object;
.source "SubscriptionStatus.java"


# static fields
.field public static final isLocalSubscriptionRenewalAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35
    const v1, 0x7f090006

    invoke-static {v1}, Lcom/seven/Z7/shared/ANSharedCommon;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/seven/Z7/app/SubscriptionStatus;->isLocalSubscriptionRenewalAvailable:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/seven/Z7/app/SubscriptionStatus;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriptionExpiredDialog(Landroid/app/Activity;Z)Landroid/app/Dialog;
    .locals 3
    .parameter "parentActivity"
    .parameter "finishActivity"

    .prologue
    .line 208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804b4

    new-instance v2, Lcom/seven/Z7/app/SubscriptionStatus$3;

    invoke-direct {v2}, Lcom/seven/Z7/app/SubscriptionStatus$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804b5

    new-instance v2, Lcom/seven/Z7/app/SubscriptionStatus$2;

    invoke-direct {v2}, Lcom/seven/Z7/app/SubscriptionStatus$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/seven/Z7/app/SubscriptionStatus$1;

    invoke-direct {v1, p0, p1}, Lcom/seven/Z7/app/SubscriptionStatus$1;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static hasExpiredAccounts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "status"

    aput-object v3, v2, v9

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 103
    .local v7, isExpired:Z
    if-eqz v6, :cond_2

    .line 105
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 109
    .local v8, status:I
    const/4 v0, 0x6

    if-ne v8, v0, :cond_3

    move v7, v9

    .line 110
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_0

    .line 113
    .end local v8           #status:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_2
    return v7

    .restart local v8       #status:I
    :cond_3
    move v7, v10

    .line 109
    goto :goto_0

    .line 113
    .end local v8           #status:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static hasPendingSubscriptionRenewalReminder()Z
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/seven/Z7/shared/ANSharedCommon;->getUISharedPreferences()Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    move-result-object v0

    const-string v1, "next_activation_reminder_time_key"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isApplicationUsageDisclaimerAccepted()Z
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/seven/Z7/shared/ANSharedCommon;->getUISharedPreferences()Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    move-result-object v0

    const-string v1, "subscription_disclaimer_accepted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static requestSubscriptionRenewalReminder(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 129
    const v5, 0x7f09000d

    invoke-static {v5}, Lcom/seven/Z7/shared/ANSharedCommon;->getInt(I)I

    move-result v3

    .line 140
    .local v3, brandedDelayInMins:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    mul-int/lit8 v7, v3, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long v0, v5, v7

    .line 143
    .local v0, alarmTime:J
    invoke-static {}, Lcom/seven/Z7/shared/ANSharedCommon;->getUISharedPreferences()Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->edit()Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v4

    .line 144
    .local v4, e:Landroid/content/SharedPreferences$Editor;
    const-string v5, "next_activation_reminder_time_key"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 148
    .local v2, am:Landroid/app/AlarmManager;
    const/4 v5, 0x1

    invoke-static {p0}, Lcom/seven/Z7/app/SubscriptionStatus;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 149
    return-void
.end method

.method public static setApplicationUsageDisclaimerAccepted(Z)V
    .locals 2
    .parameter "isAccepted"

    .prologue
    .line 92
    invoke-static {}, Lcom/seven/Z7/shared/ANSharedCommon;->getUISharedPreferences()Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->edit()Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    .line 93
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "subscription_disclaimer_accepted"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public static showConsultYourCarrierDialog(ILandroid/app/Activity;Z)Z
    .locals 3
    .parameter "errorCode"
    .parameter "parentActivity"
    .parameter "finishActivity"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, isErrorHandled:Z
    sget-boolean v1, Lcom/seven/Z7/app/SubscriptionStatus;->isLocalSubscriptionRenewalAvailable:Z

    if-nez v1, :cond_0

    .line 182
    sget-object v1, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_TRIALS_NOT_ACCEPTED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v1}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 184
    const v1, 0x7f08049d

    const v2, 0x7f08049e

    invoke-static {v1, v2, p1, p2}, Lcom/seven/Z7/app/SubscriptionStatus;->showContactCarrierErrorDialog(IILandroid/app/Activity;Z)V

    .line 186
    const/4 v0, 0x1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    sget-object v1, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_LIMIT_EXCEEDED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v1}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 189
    const v1, 0x7f08049f

    const v2, 0x7f0804a0

    invoke-static {v1, v2, p1, p2}, Lcom/seven/Z7/app/SubscriptionStatus;->showContactCarrierErrorDialog(IILandroid/app/Activity;Z)V

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    sget-object v1, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v1}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_3

    .line 193
    const v1, 0x7f0804a1

    const v2, 0x7f0804a2

    invoke-static {v1, v2, p1, p2}, Lcom/seven/Z7/app/SubscriptionStatus;->showContactCarrierErrorDialog(IILandroid/app/Activity;Z)V

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :cond_3
    sget-object v1, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v1}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 198
    const v1, 0x7f0804a3

    const v2, 0x7f0804a4

    invoke-static {v1, v2, p1, p2}, Lcom/seven/Z7/app/SubscriptionStatus;->showContactCarrierErrorDialog(IILandroid/app/Activity;Z)V

    .line 200
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static showContactCarrierErrorDialog(IILandroid/app/Activity;Z)V
    .locals 4
    .parameter "title"
    .parameter "message"
    .parameter "parentActivity"
    .parameter "finishActivity"

    .prologue
    .line 247
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804b1

    new-instance v3, Lcom/seven/Z7/app/SubscriptionStatus$5;

    invoke-direct {v3}, Lcom/seven/Z7/app/SubscriptionStatus$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/SubscriptionStatus$4;

    invoke-direct {v2, p3, p2}, Lcom/seven/Z7/app/SubscriptionStatus$4;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 261
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void
.end method
