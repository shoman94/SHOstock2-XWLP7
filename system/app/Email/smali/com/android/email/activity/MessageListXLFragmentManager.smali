.class public Lcom/android/email/activity/MessageListXLFragmentManager;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXLFragmentManager$1;,
        Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    }
.end annotation


# static fields
.field private static mIsPhone:Z

.field private static mMailboxId:J

.field private static sMessageId:J


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mIsActivityResumed:Z

.field private mIsSending:Z

.field private mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

.field private mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

.field private mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

.field private mMessageListXL:Lcom/android/email/activity/MessageListXL;

.field private mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mOrientation:I

.field private mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;

.field private mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 65
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 68
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    .line 82
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    .line 84
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    .line 152
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    .line 153
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    .line 154
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    .line 155
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method static synthetic access$1100()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onMessageViewClosed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MailboxListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListXLFragmentManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    return v0
.end method

.method private closeMailboxFinder()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 831
    :cond_0
    return-void
.end method

.method private destroyThreePane()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->destroy()V

    .line 837
    :cond_0
    return-void
.end method

.method public static getMailboxId()J
    .locals 2

    .prologue
    .line 237
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    return-wide v0
.end method

.method public static getMessageId()J
    .locals 2

    .prologue
    .line 241
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    return-wide v0
.end method

.method public static isPhoneMode()Z
    .locals 1

    .prologue
    .line 213
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    return v0
.end method

.method private onMessageViewClosed()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 810
    sput-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 811
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(JI)V

    .line 812
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->clearContent()V

    .line 813
    return-void
.end method

.method private restoreMesasgeListState()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$State;->restore(Lcom/android/email/activity/MessageListFragment;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 366
    :cond_0
    return-void
.end method

.method private saveMessageListFragmentState()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getState()Lcom/android/email/activity/MessageListFragment$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 359
    :cond_0
    return-void
.end method

.method private startInboxLookup()V
    .locals 6

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    .line 821
    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 823
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    .line 824
    return-void
.end method


# virtual methods
.method public getActualAccountId()J
    .locals 4

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    goto :goto_0
.end method

.method public getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method public getMessageListFragment()Lcom/android/email/activity/MessageListFragment;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method public getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    return-wide v0
.end method

.method public goBackToMailbox()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 624
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_4

    .line 627
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 628
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 632
    sput-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_0

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto :goto_0

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto :goto_0
.end method

.method public isAccountSelected()Z
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMailboxSelected()Z
    .locals 4

    .prologue
    .line 253
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessageSelected()Z
    .locals 4

    .prologue
    .line 257
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v10, -0x1

    .line 338
    const-string v0, "MessageListXl.state.account_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 339
    .local v1, accountId:J
    const-string v0, "MessageListXl.state.mailbox_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 340
    .local v3, mailboxId:J
    const-string v0, "MessageListXl.state.message_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 341
    .local v5, messageId:J
    const-string v0, "MessageListXl.state.search_str"

    const-string v7, ""

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, searchStr:Ljava/lang/String;
    const-string v0, "MessageListXl.state.message_list_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment$State;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 347
    cmp-long v0, v1, v10

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {v9}, Lcom/android/email/activity/MessageListXL;->setSearchString(Ljava/lang/String;)V

    .line 352
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    goto :goto_0
.end method

.method public onActivityViewReady(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    const v2, 0x7f1001c3

    invoke-interface {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 168
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    .line 170
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    invoke-interface {v1}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 171
    .local v0, fm:Landroid/app/FragmentManager;
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getLeftPaneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxListFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 173
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getMiddlePaneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageListFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 175
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getRightPaneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 177
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 178
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    new-instance v2, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 179
    iput p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    .line 180
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 3
    .parameter "isSystemBackKey"

    .prologue
    const/4 v0, 0x1

    .line 568
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MailboxListFragment;->onBackPress(Z)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListFragment;->onBackPress(Z)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 577
    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 578
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 579
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 580
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->setActionBarDisplayHomeEnabled(Z)V

    .line 583
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->onBackPressed(Z)Z

    move-result v0

    .line 584
    .local v0, ret:Z
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 312
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 313
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    .line 314
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    .line 315
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->destroyThreePane()V

    .line 316
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 317
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 318
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 319
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 320
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    .line 322
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 323
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    .line 324
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    .line 325
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    .line 326
    return-void
.end method

.method public onFragmentSetHasOptionMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 596
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 598
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 601
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 604
    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 605
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 606
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 608
    :cond_3
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 612
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v0, v3, :cond_4

    .line 613
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onMailBoxList()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 590
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->setActionBarCustom()V

    .line 591
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    .line 592
    return v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    .line 297
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 329
    const-string v0, "MessageListXl.state.account_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 330
    const-string v0, "MessageListXl.state.mailbox_id"

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 331
    const-string v0, "MessageListXl.state.message_id"

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 332
    const-string v0, "MessageListXl.state.search_str"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "MessageListXl.state.message_list_state"

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    return-void
.end method

.method public onSortBy(I)V
    .locals 5
    .parameter "sortType"

    .prologue
    const/4 v4, 0x0

    .line 1034
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1035
    packed-switch p1, :pswitch_data_0

    .line 1051
    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 1054
    :goto_0
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 1059
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->initListAdapter()V

    .line 1060
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 1062
    :cond_0
    return-void

    .line 1048
    :pswitch_0
    invoke-static {p1}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    goto :goto_0

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    goto :goto_1

    .line 1035
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSplitLookChanged()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 369
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    .line 370
    .local v0, visiblePanes:I
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visiblePanes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    .line 376
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MailboxListFragment;->setDeleteMode(Z)V

    .line 378
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 383
    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 440
    :cond_0
    :goto_1
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    .line 446
    return-void

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_0

    .line 398
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 399
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    goto :goto_1

    .line 403
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 404
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 406
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 407
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_5

    .line 408
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_1

    .line 410
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_1

    .line 412
    :cond_6
    if-ne v0, v6, :cond_0

    .line 413
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v1, v6, :cond_7

    .line 414
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 415
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 416
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_1

    .line 417
    :cond_7
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-eqz v1, :cond_8

    .line 418
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v7}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 420
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto/16 :goto_1

    .line 422
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 423
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    .line 424
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    .line 425
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 426
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 427
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    goto/16 :goto_1

    .line 429
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 430
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public refreshFragment(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 449
    iput p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    .line 451
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 454
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v0, v2, :cond_2

    .line 455
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane(Z)V

    .line 471
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    .line 473
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSplitLookChanged()V

    .line 477
    :goto_1
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    .line 459
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 461
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane(Z)V

    goto :goto_0

    .line 464
    :cond_3
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 465
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane(Z)V

    goto :goto_0

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    goto :goto_1
.end method

.method public selectAccount(JJJZZ)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "byExplicitUserAction"
    .parameter "firstCallFromIntent"

    .prologue
    .line 504
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAccount mAccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 509
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 558
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p8, :cond_2

    .line 515
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    .line 518
    :cond_2
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    .line 519
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 520
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 526
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->openMailboxes(J)V

    .line 527
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearContent()V

    .line 530
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    if-nez p8, :cond_3

    .line 531
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 534
    :cond_3
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_6

    .line 535
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 537
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    .line 548
    :goto_1
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_7

    .line 551
    const-wide/16 v1, -0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    .line 557
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onAccountChanged(J)V

    goto :goto_0

    .line 539
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_1

    .line 542
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto :goto_1

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto :goto_1

    .line 552
    :cond_7
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_8

    .line 553
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->startInboxLookup()V

    goto :goto_2

    .line 555
    :cond_8
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    goto :goto_2
.end method

.method public selectMailbox(JJZZZ)V
    .locals 6
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "byExplicitUserAction"
    .parameter "firstCallFromIntent"
    .parameter "isForSearchResult"

    .prologue
    .line 664
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 665
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 668
    :cond_0
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    if-eqz p6, :cond_2

    .line 745
    :cond_1
    :goto_0
    return-void

    .line 670
    :cond_2
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    .line 671
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onBackPressed(Z)Z

    goto :goto_0

    .line 675
    :cond_3
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p6, :cond_4

    .line 678
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->onCloseSerachWithoutAnimation()V

    .line 682
    :cond_4
    sput-wide p1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 683
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 686
    if-eqz p5, :cond_5

    .line 687
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doAutoRefresh()V

    .line 690
    :cond_5
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_8

    .line 691
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    .line 693
    .local v0, mailboxType:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 694
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->useFlickDown(Z)V

    .line 699
    :goto_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 700
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 701
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    .line 717
    .end local v0           #mailboxType:I
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setSearchSpinnerOption()V

    .line 718
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->openMailbox(J)V

    .line 719
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->restoreMesasgeListState()V

    .line 720
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v1, v2, v3, p7}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZ)V

    .line 721
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->setMailboxId(J)V

    .line 722
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    sget-wide v4, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onMailboxChanged(JJ)V

    .line 723
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_d

    .line 725
    sget-boolean v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v1, :cond_c

    .line 726
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 727
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 728
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto/16 :goto_0

    .line 696
    .restart local v0       #mailboxType:I
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->useFlickDown(Z)V

    goto :goto_1

    .line 703
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 704
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto :goto_2

    .line 707
    .end local v0           #mailboxType:I
    :cond_8
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    if-eqz v1, :cond_9

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 708
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 709
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto :goto_2

    .line 711
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 712
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto :goto_2

    .line 730
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto/16 :goto_0

    .line 733
    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto/16 :goto_0

    .line 736
    :cond_c
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto/16 :goto_0

    .line 739
    :cond_d
    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    .line 740
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_1

    .line 741
    const-string v1, "Z7App"

    const-string v2, "from social Hub!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto/16 :goto_0
.end method

.method public selectMessage(JI)V
    .locals 5
    .parameter "messageId"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 757
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 758
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 760
    :cond_0
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 802
    :goto_0
    return-void

    .line 764
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    .line 767
    sput-wide p1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 770
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(JI)V

    .line 771
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, ipe:Ljava/security/InvalidParameterException;
    const-string v1, "Z7App"

    const-string v2, "can not open email when MessageId is -1"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    .end local v0           #ipe:Ljava/security/InvalidParameterException;
    :cond_2
    const-string v1, "MessageListXLFragmentManager"

    const-string v2, "[HJP] selectMessage() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V

    .line 785
    sget-boolean v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v1, :cond_6

    .line 786
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 788
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-eq v1, v4, :cond_3

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 790
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    .line 792
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_0

    .line 796
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_0

    .line 799
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_0
.end method

.method public setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .locals 1
    .parameter "mailboxListFragmentCallback"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 186
    return-void
.end method

.method public setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .locals 1
    .parameter "messageListFragmentCallback"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 201
    return-void
.end method

.method public setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .locals 1
    .parameter "messageViewFragmentCallback"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 207
    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 646
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsSending:Z

    .line 647
    return-void
.end method

.method public updateMessageCommandButtons(ZZII)V
    .locals 1
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"
    .parameter "currentPosition"
    .parameter "countMessages"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragment;->enableNavigationButtonsOnView(ZZII)V

    .line 885
    return-void
.end method
