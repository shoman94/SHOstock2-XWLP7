.class Lcom/android/mms/ui/SlideshowActivity$6;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1600(Lcom/android/mms/ui/SlideshowActivity;Z)V

    .line 673
    :cond_0
    return-void
.end method
