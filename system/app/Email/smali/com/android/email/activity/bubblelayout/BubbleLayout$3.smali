.class Lcom/android/email/activity/bubblelayout/BubbleLayout$3;
.super Ljava/lang/Object;
.source "BubbleLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/bubblelayout/BubbleLayout;->showBubbleButtonClickMenu(Landroid/view/View;)V
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
    .line 705
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 707
    packed-switch p2, :pswitch_data_0

    .line 731
    :goto_0
    return-void

    .line 710
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I
    invoke-static {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$200(Lcom/android/email/activity/bubblelayout/BubbleLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeButton(I)Lcom/android/email/activity/bubblelayout/BubbleButton;

    goto :goto_0

    .line 714
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$000(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$000(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7011214

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$300(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I
    invoke-static {v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$200(Lcom/android/email/activity/bubblelayout/BubbleLayout;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I
    invoke-static {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$200(Lcom/android/email/activity/bubblelayout/BubbleLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeButton(I)Lcom/android/email/activity/bubblelayout/BubbleButton;

    goto :goto_0

    .line 727
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$300(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;->this$0:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    #getter for: Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I
    invoke-static {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$200(Lcom/android/email/activity/bubblelayout/BubbleLayout;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v0

    #calls: Lcom/android/email/activity/bubblelayout/BubbleLayout;->addToContact(Lcom/android/email/activity/bubblelayout/BubbleData;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->access$400(Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleData;)V

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
