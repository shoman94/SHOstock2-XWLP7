.class Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;
.super Ljava/lang/Object;
.source "ImageGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->completedCallback(I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

.field final synthetic val$requestSerial:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;->this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    iput p2, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;->val$requestSerial:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;->val$requestSerial:I

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;->this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    iget-object v1, v1, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$000(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;->this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    iget-object v0, v0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/ImageGetterCallback;->completed()V

    .line 130
    :cond_0
    return-void
.end method
