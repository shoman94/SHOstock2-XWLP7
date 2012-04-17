.class Lcom/sec/android/app/camera/TimerCounting$1;
.super Landroid/view/OrientationEventListener;
.source "TimerCounting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/TimerCounting;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/TimerCounting;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/TimerCounting;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 212
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    #calls: Lcom/sec/android/app/camera/TimerCounting;->roundOrientation(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/TimerCounting;->access$000(Lcom/sec/android/app/camera/TimerCounting;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    .line 218
    .local v0, degree:I
    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    .line 219
    add-int/lit16 v0, v0, -0x168

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    iget v1, v1, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    #getter for: Lcom/sec/android/app/camera/TimerCounting;->mTextLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/camera/TimerCounting;->access$100(Lcom/sec/android/app/camera/TimerCounting;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    #getter for: Lcom/sec/android/app/camera/TimerCounting;->mTextLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/camera/TimerCounting;->access$100(Lcom/sec/android/app/camera/TimerCounting;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    iget-object v2, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    iget v2, v2, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    #getter for: Lcom/sec/android/app/camera/TimerCounting;->mTextLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/camera/TimerCounting;->access$100(Lcom/sec/android/app/camera/TimerCounting;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/sec/android/app/camera/TimerCounting;->rotateButton(IILandroid/view/View;Z)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/TimerCounting;->access$200(Lcom/sec/android/app/camera/TimerCounting;IILandroid/view/View;Z)V

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting$1;->this$0:Lcom/sec/android/app/camera/TimerCounting;

    iput v0, v1, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v0           #degree:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
