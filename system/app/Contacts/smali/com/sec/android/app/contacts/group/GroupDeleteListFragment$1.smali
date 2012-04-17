.class Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;
.super Ljava/lang/Object;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 208
    new-instance v0, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, loader:Lcom/sec/android/app/contacts/group/AggGroupNameLoader;
    const-string v1, "system_id is null"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;->setSelection(Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 216
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->configureEmptyView(Z)V
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$200(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    #calls: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$300(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    .line 219
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 223
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
