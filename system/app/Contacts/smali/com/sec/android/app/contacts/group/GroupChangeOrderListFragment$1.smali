.class Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;
.super Ljava/lang/Object;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 129
    new-instance v0, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->clear()V

    .line 140
    const/4 v3, -0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 141
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, title:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, systemId:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, groupListItem:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    .end local v0           #groupListItem:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    .end local v1           #systemId:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
