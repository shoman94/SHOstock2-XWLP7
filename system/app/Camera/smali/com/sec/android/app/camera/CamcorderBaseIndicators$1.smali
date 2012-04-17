.class Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;
.super Landroid/view/OrientationEventListener;
.source "CamcorderBaseIndicators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderBaseIndicators;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 373
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    #calls: Lcom/sec/android/app/camera/CamcorderBaseIndicators;->roundOrientation(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->access$000(Lcom/sec/android/app/camera/CamcorderBaseIndicators;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    .line 379
    .local v0, degree:I
    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    .line 380
    add-int/lit16 v0, v0, -0x168

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iget v1, v1, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->access$100(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->access$100(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/sec/android/app/camera/CamcorderBaseIndicators;->rotateButton(IILandroid/view/View;Z)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->access$200(Lcom/sec/android/app/camera/CamcorderBaseIndicators;IILandroid/view/View;Z)V

    .line 388
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iput v0, v1, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v0           #degree:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
