.class Lcom/android/contacts/group/GroupEditorFragment$4;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
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
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1019
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mMode:I
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$200(Lcom/android/contacts/group/GroupEditorFragment;)I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 1020
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v0

    .line 1021
    .local v0, groupId:J
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->createGoogleGroupDataLoader(Landroid/content/Context;J)Landroid/content/CursorLoader;

    move-result-object v2

    .line 1027
    .end local v0           #groupId:J
    .local v2, loader:Landroid/content/CursorLoader;
    :goto_0
    return-object v2

    .line 1024
    .end local v2           #loader:Landroid/content/CursorLoader;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->createAggGroupDataLoader(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v2

    .restart local v2       #loader:Landroid/content/CursorLoader;
    goto :goto_0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1012
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$4;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    .line 1032
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1033
    const-string v0, "GroupEditorFragment"

    const-string v1, "Group not found with URI Closing activity now."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/GroupEditorFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/GroupEditorFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->bindGroupMetaData(Landroid/database/Cursor;)V
    invoke-static {v0, p2}, Lcom/android/contacts/group/GroupEditorFragment;->access$600(Lcom/android/contacts/group/GroupEditorFragment;Landroid/database/Cursor;)V

    .line 1043
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$700(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1048
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1012
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 1055
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
