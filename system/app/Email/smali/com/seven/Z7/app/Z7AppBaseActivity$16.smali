.class Lcom/seven/Z7/app/Z7AppBaseActivity$16;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$positiveCall:Ljava/lang/Runnable;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$16;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$16;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$16;->val$positiveCall:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method
