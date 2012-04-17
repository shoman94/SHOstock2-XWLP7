.class public Lcom/android/email/syncnconnect/utils/SncTag;
.super Ljava/lang/Object;
.source "SncTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTagId:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;

.field private mUserEndpointId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncTag$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncTag$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mUserEndpointId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mUserEndpointId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mUserEndpointId:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEndpointId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mUserEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0
    .parameter "tagId"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .parameter "tagName"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUserEndpointId(Ljava/lang/String;)V
    .locals 0
    .parameter "userEndpointId"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mUserEndpointId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DUMP_TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncTag;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method
