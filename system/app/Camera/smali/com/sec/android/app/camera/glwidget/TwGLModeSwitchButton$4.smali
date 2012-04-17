.class Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;
.super Ljava/lang/Object;
.source "TwGLModeSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->onDragEnd(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->onDrag(FFFF)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    .line 251
    return-void
.end method
