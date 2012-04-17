.class Lcom/android/email/activity/MailboxList$3;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;

.field final synthetic val$removeId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$3;->this$0:Lcom/android/email/activity/MailboxList;

    iput p2, p0, Lcom/android/email/activity/MailboxList$3;->val$removeId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$3;->this$0:Lcom/android/email/activity/MailboxList;

    iget v1, p0, Lcom/android/email/activity/MailboxList$3;->val$removeId:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList;->removeDialog(I)V

    .line 658
    return-void
.end method
