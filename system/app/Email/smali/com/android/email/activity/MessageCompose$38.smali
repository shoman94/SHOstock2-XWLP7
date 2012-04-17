.class Lcom/android/email/activity/MessageCompose$38;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowPriorityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 9981
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 9983
    packed-switch p2, :pswitch_data_0

    .line 9995
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4202(Lcom/android/email/activity/MessageCompose;I)I

    .line 9996
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9997
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10000
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 10001
    return-void

    .line 9985
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x2

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4202(Lcom/android/email/activity/MessageCompose;I)I

    .line 9986
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9987
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9990
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v0, v3}, Lcom/android/email/activity/MessageCompose;->access$4202(Lcom/android/email/activity/MessageCompose;I)I

    .line 9991
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9992
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$38;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9983
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
