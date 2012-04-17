.class public Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
.super Landroid/app/ListFragment;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;,
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;,
        Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field protected mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    return-object v0
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v0, "[ServiceNumbersFragment]"

    const-string v1, "query: starting an async query"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    const/4 v1, 0x0

    const-string v3, "content://icc/sdn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->displayProgress(Z)V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const v0, 0x7f0400ba

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    .line 73
    new-instance v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mQueryHandler:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;

    .line 74
    new-instance v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400bb

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;-><init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 99
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    invoke-virtual {v3, p3}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 100
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 101
    const-string v3, "number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, numberString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->startActivity(Landroid/content/Intent;)V

    .line 107
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #numberString:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->query()V

    .line 82
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 89
    :cond_0
    return-void
.end method
