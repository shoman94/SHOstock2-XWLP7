.class public Lcom/android/ex/variablespeed/VariableSpeed;
.super Ljava/lang/Object;
.source "VariableSpeed.java"

# interfaces
.implements Lcom/android/ex/variablespeed/MediaPlayerProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mAudioStreamType:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mCurrentPlaybackRate:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mDuration:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mHasBeenReleased:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mHasDuration:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mHasStartedPlayback:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mIsPrepared:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mIsReadyToReUse:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mSkipCompletionReport:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mStartPosition:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3
    .parameter "executor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    .line 60
    iput-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    .line 64
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCurrentPlaybackRate:F

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mExecutor:Ljava/util/concurrent/Executor;

    .line 73
    :try_start_0
    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->loadLibrary()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->reset()V

    .line 80
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "could not load library"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "could not load library"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/ex/variablespeed/VariableSpeed;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/variablespeed/VariableSpeed;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/variablespeed/VariableSpeed;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mSkipCompletionReport:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/ex/variablespeed/VariableSpeed;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private check(ZLjava/lang/String;)V
    .locals 1
    .parameter "condition"
    .parameter "exception"

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    return-void
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "argument"
    .parameter "argumentName"

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    return-void
.end method

.method public static createVariableSpeed(Ljava/util/concurrent/Executor;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 2
    .parameter "executor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;

    new-instance v1, Lcom/android/ex/variablespeed/VariableSpeed;

    invoke-direct {v1, p0}, Lcom/android/ex/variablespeed/VariableSpeed;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, v1}, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;-><init>(Lcom/android/ex/variablespeed/MediaPlayerProxy;)V

    return-object v0
.end method

.method private hasEngineBeenInitialized()Z
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPlaybackFinished()Z
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private innerSetDataSource(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    const-string v2, "source"

    invoke-direct {p0, p1, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 183
    :try_start_0
    iget-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v4, "has been released, reset before use"

    invoke-direct {p0, v2, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    if-nez v2, :cond_1

    :goto_1
    const-string v1, "cannot setDataSource more than once"

    invoke-direct {p0, v0, v1}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    .line 186
    monitor-exit v3

    .line 187
    return-void

    :cond_0
    move v2, v1

    .line 183
    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reportException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 279
    const-string v0, "VariableSpeed"

    const-string v1, "playback error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    return-void
.end method

.method private stopAndStartPlayingAgain(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->stopCurrentPlayback()V

    .line 266
    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->reset()V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/ex/variablespeed/VariableSpeed;->innerSetDataSource(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->start()V

    .line 275
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private stopCurrentPlayback()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 140
    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    .local v1, isPlaying:Z
    :goto_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 142
    .local v0, engineInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 143
    .local v2, playbackFinishedLatch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_0

    .line 144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mSkipCompletionReport:Z

    .line 146
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 149
    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->stopPlayback()V

    .line 150
    invoke-direct {p0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 152
    :cond_1
    return-void

    .line 140
    .end local v0           #engineInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    .end local v1           #isPlaying:Z
    .end local v2           #playbackFinishedLatch:Ljava/util/concurrent/CountDownLatch;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5
    .parameter "latch"

    .prologue
    .line 156
    const-wide/16 v2, 0x1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 157
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 158
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string v3, "waited too long"

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->reportException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #success:Z
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 163
    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v3, "has been released, reset before use"

    invoke-direct {p0, v1, v3}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 350
    iget-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-nez v1, :cond_1

    .line 351
    monitor-exit v2

    .line 359
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 349
    goto :goto_0

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasEngineBeenInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    monitor-exit v2

    goto :goto_1

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 356
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 357
    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->getCurrentPosition()I

    move-result v0

    monitor-exit v2

    goto :goto_1

    .line 359
    :cond_3
    iget v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    const-string v2, "you haven\'t called prepare, can\'t get the duration"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    monitor-exit v1

    return v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 367
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->stopCurrentPlayback()V

    .line 369
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 218
    iget-object v6, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 219
    :try_start_0
    iget-boolean v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v5, :cond_0

    move v5, v3

    :goto_0
    const-string v7, "has been released, reset before use"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    if-eqz v5, :cond_1

    move v5, v3

    :goto_1
    const-string v7, "must setDataSource before you prepare"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 221
    iget-boolean v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    if-nez v5, :cond_2

    move v5, v3

    :goto_2
    const-string v7, "cannot prepare more than once"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 222
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    .line 223
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    .line 224
    .local v1, dataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;
    iget v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mAudioStreamType:I

    .line 225
    .local v0, audioStreamType:I
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 228
    .local v2, mediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 229
    invoke-virtual {v1, v2}, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->setAsSourceFor(Landroid/media/MediaPlayer;)V

    .line 230
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 231
    iget-object v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 232
    :try_start_1
    iget-boolean v6, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    if-nez v6, :cond_3

    :goto_3
    const-string v4, "can\'t have duration, this is impossible"

    invoke-direct {p0, v3, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 233
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    .line 234
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    iput v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    .line 235
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 237
    return-void

    .end local v0           #audioStreamType:I
    .end local v1           #dataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;
    .end local v2           #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_0
    move v5, v4

    .line 219
    goto :goto_0

    :cond_1
    move v5, v4

    .line 220
    goto :goto_1

    :cond_2
    move v5, v4

    .line 221
    goto :goto_2

    .line 225
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0       #audioStreamType:I
    .restart local v1       #dataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;
    .restart local v2       #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_3
    move v3, v4

    .line 232
    goto :goto_3

    .line 235
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public release()V
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-eqz v1, :cond_0

    .line 107
    monitor-exit v2

    .line 122
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    .line 110
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->stopCurrentPlayback()V

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, requiresShutdown:Z
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_1
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasEngineBeenInitialized()Z

    move-result v0

    .line 115
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 116
    if-eqz v0, :cond_1

    .line 117
    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->shutdownEngine()V

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    .line 121
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 110
    .end local v0           #requiresShutdown:Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 115
    .restart local v0       #requiresShutdown:Z
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 193
    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v4, :cond_1

    move v0, v1

    .line 194
    .local v0, requiresRelease:Z
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->release()V

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 199
    :try_start_1
    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    if-eqz v4, :cond_2

    :goto_1
    const-string v2, "to re-use, must call reset after release"

    invoke-direct {p0, v1, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    .line 203
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    .line 204
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 205
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    .line 207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    .line 208
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mSkipCompletionReport:Z

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mStartPosition:I

    .line 210
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    .line 211
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    return-void

    .end local v0           #requiresRelease:Z
    :cond_1
    move v0, v2

    .line 193
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0       #requiresRelease:Z
    :cond_2
    move v1, v2

    .line 199
    goto :goto_1

    .line 211
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public seekTo(I)V
    .locals 6
    .parameter "startPosition"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 253
    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v3, :cond_1

    move v3, v0

    :goto_0
    const-string v5, "has been released, reset before use"

    invoke-direct {p0, v3, v5}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 254
    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    const-string v5, "you can\'t seek until you have prepared"

    invoke-direct {p0, v3, v5}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 255
    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    .local v0, currentlyPlaying:Z
    :goto_1
    iget v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mStartPosition:I

    .line 257
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    .line 258
    .local v1, dataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, v1}, Lcom/android/ex/variablespeed/VariableSpeed;->stopAndStartPlayingAgain(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    .line 262
    :cond_0
    return-void

    .end local v0           #currentlyPlaying:Z
    .end local v1           #dataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;
    :cond_1
    move v3, v2

    .line 253
    goto :goto_0

    :cond_2
    move v0, v2

    .line 255
    goto :goto_1

    .line 258
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .parameter "audioStreamType"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iput p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mAudioStreamType:I

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "intentUri"

    .prologue
    .line 169
    const-string v0, "context"

    invoke-direct {p0, p1, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    const-string v0, "intentUri"

    invoke-direct {p0, p2, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    invoke-direct {v0, p1, p2}, Lcom/android/ex/variablespeed/MediaPlayerDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->innerSetDataSource(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    .line 172
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVariableSpeed(F)V
    .locals 3
    .parameter "rate"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 378
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-static {p1}, Lcom/android/ex/variablespeed/VariableSpeedNative;->setVariableSpeed(F)V

    .line 381
    :cond_0
    iput p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCurrentPlaybackRate:F

    .line 382
    monitor-exit v1

    .line 383
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, restartWithThisDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 286
    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v4, :cond_1

    :goto_0
    const-string v4, "has been released, reset before use"

    invoke-direct {p0, v2, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 287
    iget-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    const-string v4, "must have prepared before you can start"

    invoke-direct {p0, v2, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    .line 288
    iget-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-nez v2, :cond_2

    .line 290
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    .line 291
    new-instance v2, Lcom/android/ex/variablespeed/EngineParameters$Builder;

    invoke-direct {v2}, Lcom/android/ex/variablespeed/EngineParameters$Builder;-><init>()V

    iget v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCurrentPlaybackRate:F

    invoke-virtual {v2, v4}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->initialRate(F)Lcom/android/ex/variablespeed/EngineParameters$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mStartPosition:I

    invoke-virtual {v2, v4}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->startPositionMillis(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mAudioStreamType:I

    invoke-virtual {v2, v4}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->audioStreamType(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->build()Lcom/android/ex/variablespeed/EngineParameters;

    move-result-object v0

    .line 296
    .local v0, engineParameters:Lcom/android/ex/variablespeed/EngineParameters;
    invoke-static {v0}, Lcom/android/ex/variablespeed/VariableSpeedNative;->initializeEngine(Lcom/android/ex/variablespeed/EngineParameters;)V

    .line 297
    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->startPlayback()V

    .line 298
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 299
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;

    iget-object v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    invoke-direct {v4, p0, v5}, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;-><init>(Lcom/android/ex/variablespeed/VariableSpeed;Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 305
    .end local v0           #engineParameters:Lcom/android/ex/variablespeed/EngineParameters;
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0, v1}, Lcom/android/ex/variablespeed/VariableSpeed;->stopAndStartPlayingAgain(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    .line 309
    :cond_0
    return-void

    .line 286
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 303
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
