.class public Lcom/android/email/activity/setup/AccountSetupAccountType;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCurrentOrientation:I

.field private mHorizontalLayout:Landroid/widget/LinearLayout;

.field private mVerticalLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method private isExchangeAvailable()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 377
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 378
    .local v9, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas"

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v9           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v8

    .line 380
    .local v8, storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v8, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 384
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :goto_0
    return v1

    .restart local v0       #uri:Ljava/net/URI;
    .restart local v8       #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :cond_0
    move v1, v10

    .line 380
    goto :goto_0

    .line 381
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :catch_0
    move-exception v1

    move v1, v10

    .line 384
    goto :goto_0
.end method

.method private onExchange()V
    .locals 15

    .prologue
    .line 269
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v11

    .line 270
    .local v11, mCheckAutodicoverCount:I
    if-eqz v11, :cond_0

    .line 271
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    .line 273
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getDomain()Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, domain:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 275
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setDomain(Ljava/lang/String;)V

    .line 278
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v9

    .line 280
    .local v9, accountType:I
    invoke-static {v9}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    .line 283
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 285
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_0
    new-instance v13, Ljava/net/URI;

    invoke-virtual {v8, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 286
    .local v13, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+"

    invoke-virtual {v13}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v13           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 304
    const/4 v2, -0x2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 305
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 312
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, salesCode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 315
    .local v1, syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const-string v2, "H3G"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3IE"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    :cond_2
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 356
    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    :goto_0
    invoke-virtual {v8, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 360
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 361
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 362
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->actionAutoDiscoverSetupExchangeIntent(Landroid/app/Activity;ZZ)V

    .line 366
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 367
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    .end local v12           #salesCode:Ljava/lang/String;
    :goto_2
    return-void

    .line 290
    :catch_0
    move-exception v14

    .line 296
    .local v14, use:Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080545

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 298
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_2

    .line 320
    .end local v14           #use:Ljava/net/URISyntaxException;
    .restart local v0       #uri:Ljava/net/URI;
    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    .restart local v12       #salesCode:Ljava/lang/String;
    :cond_3
    const-string v2, "NZC"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 321
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto :goto_0

    .line 326
    :cond_4
    const-string v2, "ILO"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 327
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x41a

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto :goto_0

    .line 331
    :cond_5
    const-string v2, "PCL"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 332
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto :goto_0

    .line 336
    :cond_6
    const-string v2, "MIR"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 337
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto/16 :goto_0

    .line 349
    :cond_7
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    .end local v1           #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .restart local v1       #syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    goto/16 :goto_0

    .line 365
    :cond_8
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-static {p0, v2, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_1
.end method

.method private onImap()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 231
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 232
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 234
    .local v2, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v2, :cond_0

    .line 235
    const-string v3, "imap"

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 236
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 237
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "imap"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 244
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 245
    invoke-static {v6}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 247
    const/4 v3, 0x7

    invoke-static {v6, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 249
    .local v1, accountType:I
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    .line 251
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 259
    .end local v1           #accountType:I
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v3, "Email"

    const-string v4, "AccountSetupAccountType Account is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_0
.end method

.method private onPop()V
    .locals 6

    .prologue
    .line 201
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 202
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 204
    .local v2, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v2, :cond_0

    .line 205
    const-string v3, "pop3"

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 206
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 207
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "pop"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 209
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 211
    const/4 v3, 0x2

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 213
    .local v1, accountType:I
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    .line 215
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 223
    .end local v1           #accountType:I
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v3, "Email"

    const-string v4, "AccountSetupAccountType Account is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_0
.end method


# virtual methods
.method checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 396
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-gez v0, :cond_0

    .line 423
    :goto_0
    return v6

    .line 406
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move v1, v7

    .line 409
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 411
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_5

    iget-object v3, p1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    .line 413
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 415
    goto :goto_1

    .line 417
    :cond_1
    if-eqz v2, :cond_2

    .line 418
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_2
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-ge v1, v0, :cond_4

    move v0, v6

    :goto_3
    move v6, v0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_3

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v7

    .line 423
    goto :goto_3

    .line 417
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 445
    :goto_0
    :pswitch_0
    return-void

    .line 430
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onPop()V

    goto :goto_0

    .line 434
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onImap()V

    goto :goto_0

    .line 438
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x7f10002d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 181
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    :goto_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f08002e

    const/16 v7, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 110
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    .line 112
    .local v3, flowMode:I
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 117
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    .line 176
    :goto_0
    return-void

    .line 123
    :cond_0
    const v4, 0x7f04000d

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->setContentView(I)V

    .line 125
    const v4, 0x7f10002b

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    .line 126
    const v4, 0x7f100030

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    .line 128
    const v4, 0x7f10002d

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v4, 0x7f10002e

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v4, 0x7f10002f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 131
    .local v1, exchangeButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v4, 0x7f100031

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v4, 0x7f100032

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v4, 0x7f100033

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 136
    .local v2, exchangeButton_land:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 155
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->isExchangeAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(I)V

    .line 160
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mCurrentOrientation:I

    .line 167
    iget v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 168
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 171
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
