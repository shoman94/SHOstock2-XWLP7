.class public Lcom/android/email/activity/EmailDocSearchQuery;
.super Landroid/app/Activity;
.source "EmailDocSearchQuery.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mController:Lcom/android/email/Controller;

.field private mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

.field mHandler:Landroid/os/Handler;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mQuery:Landroid/widget/EditText;

.field private mSearchButton:Landroid/widget/Button;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/EmailDocSearchQuery;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private readArgumentsFromIntent()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 221
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.AccountId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 222
    .local v0, accountId:J
    cmp-long v5, v0, v7

    if-nez v5, :cond_0

    .line 223
    sget-object v5, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    const-string v6, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.MailboxId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 229
    .local v2, mailboxId:J
    cmp-long v5, v2, v7

    if-gtz v5, :cond_1

    .line 240
    sget-object v5, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    const-string v6, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const v5, 0x7f080461

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    .line 246
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.SearchString"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, searchString:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 248
    const-string v5, ""

    iput-object v5, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    .line 254
    :goto_2
    return-void

    .line 226
    .end local v2           #mailboxId:J
    .end local v4           #searchString:Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    goto :goto_0

    .line 244
    .restart local v2       #mailboxId:J
    :cond_1
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    goto :goto_1

    .line 250
    .restart local v4       #searchString:Ljava/lang/String;
    :cond_2
    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 252
    :cond_3
    iput-object v4, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    goto :goto_2
.end method

.method public static startActivity(Landroid/app/Activity;JJI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    const-class v1, Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;JJLjava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    const-class v1, Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    const-string v1, "com.android.email.SearchString"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0, p6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, queryString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 152
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080375

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v1, 0x7f040055

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->setContentView(I)V

    .line 162
    invoke-direct {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->readArgumentsFromIntent()V

    .line 164
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mController:Lcom/android/email/Controller;

    .line 179
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v1, Lcom/android/email/EmailSearchAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailSearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    .line 181
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    iget-object v2, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/email/EmailSearchAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 183
    const v1, 0x7f100130

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    .line 185
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    if-nez v1, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    .line 218
    :goto_1
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_1
    sget-object v1, Lcom/android/email/activity/EmailDocSearchQuery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restoreAccountWithId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.email.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;-><init>(Lcom/android/email/activity/EmailDocSearchQuery;Lcom/android/email/activity/EmailDocSearchQuery$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v1, 0x7f100131

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 195
    .local v0, cancelButton:Landroid/widget/Button;
    if-nez v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    goto :goto_1

    .line 200
    :cond_3
    new-instance v1, Lcom/android/email/activity/EmailDocSearchQuery$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/EmailDocSearchQuery$1;-><init>(Lcom/android/email/activity/EmailDocSearchQuery;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v1, 0x7f10012f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/EmailDocSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    .line 209
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    if-nez v1, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    goto :goto_1

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    const v2, 0x7f080376

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 215
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    iget-object v1, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/EmailDocSearchQuery;->mSearchString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 156
    return-void
.end method
