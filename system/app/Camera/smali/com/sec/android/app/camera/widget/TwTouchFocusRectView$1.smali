.class Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;
.super Ljava/lang/Object;
.source "TwTouchFocusRectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->access$000(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->access$100(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->doShrink()V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->access$000(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    #getter for: Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->access$200(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :cond_0
    return-void
.end method
