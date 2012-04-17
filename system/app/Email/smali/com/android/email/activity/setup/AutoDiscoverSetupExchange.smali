.class public Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;
.super Landroid/app/Activity;
.source "AutoDiscoverSetupExchange.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mEasFlowMode:Z

.field mFragment:Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;

.field private mMakeDefault:Z

.field mStartedAutoDiscovery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionAutoDiscoverSetupExchangeIntent(Landroid/app/Activity;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "com.android.email.MAKE_DEFAULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string v1, "com.android.email.EAS_FLOW"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    return-void
.end method

.method private readArgumentsFromIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 128
    iget-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->TAG:Ljava/lang/String;

    const-string v1, "Expecting Account in KEY_EXTRA_ACCOUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->finish()V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.MAKE_DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mMakeDefault:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.EAS_FLOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEasFlowMode:Z

    .line 134
    return-void
.end method

.method private startAutoDiscover()V
    .locals 5

    .prologue
    .line 110
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mStartedAutoDiscovery:Z

    .line 112
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 119
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 120
    .local v2, username:Ljava/lang/String;
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 121
    .local v1, password:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 122
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mFragment:Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 3
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 154
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 155
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->finish()V

    .line 161
    :cond_0
    if-nez p1, :cond_1

    .line 162
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 163
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iput-object p2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 164
    iput-object p2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 165
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionAutoDiscoverIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->finish()V

    .line 169
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    return-void
.end method

.method public onCheckSettingsComplete(II)V
    .locals 0
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 150
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1000e3

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mFragment:Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;

    .line 85
    iget-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mFragment:Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 86
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->readArgumentsFromIntent()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mStartedAutoDiscovery:Z

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mStartedAutoDiscovery:Z

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mStartedAutoDiscovery:Z

    if-nez v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->startAutoDiscover()V

    .line 94
    :cond_1
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 139
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 173
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 175
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 176
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 177
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 178
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 179
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mStartedAutoDiscovery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    return-void
.end method
