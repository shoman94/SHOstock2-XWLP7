.class final Lcom/android/email/syncnconnect/utils/SncEndpoint$1;
.super Ljava/lang/Object;
.source "SncEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/syncnconnect/utils/SncEndpoint;
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
        "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 1
    .parameter "source"

    .prologue
    .line 70
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v0, p1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/email/syncnconnect/utils/SncEndpoint$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/email/syncnconnect/utils/SncEndpoint;
    .locals 1
    .parameter "size"

    .prologue
    .line 74
    new-array v0, p1, [Lcom/android/email/syncnconnect/utils/SncEndpoint;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/email/syncnconnect/utils/SncEndpoint$1;->newArray(I)[Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    return-object v0
.end method
