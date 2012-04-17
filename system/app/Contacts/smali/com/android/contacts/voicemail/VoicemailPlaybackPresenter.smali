.class public Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String;

.field private static final PAUSED_STATE_KEY:Ljava/lang/String;

.field private static final PRESET_NAMES:[I

.field private static final PRESET_RATES:[F


# instance fields
.field private final mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private final mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

.field private final mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

.field private mRateIndex:I

.field private final mStartPlayingImmediately:Z

.field private final mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mVoicemailUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PAUSED_STATE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CLIP_POSITION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    .line 124
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    .line 128
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-void

    .line 124
    :array_0
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xa0t 0x3ft
        0x0t 0x0t 0xc8t 0x3ft
    .end array-data

    .line 128
    :array_1
    .array-data 0x4
        0xd5t 0x1t 0xat 0x7ft
        0xd6t 0x1t 0xat 0x7ft
        0xd7t 0x1t 0xat 0x7ft
        0xd8t 0x1t 0xat 0x7ft
        0xd9t 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/contacts/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .parameter "view"
    .parameter "player"
    .parameter "voicemailUri"
    .parameter "executorService"
    .parameter "startPlayingImmediately"
    .parameter "asyncTaskExecutor"
    .parameter "wakeLock"

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 177
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 178
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    .line 179
    iput-object p3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 180
    iput-boolean p5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    .line 181
    iput-object p6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 182
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    const/16 v1, 0x21

    invoke-direct {v0, p0, p4, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .line 183
    iput-object p7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return p1
.end method

.method static synthetic access$1500()[F
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->makeRequestForContent()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V

    return-void
.end method

.method private changeRate(FI)V
    .locals 1
    .parameter "rate"
    .parameter "stringResourceId"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    check-cast v0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->setVariableSpeed(F)V

    .line 514
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDisplay(FI)V

    .line 515
    return-void
.end method

.method private checkThatWeHaveContent()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    .line 461
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 462
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    .line 463
    return-void
.end method

.method private makeRequestForContent()V
    .locals 4

    .prologue
    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 236
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "mFetchResultHandler should be null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 237
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 238
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 239
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    .line 241
    return-void

    .line 236
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postSuccessfulPrepareActions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setStartStopListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 345
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateDecreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateIncreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getDuration()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 349
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 351
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 352
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    .line 357
    :cond_0
    return-void
.end method

.method private postSuccessfullyFetchedContent()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsBuffering()V

    .line 306
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 330
    return-void
.end method

.method private resetPrepareStartPlaying(I)V
    .locals 5
    .parameter "clipPositionInMillis"

    .prologue
    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->reset()V

    .line 437
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 438
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setAudioStreamType(I)V

    .line 439
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->prepare()V

    .line 440
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v3}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 441
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {p1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 442
    .local v1, startPosition:I
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 443
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v2, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->seekTo(I)V

    .line 444
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->start()V

    .line 445
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStarted()V

    .line 446
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableProximitySensor()V

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->startUpdating(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1           #startPosition:I
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private stopPlaybackAtPosition(II)V
    .locals 1
    .parameter "clipPosition"
    .parameter "duration"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 471
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 472
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 477
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 478
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->pause()V

    .line 481
    :cond_1
    return-void
.end method


# virtual methods
.method public createRateDecreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public createRateIncreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public handleCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaPlayer"

    .prologue
    .line 466
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 467
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setVolumeControlStream(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->checkThatWeHaveContent()V

    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    .line 368
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 373
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 376
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 605
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 360
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    :cond_0
    return-void
.end method
