.class Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;
.super Landroid/os/Handler;
.source "HelptextForShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/HelptextForShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/HelptextForShootingMode;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/HelptextForShootingMode;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;->this$0:Lcom/sec/android/app/camera/HelptextForShootingMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/HelptextForShootingMode;Lcom/sec/android/app/camera/HelptextForShootingMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;-><init>(Lcom/sec/android/app/camera/HelptextForShootingMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;->this$0:Lcom/sec/android/app/camera/HelptextForShootingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->stopHelptextPopupTimer()V

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;->this$0:Lcom/sec/android/app/camera/HelptextForShootingMode;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
