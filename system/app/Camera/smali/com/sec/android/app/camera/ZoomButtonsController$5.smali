.class Lcom/sec/android/app/camera/ZoomButtonsController$5;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V
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
    .line 391
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController$5;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$5;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #calls: Lcom/sec/android/app/camera/ZoomButtonsController;->refreshPositioningVariables()V
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$700(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$5;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #getter for: Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$600(Lcom/sec/android/app/camera/ZoomButtonsController;)Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$5;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #getter for: Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$600(Lcom/sec/android/app/camera/ZoomButtonsController;)Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    .line 398
    :cond_0
    return-void
.end method
