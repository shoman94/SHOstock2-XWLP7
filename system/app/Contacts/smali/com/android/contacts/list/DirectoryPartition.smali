.class public final Lcom/android/contacts/list/DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# instance fields
.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 40
    return-void
.end method


# virtual methods
.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    iget v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoSupported()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setDirectoryId(J)V
    .locals 0
    .parameter "directoryId"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    .line 51
    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .locals 0
    .parameter "directoryType"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPhotoSupported(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    .line 108
    return-void
.end method

.method public setPriorityDirectory(Z)V
    .locals 0
    .parameter "priorityDirectory"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    .line 97
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    .line 82
    return-void
.end method
