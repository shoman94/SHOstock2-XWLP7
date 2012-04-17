.class Lcom/android/email/activity/MessageCompose$56;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 12491
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$56;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$56;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$10800(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$56;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$10700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v2

    #calls: Lcom/android/email/activity/MessageCompose;->changeSmimeOptions(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->access$10100(Lcom/android/email/activity/MessageCompose;ZZ)V

    .line 12492
    return-void
.end method
