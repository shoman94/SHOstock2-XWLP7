.class public Lcom/android/email/activity/MailboxList;
.super Landroid/app/ListActivity;
.source "MailboxList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxList$MailboxListItem;,
        Lcom/android/email/activity/MailboxList$MailboxListAdapter;,
        Lcom/android/email/activity/MailboxList$ControllerResults;,
        Lcom/android/email/activity/MailboxList$MailboxListHandler;,
        Lcom/android/email/activity/MailboxList$LoadMailboxesTask;,
        Lcom/android/email/activity/MailboxList$LoadRootMailboxes;,
        Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    }
.end annotation


# static fields
.field private static mlistContextMenu:[Ljava/lang/String;


# instance fields
.field private createMailboxInRoot:Z

.field private isCreateFolder:Z

.field private isMoveCommand:Z

.field private isMoveScreen:Z

.field private isRefreshCommand:Z

.field private mAccountId:J

.field private mAllMailboxParentIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCancel:Landroid/widget/Button;

.field private mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

.field private mDestMailboxId:J

.field private mDisplayName:Ljava/lang/String;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mFolderName:Ljava/lang/String;

.field private mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAccountNameTask:Landroid/os/AsyncTask;

.field private mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

.field private mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

.field private mMailboxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxList$MailboxListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMove:Landroid/widget/Button;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mSelectedContextMailboxId:J

.field private mSelectedMoveMailboxId:J

.field private mSelectedPosition:I

.field private managedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private openCreated:Z

.field public updateUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    .line 106
    iput v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J

    .line 110
    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/android/email/activity/MailboxList$MailboxListHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;-><init>(Lcom/android/email/activity/MailboxList;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    .line 137
    new-instance v0, Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    .line 145
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->openCreated:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    .line 149
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->isCreateFolder:Z

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    .line 1911
    new-instance v0, Lcom/android/email/activity/MailboxList$11;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$11;-><init>(Lcom/android/email/activity/MailboxList;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->onContextMenuSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MailboxList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MailboxList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MailboxList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MailboxList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->openCreated:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->openCreated:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MailboxList;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MailboxList;->hasColumnId(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->closeFolderHierarchy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/MailboxList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MailboxList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MailboxList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MailboxList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadMailboxesTask;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MailboxList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/email/activity/MailboxList;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MailboxList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList;->isCreateFolder:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    return-object v0
.end method

.method public static actionHandleAccount(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MailboxList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method private actionHandleAccountForMove(Landroid/content/Context;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MailboxList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    const-string v1, "MOVE_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    const-string v1, "MOVE_MAILBOX_ID"

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 206
    const/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MailboxList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    return-void
.end method

.method private closeFolderHierarchy(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxList$MailboxListItem;

    .line 1017
    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    #getter for: Lcom/android/email/activity/MailboxList$MailboxListItem;->serverId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->access$1200(Lcom/android/email/activity/MailboxList$MailboxListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxList;->closeFolderHierarchy(Ljava/lang/String;)V

    .line 1020
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->setIsOpened(Z)V

    .line 1021
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1015
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1024
    :cond_1
    return-void
.end method

.method private createContextMenu()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 981
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 983
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 985
    sget-object v1, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 987
    sget-object v1, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    new-instance v2, Lcom/android/email/activity/MailboxList$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$10;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1003
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createMailbox()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 871
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 872
    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 874
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 876
    const v2, 0x7f08036d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 878
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 879
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Force show SIP"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 882
    const v2, 0x7f10013a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 885
    const v2, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxList$4;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MailboxList$4;-><init>(Lcom/android/email/activity/MailboxList;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 903
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/email/activity/MailboxList$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$5;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 909
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private deleteMailbox()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 961
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804fa

    new-instance v2, Lcom/android/email/activity/MailboxList$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$9;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804fb

    new-instance v2, Lcom/android/email/activity/MailboxList$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxList$8;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private hasColumnId(J)Z
    .locals 3
    .parameter "columnId"

    .prologue
    .line 1299
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1300
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 1301
    const/4 v1, 0x1

    .line 1304
    :goto_1
    return v1

    .line 1299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasServerId(Ljava/lang/String;)Z
    .locals 2
    .parameter "serverId"

    .prologue
    .line 1308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1309
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    const/4 v1, 0x1

    .line 1313
    :goto_1
    return v1

    .line 1308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onContextMenuSelected(Ljava/lang/String;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 846
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 847
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    .line 848
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onOpenMailbox()V

    .line 867
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    .line 868
    return-void

    .line 850
    :cond_1
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    .line 852
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    .line 853
    :cond_2
    const v1, 0x7f08030f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 854
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    .line 855
    :cond_3
    const v1, 0x7f080314

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 856
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    .line 857
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    .line 858
    :cond_4
    const v1, 0x7f080315

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    .line 860
    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {p0, p0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccountForMove(Landroid/content/Context;J)V

    goto :goto_0

    .line 863
    :cond_5
    const/4 v0, 0x0

    .line 864
    .local v0, message:Ljava/lang/String;
    const v1, 0x7f080113

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onOpenMailbox()V
    .locals 4

    .prologue
    .line 1011
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXL;->actionOpenMailbox(Landroid/app/Activity;JJ)V

    .line 1012
    return-void
.end method

.method private openFolderCascade(Ljava/lang/String;)V
    .locals 25
    .parameter "destMailboxParentId"

    .prologue
    .line 210
    const/4 v12, -0x1

    .line 211
    .local v12, LMTPosition:I
    const/4 v13, -0x1

    .line 213
    .local v13, LMTPositionOpen:I
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v21, selection:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey=? AND type<64 AND type!=8 AND type!=4 AND type!=3 AND flagVisible=1 AND parentServerId=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    iget-object v4, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v2

    const-string v7, "type,displayname ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 225
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-eqz v14, :cond_6

    .line 235
    const/4 v8, 0x0

    .line 239
    .local v8, parentId:Ljava/lang/String;
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 240
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/email/activity/MailboxList;->hasServerId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 243
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .local v20, parentSelection:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey=? AND type<64 AND type!=8 AND flagVisible=1 AND serverId=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    iget-object v4, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v2

    const-string v7, "type,displayname ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 255
    .local v18, parentCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 259
    if-eqz v18, :cond_2

    .line 261
    const/16 v19, 0x0

    .line 263
    .local v19, parentParentId:Ljava/lang/String;
    const/4 v2, -0x1

    :try_start_1
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 264
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/email/activity/MailboxList;->openFolderCascade(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    .end local v19           #parentParentId:Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 274
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 278
    .end local v18           #parentCursor:Landroid/database/Cursor;
    .end local v20           #parentSelection:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, name:Ljava/lang/String;
    const/16 v22, -0x1

    .line 281
    .local v22, sortPosition:I
    const/16 v17, -0x1

    .line 282
    .local v17, lastPosition:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 284
    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 285
    const/16 v3, 0xc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v2

    if-ne v3, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7

    .line 287
    move/from16 v22, v16

    .line 297
    :cond_4
    :goto_3
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_a

    .line 298
    move/from16 v12, v22

    .line 305
    :goto_4
    add-int/lit8 v13, v12, -0x1

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->setIsOpened(Z)V

    .line 309
    :cond_5
    const/4 v2, -0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 310
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 311
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 312
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 313
    .local v6, type:I
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, count:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, id:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 317
    .local v10, columnId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    .line 319
    .local v9, level:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;-><init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 321
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 269
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #count:Ljava/lang/String;
    .end local v6           #type:I
    .end local v7           #id:Ljava/lang/String;
    .end local v9           #level:I
    .end local v10           #columnId:J
    .end local v16           #i:I
    .end local v17           #lastPosition:I
    .end local v22           #sortPosition:I
    .restart local v18       #parentCursor:Landroid/database/Cursor;
    .restart local v19       #parentParentId:Ljava/lang/String;
    .restart local v20       #parentSelection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v15

    .line 270
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 323
    .end local v15           #e:Ljava/lang/Exception;
    .end local v18           #parentCursor:Landroid/database/Cursor;
    .end local v19           #parentParentId:Ljava/lang/String;
    .end local v20           #parentSelection:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v15

    .line 324
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v8           #parentId:Ljava/lang/String;
    .end local v15           #e:Ljava/lang/Exception;
    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 290
    .restart local v4       #name:Ljava/lang/String;
    .restart local v8       #parentId:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v17       #lastPosition:I
    .restart local v22       #sortPosition:I
    :cond_7
    move/from16 v17, v16

    .line 282
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 291
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    move/from16 v17, v16

    .line 293
    goto/16 :goto_3

    .line 299
    :cond_a
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_b

    .line 300
    add-int/lit8 v12, v17, 0x1

    goto/16 :goto_4

    .line 302
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v12

    goto/16 :goto_4
.end method

.method private renameMailbox()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 913
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 914
    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 916
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 919
    const v1, 0x7f08036b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 921
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 922
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Force show SIP"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 925
    const v1, 0x7f10013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 928
    iget-wide v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 929
    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 931
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 935
    :cond_0
    const v1, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxList$6;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MailboxList$6;-><init>(Lcom/android/email/activity/MailboxList;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 951
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MailboxList$7;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxList$7;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 957
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    .line 379
    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 380
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080504

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 385
    iget-boolean v1, p0, Lcom/android/email/activity/MailboxList;->isCreateFolder:Z

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2af8

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v1, "k1001.kim"

    const-string v2, "progress in creating folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isNetworkConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1664
    :try_start_0
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/android/email/Email;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1666
    if-nez v0, :cond_0

    .line 1667
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): info is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1682
    :goto_0
    return v0

    .line 1670
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1671
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1672
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_1

    .line 1673
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    const/4 v0, 0x1

    goto :goto_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): exception..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_1
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1682
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x8

    .line 333
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 335
    const/16 v4, 0x1f40

    if-ne p1, v4, :cond_4

    .line 336
    const/16 v4, 0x2328

    if-ne p2, v4, :cond_3

    .line 337
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    const-string v4, "DES_MAILBOX_ID"

    const-wide/16 v5, -0x1

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    .line 340
    const-string v4, "DES_MAILBOX_PARENT_ID"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, destMailboxParentId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxList;->hasServerId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxList;->openFolderCascade(Ljava/lang/String;)V

    .line 345
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 346
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 347
    iput v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    .line 352
    :cond_1
    const/4 v1, 0x0

    .line 353
    .local v1, destMailboxItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 354
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 355
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #destMailboxItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    .line 359
    .restart local v1       #destMailboxItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    :cond_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 362
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 363
    .local v0, controller:Lcom/android/email/Controller;
    const v4, 0x7f080503

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MailboxList;->showProgressDialog(Ljava/lang/String;)V

    .line 364
    iget-wide v4, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/email/Controller;->moveFolder(JJ)V

    .line 370
    .end local v0           #controller:Lcom/android/email/Controller;
    .end local v1           #destMailboxItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    .end local v2           #destMailboxParentId:Ljava/lang/String;
    .end local v3           #i:I
    :cond_3
    :goto_2
    const/16 v4, 0x2710

    if-ne p2, v4, :cond_4

    .line 371
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    :cond_4
    return-void

    .line 345
    .restart local v2       #destMailboxParentId:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 353
    .restart local v1       #destMailboxItem:Lcom/android/email/activity/MailboxList$MailboxListItem;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v5, 0x1770

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 625
    :goto_0
    return-void

    .line 608
    :pswitch_0
    new-instance v1, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {v1, p0, v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    .line 609
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 610
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    .line 611
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    .line 612
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 613
    .local v0, moveIntent:Landroid/content/Intent;
    const-string v1, "DES_MAILBOX_ID"

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mDestMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 614
    const-string v2, "DES_MAILBOX_PARENT_ID"

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const/16 v1, 0x2328

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/MailboxList;->setResult(ILandroid/content/Intent;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    goto :goto_0

    .line 620
    .end local v0           #moveIntent:Landroid/content/Intent;
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    .line 621
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->setResult(I)V

    .line 622
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x7f100150
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 535
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 816
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 818
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    .line 819
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    .line 821
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 841
    :goto_0
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    .line 842
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 823
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onOpenMailbox()V

    goto :goto_0

    .line 826
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    .line 827
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    .line 830
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    .line 833
    :pswitch_4
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    .line 834
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    .line 837
    :pswitch_5
    iput-boolean v3, p0, Lcom/android/email/activity/MailboxList;->isMoveCommand:Z

    .line 838
    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {p0, p0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccountForMove(Landroid/content/Context;J)V

    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x7f1002c7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x4

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    .line 396
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 399
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->setContentView(I)V

    .line 400
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f040062

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 402
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 404
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    .line 405
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    .line 406
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    .line 407
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 408
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    .line 410
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MOVE_SCREEN"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    .line 415
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MOVE_MAILBOX_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mSelectedMoveMailboxId:J

    .line 417
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->unregisterForContextMenu(Landroid/view/View;)V

    .line 426
    :goto_0
    new-instance v0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    const v1, 0x7f040068

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;-><init>(Lcom/android/email/activity/MailboxList;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 429
    .local v6, bar:Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    .line 430
    invoke-virtual {v6, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    .line 432
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 433
    new-instance v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    .line 434
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 436
    new-instance v0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    .line 437
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 445
    :goto_1
    new-instance v0, Lcom/android/email/activity/MailboxList$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$1;-><init>(Lcom/android/email/activity/MailboxList;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    .line 483
    return-void

    .line 421
    .end local v6           #bar:Landroid/app/ActionBar;
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMove:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 439
    .restart local v6       #bar:Landroid/app/ActionBar;
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    const/4 v9, 0x1

    .line 774
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v4, p3

    .line 775
    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 776
    .local v4, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v7

    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v8, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, folderName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 779
    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 782
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 783
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f0f0018

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 784
    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 785
    .local v3, mailboxType:I
    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v5

    .line 787
    .local v5, serverId:Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 788
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 789
    .local v1, controller:Lcom/android/email/Controller;
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 790
    iget v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v6, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    .line 791
    iget-object v6, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    .line 798
    if-eq v3, v9, :cond_1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/16 v6, 0xc

    if-ne v3, v6, :cond_2

    .line 800
    :cond_1
    const v6, 0x7f1002c8

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 801
    const v6, 0x7f1002ca

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 802
    const v6, 0x7f1002cb

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 805
    :cond_2
    const/16 v6, 0x8

    if-eq v3, v6, :cond_3

    .line 807
    const/16 v6, 0x61

    if-eq v3, v6, :cond_3

    .line 808
    const v6, 0x7f1002cd

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 812
    :cond_3
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 632
    move v1, p1

    .line 634
    .local v1, removeId:I
    packed-switch p1, :pswitch_data_0

    .line 650
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 654
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    new-instance v2, Lcom/android/email/activity/MailboxList$3;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/MailboxList$3;-><init>(Lcom/android/email/activity/MailboxList;I)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 661
    return-object v0

    .line 636
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z

    .line 638
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->createMailbox()Landroid/app/Dialog;

    move-result-object v0

    .line 639
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 641
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->renameMailbox()Landroid/app/Dialog;

    move-result-object v0

    .line 642
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 644
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->deleteMailbox()Landroid/app/Dialog;

    move-result-object v0

    .line 645
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 647
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->createContextMenu()Landroid/app/Dialog;

    move-result-object v0

    .line 648
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 669
    const-string v2, "FolderOption"

    const-string v3, "onCreateOptionsMenu(Menu menu)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 671
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f001a

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 672
    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 673
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 674
    .local v1, controller:Lcom/android/email/Controller;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    const v2, 0x7f1002d0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 677
    const v2, 0x7f1002cd

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 682
    :cond_0
    return v4
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 512
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 514
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 516
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    invoke-virtual {v2, v4}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->cancel(Z)Z

    .line 517
    iput-object v5, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_1

    .line 521
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 522
    iput-object v5, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 526
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 527
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 529
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 538
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    .line 540
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, parentId:Ljava/lang/String;
    new-instance v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    move-object v1, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    .line 542
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 543
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 547
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    .line 549
    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mFolderName:Ljava/lang/String;

    .line 552
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 553
    .local v2, mailboxType:I
    iget-wide v3, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 554
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 555
    .local v1, controller:Lcom/android/email/Controller;
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 556
    iput p3, p0, Lcom/android/email/activity/MailboxList;->mSelectedPosition:I

    .line 557
    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    .line 564
    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 566
    :cond_1
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f080070

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f080058

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080314

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f080315

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    sput-object v3, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    .line 573
    :cond_2
    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 575
    const/16 v3, 0x61

    if-eq v2, v3, :cond_3

    .line 576
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f080070

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f080058

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080314

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f080315

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x5

    const v5, 0x7f08030f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/email/activity/MailboxList;->mlistContextMenu:[Ljava/lang/String;

    .line 583
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    .line 584
    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 704
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 706
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 742
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    .line 748
    :goto_0
    return v6

    .line 708
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->onBackPressed()V

    goto :goto_0

    .line 712
    :sswitch_1
    iput-boolean v6, p0, Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z

    .line 713
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 714
    .local v1, controller:Lcom/android/email/Controller;
    iget-wide v7, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-virtual {v1, v7, v8}, Lcom/android/email/Controller;->updateMailboxList(J)V

    .line 715
    iget-wide v7, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v7, v8}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    goto :goto_0

    .line 721
    .end local v1           #controller:Lcom/android/email/Controller;
    :sswitch_2
    const-wide/16 v3, -0x1

    .line 722
    .local v3, rootId:J
    const/4 v0, 0x0

    .line 723
    .local v0, c:Landroid/database/Cursor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayName=\'__eas\' AND accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, selection:Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 730
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 731
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 734
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 735
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 738
    :cond_1
    iput-wide v3, p0, Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J

    .line 739
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MailboxList;->showDialog(I)V

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 735
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_2
    throw v6

    .line 745
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #rootId:J
    .end local v5           #selection:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .line 746
    .local v2, message:Ljava/lang/String;
    const v7, 0x7f080113

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 747
    iget-object v7, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    invoke-virtual {v7, v2}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1002cd -> :sswitch_2
        0x7f1002d0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 488
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 489
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f1002d0

    const v3, 0x7f1002cd

    const/4 v2, 0x1

    .line 755
    const-string v0, "FolderOption"

    const-string v1, "onPrepareOptionsMenu(Menu menu)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 759
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 762
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList;->isMoveScreen:Z

    if-eqz v0, :cond_0

    .line 763
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 764
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 769
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 766
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 767
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 494
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 496
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/email/activity/MailboxList$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxList$2;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    .line 508
    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_0
    monitor-exit v1

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 601
    monitor-exit v1

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
