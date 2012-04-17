.class Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;
.super Ljava/lang/Object;
.source "ImageGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->callback(IIZLcom/sec/android/app/camera/RotateBitmap;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

.field final synthetic val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

.field final synthetic val$isThumb:Z

.field final synthetic val$offset:I

.field final synthetic val$position:I

.field final synthetic val$requestSerial:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;IIILcom/sec/android/app/camera/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    iput p2, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$requestSerial:I

    iput p3, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$position:I

    iput p4, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$offset:I

    iput-object p5, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

    iput-boolean p6, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$isThumb:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 115
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$requestSerial:I

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    iget-object v1, v1, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$000(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->this$1:Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    iget-object v0, v0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$position:I

    iget v2, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$offset:I

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

    iget-boolean v4, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$isThumb:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/ImageGetterCallback;->imageLoaded(IILcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;->val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RotateBitmap;->recycle()V

    goto :goto_0
.end method
