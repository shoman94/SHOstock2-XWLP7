.class Lcom/android/email/activity/MessageViewFragmentBase$14;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->saveRecipientAsGroupDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 7183
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

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

    .line 7185
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 7186
    packed-switch p2, :pswitch_data_0

    .line 7202
    :goto_0
    return-void

    .line 7188
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5900(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6000(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v2

    const v3, 0x7f0802d0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V
    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6100(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V

    goto :goto_0

    .line 7193
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5900(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v1

    const v2, 0x7f0802d8

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V
    invoke-static {v0, v1, v3, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6100(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V

    goto :goto_0

    .line 7197
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$14;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6000(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v1

    const v2, 0x7f0802d9

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V
    invoke-static {v0, v3, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6100(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V

    goto :goto_0

    .line 7186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
