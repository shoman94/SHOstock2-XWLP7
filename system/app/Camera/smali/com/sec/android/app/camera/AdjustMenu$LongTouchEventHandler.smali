.class Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;
.super Landroid/os/Handler;
.source "AdjustMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AdjustMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongTouchEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AdjustMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/AdjustMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/AdjustMenu;Lcom/sec/android/app/camera/AdjustMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/camera/AdjustMenu;->access$100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->onClick(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;->this$0:Lcom/sec/android/app/camera/AdjustMenu;

    #getter for: Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/AdjustMenu;->access$200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    :cond_0
    return-void
.end method
