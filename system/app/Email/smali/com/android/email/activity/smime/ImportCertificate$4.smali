.class Lcom/android/email/activity/smime/ImportCertificate$4;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/ImportCertificate;->renameCertificate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/ImportCertificate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->pa:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/email/activity/smime/ImportCertificate;->access$400(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 311
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$4;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0804ca

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    return-void
.end method
