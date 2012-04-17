.class Lcom/seven/Z7/common/Z7AccountStateInfo$Service;
.super Ljava/lang/Object;
.source "Z7AccountStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/Z7AccountStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/Z7AccountStateInfo$Service;",
            ">;"
        }
    .end annotation
.end field

.field mPercentage:B

.field mServiceDesc:Ljava/lang/String;

.field mServiceId:S

.field mServiceState:B

.field final synthetic this$0:Lcom/seven/Z7/common/Z7AccountStateInfo;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/common/Z7AccountStateInfo;SLjava/lang/String;BB)V
    .locals 1
    .parameter
    .parameter "serviceId"
    .parameter "serviceDesc"
    .parameter "serviceState"
    .parameter "percentage"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->this$0:Lcom/seven/Z7/common/Z7AccountStateInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service$1;

    invoke-direct {v0, p0}, Lcom/seven/Z7/common/Z7AccountStateInfo$Service$1;-><init>(Lcom/seven/Z7/common/Z7AccountStateInfo$Service;)V

    iput-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    iput-object p3, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mServiceDesc:Ljava/lang/String;

    .line 59
    iput-short p2, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mServiceId:S

    .line 60
    iput-byte p4, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mServiceState:B

    .line 61
    iput-byte p5, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mPercentage:B

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget-short v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mServiceId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mServiceDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mServiceState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-byte v0, p0, Lcom/seven/Z7/common/Z7AccountStateInfo$Service;->mPercentage:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 75
    return-void
.end method
