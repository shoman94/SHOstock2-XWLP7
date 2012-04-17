.class public Lcom/seven/Z7/common/Z7AccountStateInfo;
.super Ljava/lang/Object;
.source "Z7AccountStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/Z7AccountStateInfo$Service;
    }
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/Z7AccountStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAccountStatus:B

.field mConnectionDate:J

.field mConnectionStatus:B

.field mEndpointStatus:B

.field mIsPushOn:Z

.field mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/seven/Z7/common/Z7AccountStateInfo$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BBZBJ)V
    .locals 1
    .parameter "accountStatus"
    .parameter "endPointStatus"
    .parameter "isPushOn"
    .parameter "connectionStatus"
    .parameter "connectionDate"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/seven/Z7/common/Z7AccountStateInfo$1;

    invoke-direct {v0, p0}, Lcom/seven/Z7/common/Z7AccountStateInfo$1;-><init>(Lcom/seven/Z7/common/Z7AccountStateInfo;)V

    iput-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    iput-byte p1, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mAccountStatus:B

    .line 28
    iput-byte p2, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mEndpointStatus:B

    .line 29
    iput-boolean p3, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mIsPushOn:Z

    .line 30
    iput-wide p5, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionDate:J

    .line 31
    iput-byte p4, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionStatus:B

    .line 32
    return-void
.end method

.method public constructor <init>(BBZBJ[Lcom/seven/Z7/common/Z7AccountStateInfo$Service;)V
    .locals 1
    .parameter "accountStatus"
    .parameter "endPointStatus"
    .parameter "isPushOn"
    .parameter "connectionStatus"
    .parameter "connectionDate"
    .parameter "services"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/seven/Z7/common/Z7AccountStateInfo;-><init>(BBZBJ)V

    .line 37
    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mServices:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mAccountStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mEndpointStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget-boolean v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mIsPushOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 100
    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-wide v2, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mConnectionDate:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo;->mServices:Ljava/util/List;

    new-array v2, v1, [Lcom/seven/Z7/common/Z7AccountStateInfo$Service;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 103
    return-void

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0
.end method
