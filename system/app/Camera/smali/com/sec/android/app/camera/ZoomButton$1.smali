.class Lcom/sec/android/app/camera/ZoomButton$1;
.super Ljava/lang/Object;
.source "ZoomButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ZoomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ZoomButton;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButton$1;->this$0:Lcom/sec/android/app/camera/ZoomButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButton$1;->this$0:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButton$1;->this$0:Lcom/sec/android/app/camera/ZoomButton;

    #getter for: Lcom/sec/android/app/camera/ZoomButton;->mIsInLongpress:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButton;->access$000(Lcom/sec/android/app/camera/ZoomButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButton$1;->this$0:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButton$1;->this$0:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->callOnClick()Z

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButton$1;->this$0:Lcom/sec/android/app/camera/ZoomButton;

    #getter for: Lcom/sec/android/app/camera/ZoomButton;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButton;->access$200(Lcom/sec/android/app/camera/ZoomButton;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButton$1;->this$0:Lcom/sec/android/app/camera/ZoomButton;

    #getter for: Lcom/sec/android/app/camera/ZoomButton;->mZoomSpeed:J
    invoke-static {v1}, Lcom/sec/android/app/camera/ZoomButton;->access$100(Lcom/sec/android/app/camera/ZoomButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    :cond_0
    return-void
.end method
