.class public Lcom/android/mms/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    }
.end annotation


# static fields
.field public static badge:Landroid/widget/QuickContactBadge;

.field private static deleteComplete:Z

.field public static mIsEmptyThread:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversationHeader:Landroid/widget/LinearLayout;

.field private mConversationTitle:Landroid/widget/LinearLayout;

.field private mConvlist:Landroid/view/View;

.field private mCountToDelete:I

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mEmptyView:Landroid/view/View;

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mNewCompose:Landroid/widget/LinearLayout;

.field private final mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field mTotalConversations:Landroid/widget/TextView;

.field private mVisibleOffset:I

.field private onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private onNewMessage:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    .line 191
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    .line 1287
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    .line 164
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 205
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$1;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 221
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 223
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 515
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$6;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 893
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$10;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 999
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$11;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1186
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$13;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 1260
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$14;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setIntent(Landroid/content/Intent;)V

    .line 214
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationListFragment;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 739
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1138
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThread(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 1140
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1155
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",hasLockedMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const v0, 0x7f03000f

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1159
    const v0, 0x7f080048

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1160
    const v1, 0x7f080047

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1161
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 1163
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setHasLockedMessage(Z)V

    .line 1164
    if-nez p2, :cond_0

    .line 1165
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1176
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1177
    if-eqz p1, :cond_1

    const v0, 0x7f090090

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1167
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1168
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1169
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ConversationListFragment$12;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1177
    :cond_1
    const v0, 0x7f09008f

    goto :goto_1
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 982
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    const-string v0, "mailto"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 993
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 995
    return-object v1

    .line 987
    :cond_0
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 931
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    .line 932
    return-void
.end method

.method private deleteSelectedConversations()V
    .locals 3

    .prologue
    .line 1869
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversations()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 1872
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1873
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 1878
    :goto_0
    return-void

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v1, 0x70d

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 500
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 501
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 502
    return-void
.end method

.method private static ensureUpdateDeletable()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 4
    .parameter "position"

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$5;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901d1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "This fragment was detached from it\'s activity."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v0, ""

    .line 1424
    :goto_0
    return-object v0

    .line 1420
    :cond_0
    if-nez p1, :cond_1

    .line 1421
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1423
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 487
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private initListAdapter()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 523
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 528
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V

    .line 530
    sget-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 531
    sget-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    .line 532
    sput-wide v3, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    .line 535
    :cond_0
    return-void
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 1439
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 1441
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1442
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1443
    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 1444
    const/4 v2, 0x1

    .line 1448
    .end local v0           #newId:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 685
    const-string v0, "conversationDeleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 686
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 597
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 598
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 600
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "markCheckedMessageLimit()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method private notifyDeleteStart()V
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteStart()V

    .line 1896
    return-void
.end method

.method private openThread(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 935
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 947
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 940
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-static {v1, p1, p2, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 942
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 945
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private refreshSplitMode()V
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 1126
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 681
    const-string v0, "conversationDeleteMode"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 495
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 496
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 497
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter

    .prologue
    .line 1429
    const v0, 0x7f090116

    const v1, 0x7f0a0002

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 1431
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    .line 786
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 787
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 790
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$9;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 795
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 4
    .parameter "isFake"

    .prologue
    .line 805
    if-eqz p1, :cond_0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a4

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForFakeView(Landroid/content/AsyncQueryHandler;II)V

    .line 814
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    .line 780
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 781
    return-void
.end method

.method private updateEmptyScreen(IZ)V
    .locals 7
    .parameter "resultCount"
    .parameter "handleFooter"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 746
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmptyScreen(),resultCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 751
    .local v0, listView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {p0, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    if-nez p1, :cond_2

    .line 758
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 759
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 760
    if-eqz p2, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 771
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 772
    if-eqz p2, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 3
    .parameter "cursor"
    .parameter "threadId"

    .prologue
    .line 1919
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1921
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1923
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 1930
    .end local p1
    :goto_1
    return-object p1

    .line 1927
    .restart local p1
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1921
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1930
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public drawMessagePointer(J)V
    .locals 3
    .parameter

    .prologue
    .line 951
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    .line 957
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 960
    :cond_0
    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    .prologue
    .line 963
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 968
    :cond_0
    return-void
.end method

.method public getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1765
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumber(),position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1769
    if-nez v1, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return-object v0

    .line 1772
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1773
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1776
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 1777
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 1781
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1782
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1784
    :catch_0
    move-exception v1

    .line 1785
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConversationIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 505
    if-gez p1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v3

    .line 508
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 509
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 510
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 512
    .local v1, cntFooter:I
    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 1865
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 272
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[Start]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->loadToDeleteMode(Landroid/os/Bundle;)V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 284
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    .line 285
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 287
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 290
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 291
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 295
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->ensureUpdateDeletable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-static {}, Lcom/android/mms/data/Conversation;->updateDeletable()V

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onNewMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 302
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAdapter()V

    .line 304
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 305
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 306
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checked_message_limits"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 308
    .local v0, checkedMessageLimits:Z
    if-nez v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$2;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$3;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$4;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 354
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[End]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 227
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "start onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 229
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "end onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1107
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 1111
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 1118
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1052
    const-string v0, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextItemSelected(),itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1056
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1057
    instance-of v2, v0, Landroid/database/Cursor;

    if-nez v2, :cond_0

    move v0, v1

    .line 1092
    :goto_0
    return v0

    .line 1059
    :cond_0
    check-cast v0, Landroid/database/Cursor;

    .line 1061
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 1065
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1066
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1092
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1068
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 1069
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_1

    .line 1073
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_1

    .line 1077
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1078
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1079
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1080
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1084
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1066
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 236
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 242
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[Start]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const v0, 0x7f03000e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    .line 246
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 248
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportEmoji()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setCacheColorHint(I)V

    .line 251
    :cond_0
    const v0, 0x7f03000a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 263
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 265
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[End]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 2

    .prologue
    .line 1899
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1902
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1903
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 1888
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1889
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1890
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1892
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 716
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 718
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 719
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 722
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "post onDraftChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment$8;-><init>(Lcom/android/mms/ui/ConversationListFragment;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 731
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 604
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    .line 608
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 860
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 861
    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    packed-switch v0, :pswitch_data_0

    .line 890
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 869
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move v0, v1

    .line 870
    goto :goto_0

    .line 873
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    .line 874
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    move v0, v1

    .line 875
    goto :goto_0

    .line 877
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 880
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 881
    goto :goto_0

    .line 884
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 885
    const-string v2, "com.wsomacp"

    const-string v3, "com.wsomacp.WSSClientProvUiList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 888
    goto :goto_0

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareListOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    .line 819
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 855
    :goto_0
    return v0

    .line 827
    :cond_0
    const/4 v7, 0x0

    .line 829
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 830
    .local v2, cpUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 833
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 834
    const/4 v0, 0x0

    const/16 v1, 0xcc

    const/4 v3, 0x0

    const v4, 0x7f090007

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :cond_1
    if-eqz v7, :cond_2

    .line 839
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_2
    const/16 v0, 0xc9

    const v1, 0x104000c

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 846
    const/16 v0, 0xcd

    const v1, 0x7f090006

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 851
    const/16 v0, 0xcb

    const v1, 0x7f09000a

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 855
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 838
    .end local v2           #cpUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 839
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1730
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1734
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 1746
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1747
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 659
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 663
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 666
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 667
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void

    .line 670
    .restart local v1       #headerCount:I
    :cond_0
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 672
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 613
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 614
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->refreshFontSize()V

    .line 618
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:sms rejected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 622
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:report"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 626
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 628
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 630
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V

    .line 645
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 651
    :cond_0
    sget-boolean v0, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v0, :cond_1

    .line 652
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 655
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 703
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 704
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 711
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 712
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter

    .prologue
    .line 1684
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1688
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionFired(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flickDirection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 1694
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1696
    if-nez v0, :cond_0

    .line 1697
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    :goto_0
    return-void

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1702
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1706
    :cond_0
    if-nez p2, :cond_2

    .line 1707
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1709
    if-nez v0, :cond_1

    .line 1710
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1712
    :cond_1
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1716
    :cond_2
    if-ne v3, p2, :cond_3

    .line 1717
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    .line 1718
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 1720
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter

    .prologue
    .line 1761
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    return-void
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 1946
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1947
    const/4 v0, 0x0

    .line 1951
    :goto_0
    return v0

    .line 1950
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 1951
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestFocusOnConversationList(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1934
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1936
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1937
    const/4 v1, 0x0

    .line 1941
    :goto_0
    return v1

    .line 1939
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 1941
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 4

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 545
    .local v0, autoDeleteEnabled:Z
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOneTimeStorageLimitCheckForLegacyMessages(),autoDeleteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$7;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    .end local v0           #autoDeleteEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDeleteModeLayout(ZZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1803
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",requestLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 1807
    if-eqz p1, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1812
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1813
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1814
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1815
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1817
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1818
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1820
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1821
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1822
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1843
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setDeleteMode(Z)V

    .line 1844
    if-eqz p2, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1846
    :cond_0
    return-void

    .line 1824
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1825
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1826
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1827
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1829
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1830
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1832
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1833
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1793
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1882
    return-void
.end method
