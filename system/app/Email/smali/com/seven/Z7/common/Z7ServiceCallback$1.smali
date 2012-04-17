.class final Lcom/seven/Z7/common/Z7ServiceCallback$1;
.super Ljava/lang/Object;
.source "Z7ServiceCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/Z7ServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/seven/Z7/common/Z7ServiceCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7ServiceCallback;
    .locals 2
    .parameter "source"

    .prologue
    .line 177
    new-instance v0, Lcom/seven/Z7/common/Z7ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/seven/Z7/common/Z7ServiceCallback;-><init>(Landroid/os/Parcel;Lcom/seven/Z7/common/Z7ServiceCallback$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7ServiceCallback$1;->createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7ServiceCallback;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/seven/Z7/common/Z7ServiceCallback;
    .locals 1
    .parameter "size"

    .prologue
    .line 181
    new-array v0, p1, [Lcom/seven/Z7/common/Z7ServiceCallback;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7ServiceCallback$1;->newArray(I)[Lcom/seven/Z7/common/Z7ServiceCallback;

    move-result-object v0

    return-object v0
.end method
