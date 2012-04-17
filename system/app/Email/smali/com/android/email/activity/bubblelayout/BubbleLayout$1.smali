.class Lcom/android/email/activity/bubblelayout/BubbleLayout$1;
.super Ljava/lang/Object;
.source "BubbleLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeButton(I)Lcom/android/email/activity/bubblelayout/BubbleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;


# direct methods
.method constructor <init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$1;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$1;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$000(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$1;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$000(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7011215

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 484
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 478
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 475
    return-void
.end method
