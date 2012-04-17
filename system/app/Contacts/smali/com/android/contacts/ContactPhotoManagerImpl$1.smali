.class Lcom/android/contacts/ContactPhotoManagerImpl$1;
.super Landroid/util/LruCache;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactPhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$1;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 331
    iget-object v0, p2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    check-cast p2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ContactPhotoManagerImpl$1;->sizeOf(Ljava/lang/Object;Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)I

    move-result v0

    return v0
.end method
