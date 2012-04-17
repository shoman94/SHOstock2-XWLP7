.class Lcom/seven/Z7/common/Z7AccountStateInfo$1;
.super Ljava/lang/Object;
.source "Z7AccountStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/Z7AccountStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/seven/Z7/common/Z7AccountStateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/common/Z7AccountStateInfo;


# direct methods
.method constructor <init>(Lcom/seven/Z7/common/Z7AccountStateInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$1;->this$0:Lcom/seven/Z7/common/Z7AccountStateInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7AccountStateInfo;
    .locals 8
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    .line 107
    new-instance v0, Lcom/seven/Z7/common/Z7AccountStateInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, [Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    check-cast v7, [Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    invoke-direct/range {v0 .. v7}, Lcom/seven/Z7/common/Z7AccountStateInfo;-><init>(BBZBJ[Lcom/seven/Z7/common/Z7AccountStateInfo$Service;)V

    .line 110
    .local v0, info:Lcom/seven/Z7/common/Z7AccountStateInfo;
    return-object v0

    .line 107
    .end local v0           #info:Lcom/seven/Z7/common/Z7AccountStateInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7AccountStateInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7AccountStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/seven/Z7/common/Z7AccountStateInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 114
    new-array v0, p1, [Lcom/seven/Z7/common/Z7AccountStateInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7AccountStateInfo$1;->newArray(I)[Lcom/seven/Z7/common/Z7AccountStateInfo;

    move-result-object v0

    return-object v0
.end method
