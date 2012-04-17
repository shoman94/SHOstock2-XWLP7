.class public Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;
.super Landroid/app/ListActivity;
.source "AccountSetupSncRestoreAccounts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ViewHolder;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mSncList:Ljava/util/List;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mSncList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mSncList:Ljava/util/List;

    return-object p1
.end method

.method public static actionDisplayAccounts(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v1, "ConfiguredAccounts"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 185
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ConfiguredAccounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mList:Ljava/util/List;

    .line 85
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    .line 86
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$ConfiguredAccountsAdapter;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 205
    :pswitch_0
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "User pressed Skip"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p0, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->setRestoreFlowDone(Landroid/content/Context;Z)V

    .line 209
    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW:Z

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/android/email/Email;->SETUP_WIZARD_FLOW_FROM_SERVICE:Z

    if-ne v1, v0, :cond_1

    .line 210
    :cond_0
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from SetupWizard"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    .line 222
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->finish()V

    goto :goto_0

    .line 213
    :cond_1
    sget-boolean v1, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-ne v1, v0, :cond_2

    .line 214
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "Going back to AccountSetupActivity, since its from account manager"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionAccountCreateFinished(Landroid/app/Activity;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccounts;->finish()V

    goto :goto_1

    .line 219
    :cond_2
    const-string v1, "AccountSetupSncRestoreAccounts"

    const-string v2, "Going back to AccountSetupActivity screen"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {p0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->actionNewAccount(Landroid/app/Activity;)V

    goto :goto_1

    .line 203
    :pswitch_data_0
    .packed-switch 0x7f1002bf
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 102
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 108
    return-void
.end method
