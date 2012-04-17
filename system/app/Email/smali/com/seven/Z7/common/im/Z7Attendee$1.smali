.class final Lcom/seven/Z7/common/im/Z7Attendee$1;
.super Ljava/lang/Object;
.source "Z7Attendee.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/im/Z7Attendee;
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
        "Lcom/seven/Z7/common/im/Z7Attendee;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/im/Z7Attendee;
    .locals 4
    .parameter "src"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, uid:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, nick:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, res:Ljava/lang/String;
    new-instance v3, Lcom/seven/Z7/common/im/Z7Attendee;

    invoke-direct {v3, v2, v0, v1}, Lcom/seven/Z7/common/im/Z7Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/im/Z7Attendee$1;->createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/im/Z7Attendee;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/seven/Z7/common/im/Z7Attendee;
    .locals 1
    .parameter "size"

    .prologue
    .line 38
    new-array v0, p1, [Lcom/seven/Z7/common/im/Z7Attendee;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/im/Z7Attendee$1;->newArray(I)[Lcom/seven/Z7/common/im/Z7Attendee;

    move-result-object v0

    return-object v0
.end method
