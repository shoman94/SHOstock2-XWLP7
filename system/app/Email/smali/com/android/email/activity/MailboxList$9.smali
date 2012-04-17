.class Lcom/android/email/activity/MailboxList$9;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->deleteMailbox()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$9;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 965
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 966
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$9;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 967
    .local v0, controller:Lcom/android/email/Controller;
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$9;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$9;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080502

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/email/activity/MailboxList;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MailboxList;->access$700(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    .line 968
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$9;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mSelectedContextMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$800(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteFolder(J)Landroid/os/AsyncTask;

    .line 969
    return-void
.end method
