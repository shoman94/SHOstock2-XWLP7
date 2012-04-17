.class public Lcom/android/contacts/interactions/TestLoaderManager;
.super Landroid/app/LoaderManager;
.source "TestLoaderManager.java"


# instance fields
.field private mDelegate:Landroid/app/LoaderManager;

.field private final mFinishedLoaders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/TestLoaderManager;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    return-object v0
.end method

.method public static varargs waitForLoaders([Landroid/content/Loader;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, loaders:[Landroid/content/Loader;,"[Landroid/content/Loader<*>;"
    array-length v7, p0

    new-array v6, v7, [Ljava/lang/Thread;

    .line 157
    .local v6, waitThreads:[Ljava/lang/Thread;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_0

    .line 158
    aget-object v4, p0, v1

    check-cast v4, Landroid/content/AsyncTaskLoader;

    .line 159
    .local v4, loader:Landroid/content/AsyncTaskLoader;,"Landroid/content/AsyncTaskLoader<*>;"
    new-instance v7, Lcom/android/contacts/interactions/TestLoaderManager$1;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoaderWaitingThread"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/android/contacts/interactions/TestLoaderManager$1;-><init>(Ljava/lang/String;Landroid/content/AsyncTaskLoader;)V

    aput-object v7, v6, v1

    .line 170
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v4           #loader:Landroid/content/AsyncTaskLoader;,"Landroid/content/AsyncTaskLoader<*>;"
    :cond_0
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Thread;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 176
    .local v5, thread:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :catch_0
    move-exception v7

    goto :goto_2

    .line 181
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_1
    return-void
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 214
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, callback:Landroid/app/LoaderManager$LoaderCallbacks;,"Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    new-instance v1, Lcom/android/contacts/interactions/TestLoaderManager$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/contacts/interactions/TestLoaderManager$2;-><init>(Lcom/android/contacts/interactions/TestLoaderManager;Landroid/app/LoaderManager$LoaderCallbacks;I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p3, callback:Landroid/app/LoaderManager$LoaderCallbacks;,"Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Landroid/app/LoaderManager;)V
    .locals 2
    .parameter "delegate"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    if-eq v0, p1, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TestLoaderManager cannot be shared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    .line 112
    return-void
.end method

.method varargs declared-synchronized waitForLoaders([I)V
    .locals 8
    .parameter "loaderIds"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v5, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<*>;>;"
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    .line 132
    .local v4, loaderId:I
    iget-object v6, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v6, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/AsyncTaskLoader;

    .line 139
    .local v3, loader:Landroid/content/AsyncTaskLoader;,"Landroid/content/AsyncTaskLoader<*>;"
    if-nez v3, :cond_1

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loader does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v3           #loader:Landroid/content/AsyncTaskLoader;,"Landroid/content/AsyncTaskLoader<*>;"
    .end local v4           #loaderId:I
    :goto_2
    monitor-exit p0

    return-void

    .line 144
    .restart local v3       #loader:Landroid/content/AsyncTaskLoader;,"Landroid/content/AsyncTaskLoader<*>;"
    .restart local v4       #loaderId:I
    :cond_1
    :try_start_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 130
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #loader:Landroid/content/AsyncTaskLoader;,"Landroid/content/AsyncTaskLoader<*>;"
    .end local v4           #loaderId:I
    .end local v5           #loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<*>;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 147
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v5       #loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<*>;>;"
    :cond_2
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Landroid/content/Loader;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/Loader;

    invoke-static {v6}, Lcom/android/contacts/interactions/TestLoaderManager;->waitForLoaders([Landroid/content/Loader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
