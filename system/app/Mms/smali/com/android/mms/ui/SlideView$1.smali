.class Lcom/android/mms/ui/SlideView$1;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/SlideView;->mIsPrepared:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$002(Lcom/android/mms/ui/SlideView;Z)Z

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$100(Lcom/android/mms/ui/SlideView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$100(Lcom/android/mms/ui/SlideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I
    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->access$102(Lcom/android/mms/ui/SlideView;I)I

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$300(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->access$302(Lcom/android/mms/ui/SlideView;Z)Z

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #calls: Lcom/android/mms/ui/SlideView;->displayAudioInfo()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$400(Lcom/android/mms/ui/SlideView;)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$500(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 263
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->access$502(Lcom/android/mms/ui/SlideView;Z)Z

    .line 268
    :cond_2
    return-void
.end method
