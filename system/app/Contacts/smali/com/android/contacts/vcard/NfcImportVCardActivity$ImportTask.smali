.class Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;
.super Landroid/os/AsyncTask;
.source "NfcImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/NfcImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/contacts/vcard/VCardService;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/vcard/ImportRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/NfcImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/android/contacts/vcard/VCardService;)Lcom/android/contacts/vcard/ImportRequest;
    .locals 4
    .parameter "services"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->createImportRequest()Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v0

    .line 66
    .local v0, request:Lcom/android/contacts/vcard/ImportRequest;
    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 73
    .end local v0           #request:Lcom/android/contacts/vcard/ImportRequest;
    :goto_0
    return-object v0

    .line 70
    .restart local v0       #request:Lcom/android/contacts/vcard/ImportRequest;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, [Lcom/android/contacts/vcard/VCardService;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->doInBackground([Lcom/android/contacts/vcard/VCardService;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    return-void
.end method

.method public onPostExecute(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Lcom/android/contacts/vcard/ImportRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->onPostExecute(Lcom/android/contacts/vcard/ImportRequest;)V

    return-void
.end method
