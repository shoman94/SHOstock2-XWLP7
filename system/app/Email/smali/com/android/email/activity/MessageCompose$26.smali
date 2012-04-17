.class Lcom/android/email/activity/MessageCompose$26;
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
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 7285
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 7287
    .local v0, mTempAttachments:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/android/email/activity/MessageCompose$26$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$26$1;-><init>(Lcom/android/email/activity/MessageCompose$26;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$26;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose$26$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7347
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7348
    return-void
.end method
