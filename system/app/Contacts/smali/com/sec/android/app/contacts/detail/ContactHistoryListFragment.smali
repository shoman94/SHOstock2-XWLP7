.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.super Landroid/app/Fragment;
.source "ContactHistoryListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$Prefs;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$ContextMenuIds;
    }
.end annotation


# static fields
.field static final LOGS_PROJECTION:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeleteStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDeleteMode:Z


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mContactId:J

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContextInfoLogType:I

.field private mContextInfoMessageId:Ljava/lang/String;

.field private mContextInfoName:Ljava/lang/String;

.field private mContextualDeleteId:I

.field private mEmptyView:Landroid/view/View;

.field public mEveryBodyIsOff:Z

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mIsCallType:Z

.field public mIsLoadingProgress:Z

.field private mIsLogsUpdatedByTask:Z

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLookupUri:Landroid/net/Uri;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

.field private mShouldQuery:Z

.field private mSortOptions:[Z

.field private mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    .line 172
    sput-boolean v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    .line 106
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    .line 108
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    .line 110
    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 112
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->considerBindDate(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startQuery()V

    return-void
.end method

.method private addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    .line 267
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, headerContainer:Landroid/widget/FrameLayout;
    const v1, 0x7f040033

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 282
    return-void
.end method

.method private considerBindDate(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    const-string v0, "ContactHistoryListFragment"

    const-string v1, "considerBindDate cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f040032

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->forceLayout()V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method private getTypeSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 448
    const-string v0, ""

    .line 449
    .local v0, logType:Ljava/lang/String;
    const-string v1, ""

    .line 452
    .local v1, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 453
    const-string v2, ""

    if-ne v0, v2, :cond_5

    .line 454
    const-string v0, "100, 500, 800"

    .line 463
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    .line 464
    const-string v2, ""

    if-ne v0, v2, :cond_6

    .line 465
    const-string v0, "300, 200"

    .line 472
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    .line 473
    const-string v2, ""

    if-ne v0, v2, :cond_7

    .line 474
    const-string v0, "400"

    .line 481
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    .line 482
    const-string v2, ""

    if-ne v0, v2, :cond_8

    .line 483
    const-string v0, "700"

    .line 489
    :cond_3
    :goto_3
    const-string v2, ""

    if-ne v0, v2, :cond_9

    .line 490
    const-string v0, "logtype = 0"

    .line 495
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    :cond_4
    return-object v1

    .line 457
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 100, 500, 800"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 300, 200"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 476
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 400"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 485
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 700"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 492
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logtype in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method private startQuery()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLoading(Z)V

    .line 428
    const-string v0, "ContactHistoryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContactId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v5, ""

    .line 433
    .local v5, selection:Ljava/lang/String;
    const-string v7, ""

    .line 435
    .local v7, sortOrder:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( contactid  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getTypeSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    const-string v0, "ContactHistoryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v7, "date DESC LIMIT 2500"

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->cancelOperation(I)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    sget-object v3, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private updateContactId()V
    .locals 5

    .prologue
    const v4, 0x7f0a0046

    const/4 v3, 0x0

    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 506
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 507
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 521
    :goto_0
    return-void

    .line 511
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 513
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 515
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    goto :goto_0

    .line 517
    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public doDeleteAction()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 774
    const/4 v2, 0x0

    .line 775
    .local v2, i:I
    const/4 v3, 0x0

    .line 776
    .local v3, logType:I
    const/4 v0, 0x0

    .line 778
    .local v0, bHasCallLog:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    .line 779
    sget-object v6, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 781
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 782
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-ne v6, v9, :cond_3

    .line 783
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    iget-object v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 784
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 785
    const/4 v0, 0x0

    .line 798
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    sget-object v6, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "historyDeleteShowNeverAgain"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 800
    .local v4, showNeverAgain:I
    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 807
    :goto_1
    return-void

    .line 788
    .end local v4           #showNeverAgain:I
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v6, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    const-string v6, "logtype"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 790
    const/16 v6, 0x64

    if-eq v3, v6, :cond_2

    const/16 v6, 0x1f4

    if-eq v3, v6, :cond_2

    const/16 v6, 0x320

    if-ne v3, v6, :cond_3

    .line 792
    :cond_2
    const/4 v0, 0x1

    .line 781
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 804
    .restart local v4       #showNeverAgain:I
    :cond_4
    new-instance v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 805
    .local v5, task:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    new-array v6, v9, [Ljava/util/ArrayList;

    sget-object v7, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIsDeleteMode()Z
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public getSortOptions()[Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 220
    sput-object p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    .line 222
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnDeletedItemCheckedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 18
    .parameter "item"

    .prologue
    .line 336
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 338
    :pswitch_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "historyDeleteShowNeverAgain"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 340
    .local v15, showNeverAgain:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    if-eqz v1, :cond_1

    if-nez v15, :cond_1

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 349
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 344
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    const/16 v2, 0x28

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 352
    .end local v15           #showNeverAgain:I
    :pswitch_1
    const-wide/16 v13, 0x0

    .line 353
    .local v13, messageLongId2:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 357
    :cond_2
    const-wide/16 v7, 0x0

    .line 358
    .local v7, accountKey:J
    const-string v1, "content://com.android.email.provider/message"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 359
    .local v2, mUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 361
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    const-string v11, "_id"

    .line 362
    .local v11, id:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "accountKey"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 366
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 367
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 376
    :goto_3
    if-eqz v9, :cond_3

    .line 377
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 381
    .end local v11           #id:Ljava/lang/String;
    :cond_3
    :goto_4
    const/4 v12, 0x0

    .line 382
    .local v12, intent:Landroid/content/Intent;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 383
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-string v1, "com.android.email.intent.action.REPLY"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_4
    :goto_5
    if-eqz v12, :cond_0

    .line 389
    const-string v1, "message_id"

    invoke-virtual {v12, v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 390
    const-string v1, "account_id"

    invoke-virtual {v12, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 391
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 369
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v11       #id:Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0265

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 373
    .end local v11           #id:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 374
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    if-eqz v9, :cond_3

    .line 377
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 376
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 377
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 384
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 385
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-string v1, "com.android.email.intent.action.FORWARD"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v12       #intent:Landroid/content/Intent;
    goto :goto_5

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 315
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_2

    .line 318
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    .line 323
    :goto_0
    const v0, 0x7f0a028e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 326
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 327
    const v0, 0x7f0a0267

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 329
    const/4 v0, 0x2

    const v1, 0x7f0a0266

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 332
    :cond_1
    return-void

    .line 320
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 231
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateContactId()V

    .line 233
    const v0, 0x7f040031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 241
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 251
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    .line 252
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040032

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    .line 261
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setHasOptionsMenu(Z)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteItem()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 878
    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 879
    new-instance v6, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 880
    .local v6, task:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    new-array v0, v5, [Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    aput-object v1, v0, v8

    invoke-virtual {v6, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 887
    .end local v6           #task:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    :goto_0
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    const/16 v1, 0x28

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 213
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 4
    .parameter "bCheckStatus"

    .prologue
    .line 765
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 766
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 767
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 770
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onExistsDeletedItems(Z)V

    .line 771
    return-void

    .line 769
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setCheckPosition(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int v0, p1, v1

    .line 734
    .local v0, realPosition:I
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 736
    return-void

    .line 734
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMode(Z)V
    .locals 2
    .parameter "isDeleteMode"

    .prologue
    const/4 v1, 0x0

    .line 401
    sput-boolean p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    .line 402
    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setMode(Z)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->notifyDataSetChanged()V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 412
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAllCheckState()V
    .locals 7

    .prologue
    .line 739
    const/4 v3, 0x1

    .line 740
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 741
    .local v2, everyBodyIsOff:Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 743
    .local v1, dataCount:I
    if-nez v1, :cond_1

    .line 744
    const/4 v3, 0x0

    .line 745
    const/4 v2, 0x1

    .line 759
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 760
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 761
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    invoke-interface {v5, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onExistsDeletedItems(Z)V

    .line 762
    return-void

    .line 747
    :cond_1
    const/4 v0, 0x0

    .line 748
    .local v0, checked:Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 749
    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    or-int v5, v3, v2

    if-eqz v5, :cond_0

    .line 750
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 751
    if-nez v0, :cond_2

    .line 752
    const/4 v3, 0x0

    .line 749
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 754
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateSharedPrefs()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 285
    const-string v0, "ContactHistoryListFragment"

    const-string v1, "updateSharedPrefs()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 287
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "view_by_call"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "view_by_message"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v4

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "view_by_email"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "view_by_im"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 292
    return-void
.end method
