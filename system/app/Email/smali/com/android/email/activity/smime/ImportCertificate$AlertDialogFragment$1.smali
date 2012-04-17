.class Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    iput p2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v0

    const/4 v1, 0x4

    #setter for: Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I
    invoke-static {v0, v1}, Lcom/android/email/activity/smime/ImportCertificate;->access$802(Lcom/android/email/activity/smime/ImportCertificate;I)I

    .line 403
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    iget v1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$1;->val$id:I

    #calls: Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->onDismissDialog(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->access$900(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V

    .line 404
    return-void
.end method
