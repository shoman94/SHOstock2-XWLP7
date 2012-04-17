.class public Lcom/sec/android/app/camera/ZoomButton;
.super Landroid/widget/ImageButton;
.source "ZoomButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsInLongpress:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private mZoomSpeed:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Lcom/sec/android/app/camera/ZoomButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ZoomButton$1;-><init>(Lcom/sec/android/app/camera/ZoomButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    .line 42
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mZoomSpeed:J

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/ZoomButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ZoomButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mIsInLongpress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ZoomButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mZoomSpeed:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ZoomButton;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomButton;->clearFocus()V

    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mIsInLongpress:Z

    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 73
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ZoomButton;->mIsInLongpress:Z

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButton;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButton;->mIsInLongpress:Z

    .line 65
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ZoomButton;->setPressed(Z)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/sec/android/app/camera/ZoomButton;->mZoomSpeed:J

    .line 70
    return-void
.end method
