.class public Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;
.super Landroid/app/ListActivity;
.source "AccountSetupBasicsChoiceProviderForKOR.java"


# static fields
.field public static final mProviderDomains:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProvidersForLGT:[Ljava/lang/String;

.field private static final mProvidersForSKT:[Ljava/lang/String;


# instance fields
.field private final ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

.field private mReportAccountAuthenticatorError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProviderDomains:Ljava/util/HashMap;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NATE"

    aput-object v1, v0, v3

    const-string v1, "Naver"

    aput-object v1, v0, v4

    const-string v1, "Daum"

    aput-object v1, v0, v5

    const-string v1, "Gmail"

    aput-object v1, v0, v6

    const-string v1, "Yahoo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Hotmail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForSKT:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hotmail"

    aput-object v1, v0, v3

    const-string v1, "Naver"

    aput-object v1, v0, v4

    const-string v1, "Daum"

    aput-object v1, v0, v5

    const-string v1, "Gmail"

    aput-object v1, v0, v6

    const-string v1, "Yahoo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForLGT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 26
    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 29
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 32
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 33
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 37
    .end local v0           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 38
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    .line 108
    .local v2, flowMode:I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v4, 0x6

    if-ne v2, v4, :cond_3

    .line 113
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 114
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 115
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 116
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    goto :goto_0

    .line 119
    :cond_2
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_1

    .line 138
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v3, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForSKT:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 154
    .local v1, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 155
    if-eqz v1, :cond_0

    .line 156
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mReportAccountAuthenticatorError:Z

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 165
    long-to-int v1, p4

    .line 167
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 171
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 182
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    const-string v2, "ProviderChoiceAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v2, "ProviderChoiceData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v0, "accountAuthenticatorResponse"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    const/high16 v0, 0x2400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 86
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 87
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 88
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    .line 101
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    return-void

    .line 93
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_0
.end method
