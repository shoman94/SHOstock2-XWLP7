.class public Lcom/seven/Z7/common/Z7EmailId;
.super Ljava/lang/Object;
.source "Z7EmailId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/Z7EmailId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:I

.field private mFolderId:I

.field private mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/seven/Z7/common/Z7EmailId$1;

    invoke-direct {v0}, Lcom/seven/Z7/common/Z7EmailId$1;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/Z7EmailId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 0
    .parameter "accountId"
    .parameter "folderId"
    .parameter "id"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/seven/Z7/common/Z7EmailId;->mAccountId:I

    .line 48
    iput p2, p0, Lcom/seven/Z7/common/Z7EmailId;->mFolderId:I

    .line 49
    iput-wide p3, p0, Lcom/seven/Z7/common/Z7EmailId;->mId:J

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 81
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/seven/Z7/common/Z7EmailId;

    .line 83
    .local v0, other:Lcom/seven/Z7/common/Z7EmailId;
    iget v3, p0, Lcom/seven/Z7/common/Z7EmailId;->mAccountId:I

    iget v4, v0, Lcom/seven/Z7/common/Z7EmailId;->mAccountId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget v3, p0, Lcom/seven/Z7/common/Z7EmailId;->mFolderId:I

    iget v4, v0, Lcom/seven/Z7/common/Z7EmailId;->mFolderId:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-wide v3, p0, Lcom/seven/Z7/common/Z7EmailId;->mId:J

    iget-wide v5, v0, Lcom/seven/Z7/common/Z7EmailId;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 88
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, prime:I
    const/4 v1, 0x1

    .line 68
    .local v1, result:I
    iget v2, p0, Lcom/seven/Z7/common/Z7EmailId;->mAccountId:I

    add-int/lit8 v1, v2, 0x1f

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/seven/Z7/common/Z7EmailId;->mFolderId:I

    add-int v1, v2, v3

    .line 70
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/seven/Z7/common/Z7EmailId;->mId:J

    iget-wide v5, p0, Lcom/seven/Z7/common/Z7EmailId;->mId:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 71
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[email id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/seven/Z7/common/Z7EmailId;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/seven/Z7/common/Z7EmailId;->mFolderId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, " account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/seven/Z7/common/Z7EmailId;->mAccountId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dst"
    .parameter "flags"

    .prologue
    .line 35
    iget v0, p0, Lcom/seven/Z7/common/Z7EmailId;->mAccountId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/seven/Z7/common/Z7EmailId;->mFolderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-wide v0, p0, Lcom/seven/Z7/common/Z7EmailId;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    return-void
.end method
