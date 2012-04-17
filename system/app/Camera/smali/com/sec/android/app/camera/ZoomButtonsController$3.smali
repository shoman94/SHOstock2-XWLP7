.class Lcom/sec/android/app/camera/ZoomButtonsController$3;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController$3;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$3;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-static {}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$400()I

    move-result v1

    #calls: Lcom/sec/android/app/camera/ZoomButtonsController;->dismissControlsDelayed(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$500(Lcom/sec/android/app/camera/ZoomButtonsController;I)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$3;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #getter for: Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$600(Lcom/sec/android/app/camera/ZoomButtonsController;)Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$3;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #getter for: Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$600(Lcom/sec/android/app/camera/ZoomButtonsController;)Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 285
    :cond_0
    return-void
.end method
