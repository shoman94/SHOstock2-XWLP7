.class public Lcom/android/contacts/vcard/ExportRequest;
.super Ljava/lang/Object;
.source "ExportRequest.java"


# instance fields
.field public final destUri:Landroid/net/Uri;

.field public final exportType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "destUri"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/vcard/ExportRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "destUri"
    .parameter "exportType"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    .line 33
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 34
    return-void
.end method
