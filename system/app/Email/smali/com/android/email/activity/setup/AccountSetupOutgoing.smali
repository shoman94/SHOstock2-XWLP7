.class public Lcom/android/email/activity/setup/AccountSetupOutgoing;
.super Landroid/app/Activity;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

.field private mNextButton:Landroid/view/MenuItem;

.field mNextButtonEnabled:Z

.field private mPreviousButton:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionOutgoingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 54
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .locals 0
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->finish()V

    .line 176
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 143
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 95
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f100055

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    .line 101
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 108
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableProceedButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButtonEnabled:Z

    .line 163
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 165
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 78
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onNext()V

    .line 86
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->onBackPressed()V

    goto :goto_1

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_0
        0x7f1002bb -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 68
    const v0, 0x7f1002bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPreviousButton:Landroid/view/MenuItem;

    .line 69
    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/view/MenuItem;

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 150
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 152
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 153
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 154
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 155
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 156
    return-void
.end method
