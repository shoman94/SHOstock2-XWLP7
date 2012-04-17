.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;,
        Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;,
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field static displayDensity:F

.field public static staticPresenter:Lcom/android/mms/ui/SlideshowPresenter;


# instance fields
.field private endX:I

.field private endY:I

.field private isAudioFocus:Z

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mFlick:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerRefresh:Landroid/os/Handler;

.field private mHasDrmMedia:Z

.field private mIsOnCall:Z

.field private mIsPreview:Z

.field private mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaController:Lcom/android/mms/ui/MmsPlayerController;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private mNoRightDrmMediaCount:I

.field private mOptionItemSelected:Z

.field private mPausedPosition:I

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mShowController:Z

.field public mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSmilControllerStart:Ljava/lang/Runnable;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilDocListenerAdded:Z

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerStart:Ljava/lang/Runnable;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private mWindowHasFocus:Z

.field private model:Lcom/android/mms/model/SlideshowModel;

.field private msgId:J

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    .line 205
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 207
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    .line 209
    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPausedPosition:I

    .line 210
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 221
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 246
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 570
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerStart:Ljava/lang/Runnable;

    .line 669
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$6;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    .line 1445
    return-void
.end method

.method private SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 3
    .parameter "showModel"

    .prologue
    .line 578
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "SlideshowActivityRunnable"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    move-object v0, p1

    .line 581
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowActivity$5;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideshowActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideshowActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->accquireWakeLock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method private accquireWakeLock()V
    .locals 2

    .prologue
    .line 1549
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "accquireWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1554
    return-void
.end method

.method private addEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 785
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "addEventListenerOfSmilDoc() called.. "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 788
    :cond_0
    return-void
.end method

.method private cancelAudioFocus()V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 930
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 932
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 934
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_1
    return-void
.end method

.method private cleanDrmStorage()V
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    if-eqz v0, :cond_0

    .line 879
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 881
    :cond_0
    return-void
.end method

.method private createModel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 463
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_3

    .line 464
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 469
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_4

    .line 470
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 471
    .local v1, slideCount:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-ge v2, v3, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    .line 474
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    .end local v0           #i:I
    .end local v1           #slideCount:I
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0

    .line 483
    :cond_4
    return-void
.end method

.method private createPresenter(Lcom/android/mms/ui/SlideView;)V
    .locals 2
    .parameter

    .prologue
    .line 415
    const-class v0, Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, p0, p1, v1}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setPreviewState(Z)V

    .line 420
    :cond_0
    return-void
.end method

.method private drawTitle()V
    .locals 6

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 729
    return-void
.end method

.method private exitSlideshowActivity()V
    .locals 4

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1468
    :cond_1
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1469
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$9;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;)V

    .line 1477
    :goto_0
    return-void

    .line 1475
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1505
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1508
    if-nez v6, :cond_1

    .line 1541
    if-eqz v6, :cond_0

    .line 1542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_0
    :goto_0
    return-object v2

    .line 1512
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1516
    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$11;

    const/16 v0, 0xa

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-direct {v1, p0, v0, v3, v4}, Lcom/android/mms/ui/SlideshowActivity$11;-><init>(Lcom/android/mms/ui/SlideshowActivity;IFZ)V

    .line 1525
    new-instance v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v7, v6}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1526
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    if-nez v0, :cond_3

    .line 1531
    :try_start_1
    new-instance v3, Lcom/android/mms/ui/MessageItem;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1533
    :try_start_2
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 1541
    :goto_1
    if-eqz v6, :cond_0

    .line 1542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    :try_start_3
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1541
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1537
    :catch_1
    move-exception v1

    move-object v3, v0

    :goto_2
    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private getCallState()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 384
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 386
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 387
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void

    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    move v2, v3

    .line 387
    goto :goto_0

    .line 388
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 390
    .local v0, e1:Landroid/os/RemoteException;
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    .line 391
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private getDisplayDensity()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 398
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 399
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 400
    return-void
.end method

.method private getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 8
    .parameter "slides"

    .prologue
    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, hasDRMMedia:Z
    const/4 v1, 0x1

    .line 1373
    .local v1, hasRight:Z
    const/4 v5, 0x0

    .line 1374
    .local v5, result:Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 1375
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1376
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1377
    const/4 v0, 0x1

    .line 1378
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1379
    const/4 v1, 0x0

    .line 1380
    iget v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    goto :goto_0

    .line 1385
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    .line 1386
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x1

    .line 1387
    :goto_1
    return v5

    .line 1386
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLCDWakeLock()V
    .locals 3

    .prologue
    .line 403
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 404
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 405
    const v1, 0x2000000a

    const-string v2, "MMS viewer LCD on wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 408
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method private getMessageInformationFromIntent()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 435
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    .line 441
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    .line 447
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, previewing:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 454
    :goto_0
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 455
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 459
    :goto_1
    return-void

    .line 451
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static getStaticPresenter()Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->staticPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method private inflateTitleHeader()V
    .locals 2

    .prologue
    .line 561
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 562
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    const v1, 0x7f0800c8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private initMediaController()V
    .locals 3

    .prologue
    .line 689
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "initMediaController()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 693
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsPlayerController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->setMediaPlayer(Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;)V

    .line 695
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isExitCase()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 822
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 823
    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "mMsgUri not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :goto_0
    return v0

    .line 827
    :cond_1
    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 829
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "mMsgId not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 837
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 838
    .local v0, msgUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private isMessageExist(Landroid/net/Uri;)Z
    .locals 9
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 843
    const/4 v7, 0x0

    .line 844
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 846
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 856
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 850
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 852
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 855
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMessageExist(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 856
    .restart local v8       #result:I
    goto :goto_0

    .line 852
    .end local v8           #result:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private makeModelList()V
    .locals 6

    .prologue
    .line 487
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 491
    .local v0, size:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 493
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 494
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 500
    .end local v0           #size:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    :goto_0
    return-void

    .line 496
    .restart local v0       #size:I
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    goto :goto_0
.end method

.method private registCallStateListener()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 325
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 329
    :cond_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1557
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "releaseWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1560
    :cond_0
    return-void
.end method

.method private removeEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 794
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "removeEventListenerOfSmilDoc() called.. "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 797
    return-void
.end method

.method private setAudioFocus()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 424
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 426
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 429
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "requestAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1
    return-void
.end method

.method private setMusicMute(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 374
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 379
    :cond_1
    return-void
.end method

.method private setSubjectToView(Lcom/android/mms/ui/SlideView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 524
    .local v2, subject:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, preSubject:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    if-eqz v2, :cond_1

    .line 530
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {p1, v2}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V

    .line 546
    .end local v1           #preSubject:Ljava/lang/String;
    :goto_1
    return-void

    .line 532
    .restart local v1       #preSubject:Ljava/lang/String;
    :cond_1
    const-string v3, "GATE"

    const-string v4, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    .end local v1           #preSubject:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/SlideshowActivity"

    const-string v4, "Cannot display the slide title."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 540
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #preSubject:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1391
    .line 1394
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v6, v0, [Ljava/lang/String;

    .line 1395
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v7, v0, [Ljava/lang/String;

    .line 1396
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v4

    move v5, v2

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1397
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1398
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1400
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1402
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 1403
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDrmFileName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    .line 1404
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v5, v4

    goto :goto_0

    .line 1409
    :cond_2
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 1412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1413
    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1414
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;

    invoke-direct {v2, p0, v6, v7, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1416
    const v1, 0x1040009

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1419
    :cond_3
    return-void

    :cond_4
    move v5, v4

    goto :goto_0
.end method

.method private showMediaController(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 1612
    if-eqz p1, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    goto :goto_0
.end method

.method private stopSmilPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    if-eqz v0, :cond_1

    .line 899
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 923
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 925
    :cond_0
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    .line 913
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0
.end method

.method private touchListener(IIII)V
    .locals 6
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const/16 v5, 0x14

    .line 1194
    const/4 v0, 0x0

    .line 1195
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 1196
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 1198
    .local v2, movedY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    .line 1199
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 1200
    if-gez v1, :cond_1

    .line 1201
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsPlayerController;->doPrevPage()V

    .line 1202
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->initAttachmentListView_presenter()V

    .line 1203
    const/4 v0, 0x1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->initAttachmentListView_presenter()V

    .line 1206
    const/4 v0, 0x0

    goto :goto_0

    .line 1208
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 1209
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v3, :cond_0

    .line 1210
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    goto :goto_0
.end method

.method private unregistCallstateListener()V
    .locals 3

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1639
    :cond_0
    return-void
.end method

.method private updateControlButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1564
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1565
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1566
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsPlayerController;->setStatePrevButton(Z)V

    .line 1575
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1576
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MmsPlayerController;->setStateNextButton(Z)V

    .line 1585
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$12;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1591
    .local v0, notification:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1592
    return-void

    .line 1570
    .end local v0           #notification:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MmsPlayerController;->setStatePrevButton(Z)V

    goto :goto_0

    .line 1572
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsPlayerController;->setStatePrevButton(Z)V

    goto :goto_0

    .line 1578
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1579
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsPlayerController;->setStateNextButton(Z)V

    goto :goto_1

    .line 1581
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MmsPlayerController;->setStateNextButton(Z)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 702
    .local v0, action:I
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    if-nez v1, :cond_0

    .line 703
    const/4 v1, 0x1

    .line 722
    :goto_0
    return v1

    .line 705
    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent(),action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    packed-switch v0, :pswitch_data_0

    .line 722
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 709
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    goto :goto_1

    .line 714
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    .line 716
    iget v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    iget v4, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/SlideshowActivity;->touchListener(IIII)V

    goto :goto_1

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 1090
    move-object v0, p1

    .line 1091
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$7;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1122
    return-void
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;)V
    .locals 6
    .parameter

    .prologue
    .line 1481
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    .line 1483
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1484
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1485
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1486
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    const-string v2, "seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1489
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$10;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/android/mms/ui/SlideshowActivity$10;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1499
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1168
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    :cond_0
    if-eqz v0, :cond_1

    .line 1185
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_1

    .line 1187
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 1191
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1597
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1599
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1600
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to LANDSCAPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 1608
    return-void

    .line 1602
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1603
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to PORTRAIT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 250
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 257
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->registCallStateListener()V

    .line 259
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getDisplayDensity()V

    .line 260
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getLCDWakeLock()V

    .line 261
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getCallState()V

    .line 263
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 269
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 271
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getMessageInformationFromIntent()V

    .line 273
    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 274
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 276
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 321
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 289
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->inflateTitleHeader()V

    .line 299
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->makeModelList()V

    .line 301
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/SlideView;

    .line 302
    .local v8, view:Lcom/android/mms/ui/SlideView;
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideshowActivity;->setSubjectToView(Lcom/android/mms/ui/SlideView;)V

    .line 304
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideshowActivity;->createPresenter(Lcom/android/mms/ui/SlideView;)V

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    sput-object v0, Lcom/android/mms/ui/SlideshowActivity;->staticPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->findAttachmentList(J)Ljava/util/ArrayList;

    .line 320
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v8           #view:Lcom/android/mms/ui/SlideView;
    :catch_0
    move-exception v7

    .line 291
    .local v7, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0

    .line 314
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    .restart local v8       #view:Lcom/android/mms/ui/SlideView;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1353
    packed-switch p1, :pswitch_data_0

    .line 1363
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1355
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1353
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1621
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1622
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->cleanDrmStorage()V

    .line 1624
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeEventListenerOfSmilDoc()V

    .line 1625
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1626
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->unregistCallstateListener()V

    .line 1627
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 1628
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1630
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 1632
    :cond_0
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    .line 1633
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 946
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown(),keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    sparse-switch p1, :sswitch_data_0

    .line 978
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 983
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 957
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_1

    .line 968
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    goto :goto_0

    .line 948
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 988
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp(),keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    packed-switch p1, :pswitch_data_0

    .line 997
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 991
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->exitSlideshowActivity()V

    .line 992
    const/4 v0, 0x1

    goto :goto_0

    .line 989
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1137
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_3

    .line 1141
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1143
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->isPlayerStop(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1149
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    .line 1150
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 1151
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1153
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1155
    :cond_3
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1160
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1161
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 1164
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1165
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 767
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 771
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeEventListenerOfSmilDoc()V

    .line 772
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 773
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPausedPosition:I

    .line 779
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1127
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1129
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 1132
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 733
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 736
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 738
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    .line 744
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    .line 762
    :cond_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 801
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 804
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 805
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart() : model is null. Cannot start activity."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 819
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->setAudioFocus()V

    .line 811
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->isExitCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0

    .line 816
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V

    .line 818
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 861
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 863
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V

    .line 867
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->stopSmilPlayer()V

    .line 868
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    if-eqz v0, :cond_0

    .line 869
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 871
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 873
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 679
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(),hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 681
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    .line 682
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    .line 686
    :cond_0
    return-void
.end method
