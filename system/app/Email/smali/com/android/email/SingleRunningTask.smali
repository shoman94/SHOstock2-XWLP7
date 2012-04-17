.class public abstract Lcom/android/email/SingleRunningTask;
.super Ljava/lang/Object;
.source "SingleRunningTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# virtual methods
.method isRunningForTest()Z
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/android/email/SingleRunningTask;,"Lcom/android/email/SingleRunningTask<TParam;>;"
    iget-object v0, p0, Lcom/android/email/SingleRunningTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
