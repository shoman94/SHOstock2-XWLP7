.class Lcom/android/email/activity/MessageViewForSeven$3;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewForSeven;->showReportDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$3;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$3;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    .line 677
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 678
    return-void
.end method
