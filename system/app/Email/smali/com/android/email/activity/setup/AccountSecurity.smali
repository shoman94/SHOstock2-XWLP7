.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;,
        Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mTriedAddAdministrator:Z

.field private mTriedSetEncryption:Z

.field private mTriedSetExtEncryption:Z

.field private mTriedSetPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    .line 366
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    return-void
.end method

.method public static actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v0, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    if-eqz p3, :cond_0

    const-string v0, "EXPIRED"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    return-object v1

    .line 96
    :cond_0
    const-string v0, "EXPIRING"

    goto :goto_0
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const-string v1, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 79
    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method private repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .locals 1
    .parameter "account"
    .parameter "security"

    .prologue
    .line 294
    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 300
    return-void
.end method

.method private tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 11
    .parameter "account"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v10, 0x1

    .line 178
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    .line 182
    .local v4, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v5

    if-nez v5, :cond_2

    .line 183
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    if-eqz v5, :cond_0

    .line 184
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 287
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 189
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 190
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v0, :cond_1

    .line 191
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 196
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    const-string v5, "android.app.extra.ADD_EXPLANATION"

    const v6, 0x7f08011d

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/high16 v5, 0x2400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v2, v10}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 217
    .end local v0           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v4, v8}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 232
    invoke-virtual {v4, v8}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v1

    .line 235
    .local v1, inactiveReasons:I
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_5

    .line 236
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    if-eqz v5, :cond_4

    .line 237
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 240
    :cond_4
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 249
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_7

    .line 250
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    if-eqz v5, :cond_6

    .line 251
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 254
    :cond_6
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 256
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 264
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_9

    .line 265
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    if-eqz v5, :cond_8

    .line 266
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 269
    :cond_8
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    .line 272
    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v3, p0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 274
    .local v3, mDEM:Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x7

    invoke-virtual {v3, v6, v7, v5}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 277
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v2, v7}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 285
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mDEM:Landroid/dirEncryption/DirEncryptionManager;
    :cond_9
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 106
    .local v4, i:Landroid/content/Intent;
    const-string v9, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v4, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    .local v0, accountId:J
    const-string v9, "SHOW_DIALOG"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 108
    .local v8, showDialog:Z
    const-string v9, "EXPIRING"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 109
    .local v6, passwordExpiring:Z
    const-string v9, "EXPIRED"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 110
    .local v5, passwordExpired:Z
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v7

    .line 111
    .local v7, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v7, v0, v1}, Lcom/android/email/SecurityPolicy;->clearNotification(J)V

    .line 112
    cmp-long v9, v0, v11

    if-nez v9, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 118
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v9, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 123
    :cond_2
    if-nez v6, :cond_3

    if-eqz v5, :cond_4

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 125
    .local v3, fm:Landroid/app/FragmentManager;
    const-string v9, "password_expiration"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    .line 126
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    move-result-object v2

    .line 128
    .local v2, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    const-string v9, "password_expiration"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v2           #dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .end local v3           #fm:Landroid/app/FragmentManager;
    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v9, :cond_6

    .line 137
    if-eqz v8, :cond_5

    .line 140
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 141
    .restart local v3       #fm:Landroid/app/FragmentManager;
    const-string v9, "security_needed"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    .line 142
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    move-result-object v2

    .line 144
    .local v2, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    const-string v9, "security_needed"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v2           #dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .end local v3           #fm:Landroid/app/FragmentManager;
    :cond_5
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v9}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method
