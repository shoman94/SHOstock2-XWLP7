.class Lcom/android/email/activity/MessageCompose$21;
.super Landroid/os/Handler;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
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
    .line 2865
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2867
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2879
    :goto_0
    return-void

    .line 2869
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SHOW MORE HANDLER"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2871
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$3700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2873
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$21;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->showDropDown()V

    goto :goto_0

    .line 2867
    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_0
    .end packed-switch
.end method
