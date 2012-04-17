.class Lcom/seven/Z7/common/Z7AccountStateInfo$Service$1;
.super Ljava/lang/Object;
.source "Z7AccountStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/Z7AccountStateInfo$Service;
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
        "Lcom/seven/Z7/common/Z7AccountStateInfo$Service;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seven/Z7/common/Z7AccountStateInfo$Service;


# direct methods
.method constructor <init>(Lcom/seven/Z7/common/Z7AccountStateInfo$Service;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service$1;->this$1:Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7AccountStateInfo$Service;
    .locals 6
    .parameter "parcel"

    .prologue
    .line 79
    new-instance v0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    iget-object v1, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service$1;->this$1:Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    iget-object v1, v1, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->this$0:Lcom/seven/Z7/common/Z7AccountStateInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;-><init>(Lcom/seven/Z7/common/Z7AccountStateInfo;SLjava/lang/String;BB)V

    .line 81
    .local v0, info:Lcom/seven/Z7/common/Z7AccountStateInfo$Service;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7AccountStateInfo$Service$1;->createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/seven/Z7/common/Z7AccountStateInfo$Service;
    .locals 1
    .parameter "size"

    .prologue
    .line 85
    new-array v0, p1, [Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7AccountStateInfo$Service$1;->newArray(I)[Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    move-result-object v0

    return-object v0
.end method
