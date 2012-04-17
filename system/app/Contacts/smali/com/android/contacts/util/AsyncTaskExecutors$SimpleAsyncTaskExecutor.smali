.class Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutors.java"

# interfaces
.implements Lcom/android/contacts/util/AsyncTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/AsyncTaskExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleAsyncTaskExecutor"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "executor"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 92
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mCancel"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public varargs submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 2
    .parameter "identifer"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)",
            "Landroid/os/AsyncTask",
            "<TT;**>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<TT;**>;"
    .local p3, params:[Ljava/lang/Object;,"[TT;"
    iput-object p2, p0, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mTask:Landroid/os/AsyncTask;

    .line 98
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->checkCalledFromUiThread()V

    .line 99
    iget-object v0, p0, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mTask:Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
