.class Lcom/android/contacts/vcard/ImportVCardActivity$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$202(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    .line 801
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/vcard/NotificationImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v1, v2}, Lcom/android/contacts/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/android/contacts/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 802
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    .line 803
    return-void
.end method
