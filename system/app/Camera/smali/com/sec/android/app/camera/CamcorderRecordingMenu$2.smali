.class Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;
.super Landroid/view/OrientationEventListener;
.source "CamcorderRecordingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderRecordingMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    .line 570
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #calls: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->roundOrientation(I)I
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$000(Lcom/sec/android/app/camera/CamcorderRecordingMenu;I)I

    move-result v0

    add-int/lit8 v1, v0, 0x5a

    .line 576
    .local v1, degree:I
    const/16 v0, 0x168

    if-lt v1, v0, :cond_2

    .line 577
    add-int/lit16 v1, v1, -0x168

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget v0, v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    if-eq v1, v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationEnabled:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$100(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x78

    const/16 v7, 0x78

    #calls: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->rotateButton(IILandroid/view/View;ZZII)V
    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$300(Lcom/sec/android/app/camera/CamcorderRecordingMenu;IILandroid/view/View;ZZII)V

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$400(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$400(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$400(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, -0x78

    const/16 v7, 0x78

    #calls: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->rotateButton(IILandroid/view/View;ZZII)V
    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$300(Lcom/sec/android/app/camera/CamcorderRecordingMenu;IILandroid/view/View;ZZII)V

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$500(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$500(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    #getter for: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$500(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, -0x50

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/camera/CamcorderRecordingMenu;->rotateButton(IILandroid/view/View;ZZII)V
    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->access$300(Lcom/sec/android/app/camera/CamcorderRecordingMenu;IILandroid/view/View;ZZII)V

    .line 589
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    iput v1, v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 591
    .end local v1           #degree:I
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
