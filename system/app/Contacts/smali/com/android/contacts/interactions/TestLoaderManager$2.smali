.class Lcom/android/contacts/interactions/TestLoaderManager$2;
.super Ljava/lang/Object;
.source "TestLoaderManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/TestLoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/TestLoaderManager;

.field final synthetic val$callback:Landroid/app/LoaderManager$LoaderCallbacks;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/TestLoaderManager;Landroid/app/LoaderManager$LoaderCallbacks;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->this$0:Lcom/android/contacts/interactions/TestLoaderManager;

    iput-object p2, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->val$callback:Landroid/app/LoaderManager$LoaderCallbacks;

    iput p3, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->val$callback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    .local p2, data:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->val$callback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->this$0:Lcom/android/contacts/interactions/TestLoaderManager;

    #getter for: Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/contacts/interactions/TestLoaderManager;->access$000(Lcom/android/contacts/interactions/TestLoaderManager;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    monitor-exit p0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager$2;->val$callback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/content/Loader;)V

    .line 202
    return-void
.end method
