.class public Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.super Landroid/app/Fragment;
.source "GroupChangeOrderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;,
        Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 125
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mGroupChangeOrderLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 78
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    const v1, 0x7f040015

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;-><init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 89
    const v0, 0x7f040075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0d017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public onDoneClicked()V
    .locals 6

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, groupValue:Landroid/content/ContentValues;
    const-string v5, "title"

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    iget-object v4, v4, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "group_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0           #groupValue:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/contacts/ContactSaveService;->createChangeOrderIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 118
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 120
    return-void
.end method
