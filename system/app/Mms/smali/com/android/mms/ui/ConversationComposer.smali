.class public Lcom/android/mms/ui/ConversationComposer;
.super Landroid/app/Activity;
.source "ConversationComposer.java"


# static fields
.field public static mThreadIdFromComposeMessageFragment:J


# instance fields
.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mConversationList:Lcom/android/mms/ui/ConversationListFragment;

.field private mEmptyScreen:Landroid/view/View;

.field private mForceShowComposer:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mLeftScreen:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mOptionMenuCount:I

.field private mOptionSelectResult:Z

.field private mRightScreen:Landroid/view/View;

.field private mSplitBar:Landroid/widget/ImageButton;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private onComposerClose:Lcom/android/mms/ui/OnEventListener;

.field private onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

.field private onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 863
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$2;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    .line 878
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$3;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    .line 993
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$4;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationComposer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return p1
.end method

.method private addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 3
    .parameter "id"
    .parameter "list"
    .parameter "composer"

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1170
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1172
    .local v1, ft:Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_0

    .line 1173
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 1174
    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1175
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1176
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1178
    :cond_0
    if-eqz p3, :cond_1

    .line 1179
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 1180
    invoke-virtual {v1, p1, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1181
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1182
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1184
    :cond_1
    return-void
.end method

.method private calcSplitMode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 909
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 954
    :goto_0
    return v0

    .line 913
    :cond_0
    const/4 v1, -0x1

    .line 914
    .local v1, state:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 915
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    .line 917
    :cond_1
    const/4 v0, 0x0

    .line 918
    .local v0, splitMode:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 919
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 920
    const/4 v0, 0x2

    .line 938
    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 952
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():unknown"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_3
    if-nez v1, :cond_4

    .line 922
    const/4 v0, 0x1

    goto :goto_1

    .line 924
    :cond_4
    sget-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-ne v3, v2, :cond_5

    .line 925
    const/4 v0, 0x1

    goto :goto_1

    .line 927
    :cond_5
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_6

    .line 928
    const/4 v0, 0x2

    goto :goto_1

    .line 933
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 940
    :pswitch_0
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 943
    :pswitch_1
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :pswitch_2
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :pswitch_3
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private composerRequestsClosing()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 794
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "composerRequestsClosing()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 798
    .local v0, splitMode:I
    if-ne v0, v4, :cond_2

    .line 800
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v1, :cond_1

    .line 801
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 810
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 811
    if-nez v0, :cond_3

    .line 813
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 814
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 818
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-nez v1, :cond_4

    .line 819
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 820
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 823
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 826
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 828
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private static containsOwnBundle(Landroid/os/Bundle;)Z
    .locals 1
    .parameter

    .prologue
    .line 161
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComposeMessageStatus()I
    .locals 4

    .prologue
    .line 888
    const/4 v0, -0x1

    .line 890
    .local v0, state:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    .line 892
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 894
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 904
    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComposeMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return v0

    .line 898
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private getLauncherList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v2, mCheckHomeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 677
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 681
    :goto_0
    return-object v1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 3

    .prologue
    .line 687
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->isLauncherTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "move to back"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->moveTaskToBack(Z)Z

    .line 700
    :goto_0
    return-void

    .line 693
    :cond_0
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 698
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "Exception."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initSplitManager()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 703
    const-string v3, "Mms/ConversationComposer"

    const-string v6, "initSplitManager()"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const v3, 0x7f080032

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    .line 706
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    if-nez v3, :cond_0

    move v3, v4

    .line 775
    :goto_0
    return v3

    .line 709
    :cond_0
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 712
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/mms/ui/ConversationComposer$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ConversationComposer$1;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 740
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    .line 741
    .local v2, useSplitView:Z
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 743
    const/4 v1, 0x0

    .line 748
    .local v1, splitMode:I
    if-eqz v2, :cond_6

    .line 749
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v3, :cond_4

    .line 750
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v3, :cond_3

    .line 751
    :cond_1
    const/4 v1, 0x1

    .line 765
    :cond_2
    :goto_1
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 766
    .local v0, display:Landroid/view/Display;
    const-string v3, "Mms/ConversationComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSplitManager width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v3, Lcom/android/mms/ui/SplitManager;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    invoke-direct {v3, v6, v7, v8, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 768
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 769
    if-ne v2, v5, :cond_8

    .line 770
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 773
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v3, v5

    .line 775
    goto :goto_0

    .line 753
    .end local v0           #display:Landroid/view/Display;
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 755
    :cond_4
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v3, :cond_2

    .line 756
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 760
    :cond_6
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v3, :cond_2

    .line 761
    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 772
    .restart local v0       #display:Landroid/view/Display;
    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private static isIntentForApplication(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, result:Z
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 188
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForApplication(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return v0

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isItentFromSearch(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromSwitcher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isSentFailIntentFromNotibar(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIntentForComposer(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 229
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 234
    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForComposer(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return v0

    .line 236
    :cond_1
    const-class v3, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 242
    :cond_3
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method private static isIntentForList(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 166
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 218
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntentFromSwitcher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 213
    const/high16 v0, 0x10

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isItentFromSearch(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 223
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLauncherTaskRunning()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 644
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getLauncherList()Ljava/util/List;

    move-result-object v4

    .line 645
    .local v4, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 646
    :cond_0
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :goto_0
    return v7

    .line 651
    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 652
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 655
    .local v6, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 656
    .local v3, launcherInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 657
    .local v5, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 658
    const-string v7, "Mms/ConversationComposer"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v7, 0x1

    goto :goto_0

    .line 664
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #launcherInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSentFailIntentFromNotibar(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    const-string v5, "thread_id"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 196
    .local v1, tempThread_id:J
    const-string v5, "isFailedNoti"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 198
    .local v0, isFailedNoti:Z
    if-ne v0, v4, :cond_0

    .line 199
    cmp-long v5, v1, v6

    if-lez v5, :cond_1

    const/high16 v5, 0x1000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/high16 v5, 0x400

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 204
    goto :goto_0
.end method

.method private refreshSplitManager(Z)V
    .locals 6
    .parameter "ignoreSameSplitView"

    .prologue
    const/4 v5, 0x0

    .line 959
    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 965
    .local v1, useSplitView:Z
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-ne v2, v1, :cond_3

    .line 966
    if-nez p1, :cond_0

    .line 969
    if-eqz v1, :cond_2

    .line 970
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 971
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->calcSplitMode()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_0

    .line 973
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 974
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 977
    :cond_3
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 978
    const/4 v0, 0x0

    .line 979
    .local v0, splitMode:I
    if-eqz v1, :cond_5

    .line 980
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 981
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 982
    const/4 v0, 0x2

    .line 987
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 984
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1
.end method

.method private removeComposer()V
    .locals 3

    .prologue
    .line 836
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 843
    .local v0, details:Lcom/android/mms/ui/ComposeMessageFragment;
    if-eqz v0, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 845
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 846
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method

.method private removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 5
    .parameter "list"
    .parameter "composer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1187
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1188
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1190
    .local v1, ft:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_0

    .line 1191
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1192
    invoke-virtual {p1, v3}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 1193
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1194
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1195
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 1197
    :cond_0
    if-eqz p2, :cond_1

    .line 1198
    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1199
    invoke-virtual {p2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    .line 1200
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1201
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1202
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 1204
    :cond_1
    return-void
.end method

.method private showEmptyScreen(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 851
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 856
    :cond_0
    if-eqz p1, :cond_1

    .line 857
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public CreateConversationList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const v0, 0x7f08002e

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 259
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList() Created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSipOnComposeMessage()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    .line 1078
    :cond_0
    return-void
.end method

.method public getNextSplitMode()I
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v0, :cond_1

    .line 784
    :cond_0
    const/4 v0, -0x1

    .line 789
    :goto_0
    return v0

    .line 786
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    const/4 v0, 0x2

    goto :goto_0

    .line 789
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1065
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return v0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter

    .prologue
    .line 1148
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment fragment) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    if-nez p1, :cond_1

    .line 1150
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment is null) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1155
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    instance-of v0, p1, Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 1158
    check-cast p1, Lcom/android/mms/ui/ConversationListFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    goto :goto_0

    .line 1159
    :cond_2
    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1160
    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 1161
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 1162
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 1163
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 1164
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 431
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 432
    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged(),newConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    .line 436
    .local v1, isLandscape:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eq v2, v1, :cond_1

    .line 437
    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 441
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v2, :cond_0

    .line 442
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 444
    .local v0, display:Landroid/view/Display;
    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 447
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 449
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_1

    .line 450
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 454
    :cond_1
    return-void

    .end local v1           #isLandscape:Z
    :cond_2
    move v1, v3

    .line 434
    goto :goto_0
.end method

.method public onConversationDeleteMode()V
    .locals 2

    .prologue
    .line 1042
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1046
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 1047
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1061
    :cond_0
    return-void
.end method

.method public onConversationDeleteStart()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    .line 1144
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 103
    invoke-super {p0, v9}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v5, "Mms/ConversationComposer"

    const-string v8, "\tonCreate()"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, ConversationListOn:Z
    const/4 v0, 0x0

    .line 110
    .local v0, ComposeMessageOn:Z
    const v5, 0x7f030009

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 114
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    .line 115
    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    .line 116
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 120
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const-string v5, "Mms/ConversationComposer"

    const-string v8, "ConversationListOn true"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const v5, 0x7f08002e

    new-instance v8, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v8, v3}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v5, v8, v9}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 123
    const/4 v1, 0x1

    .line 126
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->containsOwnBundle(Landroid/os/Bundle;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    .line 128
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v5, :cond_2

    .line 129
    :cond_1
    const-string v5, "Mms/ConversationComposer"

    const-string v8, "ComposeMessageOn true"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const v5, 0x7f080030

    new-instance v8, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v8, v3}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v5, v9, v8}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 131
    const/4 v0, 0x1

    .line 134
    :cond_2
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 136
    if-eqz v1, :cond_3

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, key:Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 143
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_8

    .line 144
    const/4 v2, 0x0

    .line 145
    .restart local v2       #bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 146
    .restart local v4       #key:Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 148
    invoke-static {v2, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setBundle(Landroid/os/Bundle;Z)V

    .line 150
    :cond_4
    if-eqz v2, :cond_5

    .line 151
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 153
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 157
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #key:Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z

    .line 158
    return-void

    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    move v5, v7

    .line 112
    goto/16 :goto_0

    .restart local v3       #intent:Landroid/content/Intent;
    :cond_7
    move v5, v7

    .line 134
    goto :goto_1

    .line 155
    :cond_8
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 1097
    packed-switch p1, :pswitch_data_0

    .line 1105
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1099
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1097
    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 356
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 359
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    .line 361
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 362
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 573
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 583
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v2

    .line 587
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 588
    goto :goto_0

    .line 591
    :cond_2
    if-ne p1, v6, :cond_6

    .line 592
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "onKeyUp():KEYCODE_BACK"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 597
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 598
    .local v0, splitMode:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v4

    if-ne v4, v2, :cond_4

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v4, :cond_3

    if-nez v0, :cond_4

    .line 600
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    goto :goto_0

    .line 604
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v4

    if-ne v4, v2, :cond_5

    .line 605
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto :goto_0

    .line 609
    :cond_5
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 610
    if-eq v0, v2, :cond_8

    .line 611
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 623
    .end local v0           #splitMode:I
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 630
    :cond_7
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v3, :cond_a

    if-ne p1, v6, :cond_a

    .line 631
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v3, :cond_a

    .line 632
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    goto :goto_0

    .line 612
    .restart local v0       #splitMode:I
    :cond_8
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v3, :cond_6

    .line 613
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 615
    .local v1, useSplitView:Z
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 617
    :cond_9
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_1

    .line 638
    .end local v0           #splitMode:I
    .end local v1           #useSplitView:Z
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 372
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "\tonNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 378
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "isIntentForApplication(), just bring to front"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForList(Landroid/content/Intent;)Z

    move-result v0

    .line 385
    .local v0, forList:Z
    if-eqz v0, :cond_1

    .line 386
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "isIntentForList(), show list"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_4

    .line 388
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ConversationListFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 392
    :goto_1
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 395
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 397
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getAnimationEnable()Z

    move-result v1

    .line 399
    .local v1, tempAnimationEnabled:Z
    if-nez v0, :cond_2

    .line 400
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_5

    .line 404
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 409
    :goto_2
    if-nez v0, :cond_3

    .line 410
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 426
    .end local v1           #tempAnimationEnabled:Z
    :cond_3
    :goto_3
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_4
    const v2, 0x7f08002e

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v3, p1}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v2, v3, v5}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1

    .line 406
    .restart local v1       #tempAnimationEnabled:Z
    :cond_5
    const v2, 0x7f080030

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v3, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v2, v5, v3}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_2

    .line 422
    .end local v1           #tempAnimationEnabled:Z
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 458
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected(),item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 470
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 512
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onOptionsMenuClosed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    .line 343
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 475
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "onPrepareOptionsMenu()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 478
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 479
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v1

    .line 482
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 487
    .local v0, splitMode:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 489
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onPrepareComposerOptionsMenu(Landroid/view/Menu;)Z

    .line 491
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 492
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)Z

    .line 494
    :cond_4
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu() mOptionMenuCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    .line 500
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 502
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1138
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 308
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 313
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 319
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 320
    .local v0, isAnimationEnable:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    .line 330
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 273
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 287
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 289
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    .line 519
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 269
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    .line 368
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onWindowFocusChanged(Z)V

    .line 1214
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public openThread(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1086
    :goto_0
    return-void

    .line 1084
    :cond_0
    const v0, 0x7f080030

    const/4 v1, 0x0

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v2, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 1118
    sput-wide p1, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    .line 1120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 1121
    const/4 v0, 0x0

    .line 1123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 1128
    const/4 v0, 0x0

    .line 1130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_0
.end method

.method public requsetFocusOnConversationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 1110
    const/4 v0, 0x0

    .line 1112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestFocusOnConversationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setConversationSelectAll(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1024
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setSelectAll(Z)V

    goto :goto_0
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1033
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectAll(Z)V

    goto :goto_0
.end method
