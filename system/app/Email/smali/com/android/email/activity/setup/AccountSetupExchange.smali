.class public Lcom/android/email/activity/setup/AccountSetupExchange;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

.field private mNextButton:Landroid/view/MenuItem;

.field mNextButtonEnabled:Z

.field private mPreviousButton:Landroid/view/MenuItem;

.field mStartedAutoDiscovery:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionAutoDiscoverIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 123
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "Autodiscover.OK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 116
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    if-nez p4, :cond_0

    .line 109
    const-string v1, "disableAutoDiscover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 0
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 275
    return-void
.end method

.method public onCheckSettingsComplete(II)V
    .locals 0
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 308
    packed-switch p1, :pswitch_data_0

    .line 321
    :goto_0
    :pswitch_0
    return-void

    .line 310
    :pswitch_1
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 174
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100055

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    .line 185
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Autodiscover.OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 189
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 191
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    .line 194
    const-string v0, "AccountSetupExchange.next"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    .line 196
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 223
    const/4 v7, 0x3

    if-ne p1, v7, :cond_0

    .line 224
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 225
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f040056

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 227
    .local v4, textEntryView:Landroid/view/View;
    const v6, 0x7f100133

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 236
    .local v5, textLegalInfo:Landroid/widget/TextView;
    const v6, 0x7f100134

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 238
    .local v1, checkboxImei:Landroid/widget/CheckBox;
    const-string v0, "AndroidMail.Main"

    .line 239
    .local v0, PREFERENCES_FILE:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 241
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080042

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupExchange$3;

    invoke-direct {v8, p0, v3, v1}, Lcom/android/email/activity/setup/AccountSetupExchange$3;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080043

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupExchange$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$2;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupExchange$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 265
    .end local v0           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v1           #checkboxImei:Landroid/widget/CheckBox;
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v4           #textEntryView:Landroid/view/View;
    .end local v5           #textLegalInfo:Landroid/widget/TextView;
    :cond_0
    return-object v6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableProceedButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    .line 298
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 300
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 165
    :goto_0
    return v3

    .line 150
    :sswitch_0
    const-string v0, "AndroidMail.Main"

    .line 151
    .local v0, PREFERENCES_FILE:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 153
    .local v2, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "isCheckIMEI"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 154
    .local v1, checkIMEI:Z
    if-eqz v1, :cond_0

    .line 155
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupExchange;->showDialog(I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    goto :goto_0

    .line 160
    .end local v0           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v1           #checkIMEI:Z
    .end local v2           #mSharedPreferences:Landroid/content/SharedPreferences;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->onBackPressed()V

    goto :goto_0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_0
        0x7f1002bb -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 140
    const v0, 0x7f1002bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPreviousButton:Landroid/view/MenuItem;

    .line 141
    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/view/MenuItem;

    .line 142
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 4
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 281
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 284
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 285
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 286
    const-string v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 287
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string v0, "AccountSetupExchange.next"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    return-void
.end method
