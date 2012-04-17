.class Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
.super Ljava/lang/Object;
.source "VCardService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/VCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMediaScannerConnectionClient"
.end annotation


# instance fields
.field final mConnection:Landroid/media/MediaScannerConnection;

.field final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/vcard/VCardService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    .line 82
    iput-object p2, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 99
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/vcard/VCardService;

    #calls: Lcom/android/contacts/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    invoke-static {v0, p0}, Lcom/android/contacts/vcard/VCardService;->access$000(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    .line 100
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 87
    return-void
.end method
