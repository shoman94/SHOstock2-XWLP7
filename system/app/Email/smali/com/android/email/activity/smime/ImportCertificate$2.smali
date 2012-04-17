.class Lcom/android/email/activity/smime/ImportCertificate$2;
.super Landroid/os/Handler;
.source "ImportCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/smime/ImportCertificate;
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
    .line 234
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 236
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 238
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 239
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 240
    .local v1, descriptionOfError:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 241
    const-string v2, "certificate_error_msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 247
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->pa:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/android/email/activity/smime/ImportCertificate;->access$400(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    const v3, 0x7f0804c8

    invoke-virtual {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 250
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #descriptionOfError:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    const/4 v3, 0x2

    #calls: Lcom/android/email/activity/smime/ImportCertificate;->showDialog(I)V
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$100(Lcom/android/email/activity/smime/ImportCertificate;I)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->pa:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/android/email/activity/smime/ImportCertificate;->access$400(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
