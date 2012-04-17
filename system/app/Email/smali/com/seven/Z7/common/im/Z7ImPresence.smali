.class public Lcom/seven/Z7/common/im/Z7ImPresence;
.super Ljava/lang/Object;
.source "Z7ImPresence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/im/Z7ImPresence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private inactiveStatus:I

.field private inactiveStatusText:Ljava/lang/String;

.field private isLogin:Z

.field private mStatus:I

.field private mStatusText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/seven/Z7/common/im/Z7ImPresence$1;

    invoke-direct {v0}, Lcom/seven/Z7/common/im/Z7ImPresence$1;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/im/Z7ImPresence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatus:I

    .line 21
    iput p1, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatus:I

    .line 22
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "presence"
    .parameter "text"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/seven/Z7/common/im/Z7ImPresence;-><init>(I)V

    .line 26
    iput-object p2, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatusText:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .parameter "presence"
    .parameter "text"
    .parameter "ip"
    .parameter "ipt"
    .parameter "isLogin"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/seven/Z7/common/im/Z7ImPresence;-><init>(ILjava/lang/String;)V

    .line 37
    iput p3, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatus:I

    .line 38
    iput-object p4, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatusText:Ljava/lang/String;

    .line 39
    iput-boolean p5, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->isLogin:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x1

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v5, :cond_0

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/seven/Z7/common/im/Z7ImPresence;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 94
    iget v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->isLogin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
