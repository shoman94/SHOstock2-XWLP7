.class Lcom/android/email/activity/smime/InstalledCertificatesList$1;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/InstalledCertificatesList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/InstalledCertificatesList;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    .line 109
    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, view:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, alias:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;
    invoke-static {v4}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$100(Lcom/android/email/activity/smime/InstalledCertificatesList;)Lcom/android/emailcommon/smime/CertificateMgr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/emailcommon/smime/CertificateMgr;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v4}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0804d2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 118
    iget-object v4, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->pa:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$200(Lcom/android/email/activity/smime/InstalledCertificatesList;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 141
    .end local v0           #alias:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v0       #alias:Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "CERTIFICATE_ALIAS"

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 130
    iget-object v4, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->pa:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$200(Lcom/android/email/activity/smime/InstalledCertificatesList;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    :try_end_0
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 134
    .local v1, ex:Lcom/android/emailcommon/smime/CertificateManagerException;
    invoke-virtual {v1}, Lcom/android/emailcommon/smime/CertificateManagerException;->printStackTrace()V

    .line 135
    iget-object v4, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v4}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0804cb

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
