.class public final Lcom/android/contacts/util/AsyncTaskExecutors;
.super Ljava/lang/Object;
.source "AsyncTaskExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;,
        Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;
    }
.end annotation


# static fields
.field private static mInjectedAsyncTaskExecutorFactory:Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static checkCalledFromUiThread()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit method must be called from ui thread, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createAsyncTaskExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/android/contacts/util/AsyncTaskExecutors;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/android/contacts/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/android/contacts/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    invoke-interface {v0}, Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;->createAsyncTaskExeuctor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    monitor-exit v1

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    monitor-exit v1

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 3

    .prologue
    .line 61
    const-class v1, Lcom/android/contacts/util/AsyncTaskExecutors;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/android/contacts/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/contacts/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    invoke-interface {v0}, Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;->createAsyncTaskExeuctor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    monitor-exit v1

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    monitor-exit v1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setFactoryForTest(Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;)V
    .locals 2
    .parameter
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 76
    const-class v1, Lcom/android/contacts/util/AsyncTaskExecutors;

    monitor-enter v1

    .line 77
    :try_start_0
    sput-object p0, Lcom/android/contacts/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
