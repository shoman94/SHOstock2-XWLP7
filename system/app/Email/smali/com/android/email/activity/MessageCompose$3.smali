.class Lcom/android/email/activity/MessageCompose$3;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowAccountCheckDialog()V
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
    .line 1393
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onAccountSetup()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;)V

    .line 1397
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1398
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;Z)V

    .line 1399
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1400
    return-void
.end method
