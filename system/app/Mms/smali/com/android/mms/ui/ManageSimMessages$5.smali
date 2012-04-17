.class Lcom/android/mms/ui/ManageSimMessages$5;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$toastFail:Landroid/widget/Toast;

.field final synthetic val$toastSuccess:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/widget/Toast;Landroid/widget/Toast;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$toastFail:Landroid/widget/Toast;

    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$toastSuccess:Landroid/widget/Toast;

    iput-object p4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->copyAllToPhoneMemory()Z
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$toastFail:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 476
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$5;->val$toastSuccess:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
