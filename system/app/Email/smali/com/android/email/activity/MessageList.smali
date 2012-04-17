.class public Lcom/android/email/activity/MessageList;
.super Landroid/app/Activity;
.source "MessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$1;,
        Lcom/android/email/activity/MessageList$MailboxFinderCallback;,
        Lcom/android/email/activity/MessageList$ControllerResults;,
        Lcom/android/email/activity/MessageList$SetTitleTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_NAME_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageList$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteButton:Landroid/widget/Button;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mFavoriteButton:Landroid/widget/Button;

.field private mLeftTitle:Landroid/widget/TextView;

.field private mListFragment:Lcom/android/email/activity/MessageListFragment;

.field private mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

.field private mMenuCreated:Z

.field private mMultiSelectPanel:Landroid/view/View;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mReadUnreadButton:Landroid/widget/Button;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    .line 108
    new-instance v0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageList$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    .line 750
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$SetTitleTask;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->launchWelcomeAndFinish()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageList;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->setTitleAccountName(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLeftTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showProgressIcon(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showErrorBanner(Ljava/lang/String;)V

    return-void
.end method

.method public static actionHandleAccount(Landroid/content/Context;JI)V
    .locals 6
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 153
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 243
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 244
    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    return-object v0
.end method

.method public static actionHandleMailbox(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 141
    const-wide/16 v1, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method public static actionOpenAccountInboxUuid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "accountUuid"

    .prologue
    const-wide/16 v1, -0x1

    .line 161
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v6

    .line 162
    .local v6, i:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public static createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    :cond_0
    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    .line 182
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    :cond_1
    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    .line 184
    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    :cond_2
    return-object v0
.end method

.method private launchWelcomeAndFinish()V
    .locals 0

    .prologue
    .line 310
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 312
    return-void
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 458
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 460
    return-void
.end method

.method private onCompose()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 464
    return-void
.end method

.method private onEditAccount()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    .line 468
    return-void
.end method

.method private onFolders()V
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->isMagicMailbox()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 451
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 452
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    .line 455
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_0
    return-void
.end method

.method private selectAccountAndMailbox(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v0, -0x1

    .line 252
    const-string v5, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {p1, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 253
    .local v6, mailboxId:J
    cmp-long v5, v6, v0

    if-eqz v5, :cond_0

    .line 255
    new-instance v0, Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-direct {v0, p0, v6, v7}, Lcom/android/email/activity/MessageList$SetTitleTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 256
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v6, v7}, Lcom/android/email/activity/MessageListFragment;->openMailbox(J)V

    .line 275
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v5, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 260
    .local v4, mailboxType:I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 262
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_2

    move-wide v2, v0

    .line 264
    .local v2, accountId:J
    :goto_1
    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    .line 265
    const-string v5, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {p1, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 267
    :cond_1
    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 268
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->launchWelcomeAndFinish()V

    goto :goto_0

    .line 262
    .end local v2           #accountId:J
    :cond_2
    invoke-static {p0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_1

    .line 271
    .restart local v2       #accountId:J
    :cond_3
    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 272
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    goto :goto_0
.end method

.method private setTitleAccountName(Ljava/lang/String;Z)V
    .locals 5
    .parameter "accountName"
    .parameter "showAccountsButton"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 637
    const v2, 0x7f10014c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 638
    .local v0, accountsButton:Landroid/widget/TextView;
    const v2, 0x7f10014b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 639
    .local v1, textPlain:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 640
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showErrorBanner(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 657
    .local v0, isVisible:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 658
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    if-nez v0, :cond_0

    .line 660
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050007

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 671
    :cond_0
    :goto_1
    return-void

    .end local v0           #isVisible:Z
    :cond_1
    move v0, v1

    .line 656
    goto :goto_0

    .line 665
    .restart local v0       #isVisible:Z
    :cond_2
    if-eqz v0, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050008

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private showProgressIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 651
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 652
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 653
    return-void

    .line 651
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method getListFragmentForTest()Lcom/android/email/activity/MessageListFragment;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 543
    packed-switch p1, :pswitch_data_0

    .line 547
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 548
    return-void

    .line 545
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 380
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 386
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 362
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead()V

    goto :goto_0

    .line 365
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite()V

    goto :goto_0

    .line 368
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete()V

    goto :goto_0

    .line 371
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x7f10014c -> :sswitch_3
        0x7f1001b2 -> :sswitch_0
        0x7f1001b3 -> :sswitch_1
        0x7f1001b4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onComposeFromMessageListFragment()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onCompose()V

    .line 329
    return-void
.end method

.method public onConversationMoveAlways([J[Ljava/lang/String;I)V
    .locals 0
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "bundleConversationType"

    .prologue
    .line 786
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 211
    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->setContentView(I)V

    .line 213
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageList$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 215
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1001b0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 217
    const v0, 0x7f1001b1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    .line 218
    const v0, 0x7f1001b2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    .line 219
    const v0, 0x7f1001b3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    .line 220
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    .line 221
    const v0, 0x7f10014a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLeftTitle:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 223
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    .line 235
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->selectAccountAndMailbox(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 301
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    .line 303
    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 306
    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 307
    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .locals 0
    .parameter "enter"

    .prologue
    .line 357
    return-void
.end method

.method public onFollowUpViewShown()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onForward(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 820
    return-void
.end method

.method public onMailBoxList()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 324
    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 319
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 2
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 343
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 344
    .local v0, draftMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_1

    .line 345
    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    .line 346
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0
.end method

.method public onMoveMessages([J)V
    .locals 0
    .parameter "messageIds"

    .prologue
    .line 781
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 442
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 424
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_0

    .line 427
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onFolders()V

    goto :goto_0

    .line 430
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 433
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onCompose()V

    goto :goto_0

    .line 436
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onEditAccount()V

    goto :goto_0

    .line 439
    :sswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1002a9 -> :sswitch_3
        0x7f1002af -> :sswitch_4
        0x7f1002d0 -> :sswitch_0
        0x7f1002f3 -> :sswitch_5
        0x7f1002f4 -> :sswitch_1
        0x7f1002f5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 281
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    if-nez v2, :cond_0

    .line 417
    :goto_0
    return v1

    .line 407
    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageList;->mMenuCreated:Z

    if-nez v2, :cond_1

    .line 408
    iput-boolean v0, p0, Lcom/android/email/activity/MessageList;->mMenuCreated:Z

    .line 409
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->isMagicMailbox()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f0021

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 415
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 416
    .local v0, showDeselect:Z
    :goto_2
    const v1, 0x7f1002f2

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 417
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 412
    .end local v0           #showDeselect:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f0020

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 415
    goto :goto_2
.end method

.method public onRefreshFromMessageListFragment()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 334
    return-void
.end method

.method public onReply(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 812
    return-void
.end method

.method public onReplyAll(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 816
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 290
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 295
    :cond_0
    return-void
.end method

.method public onSearchFromMessageListFragment()V
    .locals 0

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 339
    return-void
.end method

.method public refreshAllAccount()V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V
    .locals 0
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 794
    return-void
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V
    .locals 0
    .parameter "b"
    .parameter "messageListSubTitleItem"

    .prologue
    .line 798
    return-void
.end method

.method public setTimeFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 0
    .parameter "dateFormat"
    .parameter "dayFormat"
    .parameter "timeFormat"

    .prologue
    .line 803
    return-void
.end method
