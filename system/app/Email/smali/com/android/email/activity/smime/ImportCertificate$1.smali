.class Lcom/android/email/activity/smime/ImportCertificate$1;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/ImportCertificate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 103
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$1;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 105
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, view:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$1;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #setter for: Lcom/android/email/activity/smime/ImportCertificate;->mCertToImport:Ljava/io/File;
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$002(Lcom/android/email/activity/smime/ImportCertificate;Ljava/io/File;)Ljava/io/File;

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$1;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/smime/ImportCertificate;->showDialog(I)V
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate;->access$100(Lcom/android/email/activity/smime/ImportCertificate;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
