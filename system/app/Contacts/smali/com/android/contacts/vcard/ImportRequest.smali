.class public Lcom/android/contacts/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final data:[B

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .parameter "account"
    .parameter "data"
    .parameter "uri"
    .parameter "displayName"
    .parameter "estimatedType"
    .parameter "estimatedCharset"
    .parameter "vcardVersion"
    .parameter "entryCount"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 102
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    .line 103
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 104
    iput-object p4, p0, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 105
    iput p5, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 106
    iput-object p6, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 107
    iput p7, p0, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    .line 108
    iput p8, p0, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    .line 109
    return-void
.end method
