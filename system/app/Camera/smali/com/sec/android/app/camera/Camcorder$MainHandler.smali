.class Lcom/sec/android/app/camera/Camcorder$MainHandler;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 168
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage :: msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$000()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->resumeOrientationListener()V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$300()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$400()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    :cond_3
    :goto_0
    return-void

    .line 178
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$300()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$504(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$600()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 182
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$300()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$400()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 185
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camcorder;->access$502(Lcom/sec/android/app/camera/Camcorder;I)I

    goto :goto_0

    .line 187
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$700()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$800(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 189
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETRY_AUDIO_FOCUS_GAIN mRetryAudioFocusCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$800(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$808(Lcom/sec/android/app/camera/Camcorder;)I

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$900(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, focusResult:I
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/Camcorder;->access$902(Lcom/sec/android/app/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$900(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v2, v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 196
    if-nez v0, :cond_8

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$700()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$1000()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 198
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$700()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$700()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    goto/16 :goto_0
.end method
