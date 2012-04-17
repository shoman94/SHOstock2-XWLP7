.class public Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamPhotoTag"
.end annotation


# instance fields
.field public final streamItem:Lcom/android/contacts/util/StreamItemEntry;

.field public final streamItemPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;


# direct methods
.method public constructor <init>(Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    .locals 0
    .parameter "streamItem"
    .parameter "streamItemPhoto"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->streamItem:Lcom/android/contacts/util/StreamItemEntry;

    .line 84
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->streamItemPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 85
    return-void
.end method


# virtual methods
.method public getStreamItemPhotoUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 88
    sget-object v1, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 89
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->streamItem:Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {v1}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 90
    const-string v1, "photo"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->streamItemPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-virtual {v1}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
