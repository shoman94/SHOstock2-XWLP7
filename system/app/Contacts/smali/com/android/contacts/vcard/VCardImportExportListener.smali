.class interface abstract Lcom/android/contacts/vcard/VCardImportExportListener;
.super Ljava/lang/Object;
.source "VCardImportExportListener.java"


# virtual methods
.method public abstract onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V
.end method

.method public abstract onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
.end method

.method public abstract onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)V
.end method

.method public abstract onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
.end method

.method public abstract onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
.end method

.method public abstract onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V
.end method

.method public abstract onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
.end method

.method public abstract onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)V
.end method
