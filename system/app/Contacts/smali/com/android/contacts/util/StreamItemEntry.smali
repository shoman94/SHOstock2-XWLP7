.class public Lcom/android/contacts/util/StreamItemEntry;
.super Ljava/lang/Object;
.source "StreamItemEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/util/StreamItemEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mComments:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;

.field private final mIconRes:Ljava/lang/String;

.field private final mId:J

.field private final mLabelRes:Ljava/lang/String;

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemPhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mResPackage:Ljava/lang/String;

.field private final mText:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "text"
    .parameter "comments"
    .parameter "timestamp"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "resPackage"
    .parameter "iconRes"
    .parameter "labelRes"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    .line 57
    iput-object p3, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    .line 59
    iput-wide p5, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    .line 60
    iput-object p7, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountName:Ljava/lang/String;

    .line 62
    iput-object p9, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    .line 63
    iput-object p10, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lcom/android/contacts/util/StreamItemEntry;->mIconRes:Ljava/lang/String;

    .line 65
    iput-object p12, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    .line 73
    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    .line 74
    const-string v0, "comments"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    .line 75
    const-string v0, "timestamp"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    .line 76
    const-string v0, "account_type"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    .line 77
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountName:Ljava/lang/String;

    .line 78
    const-string v0, "data_set"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    .line 79
    const-string v0, "res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    .line 80
    const-string v0, "icon"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mIconRes:Ljava/lang/String;

    .line 81
    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    .line 83
    return-void
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 3
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 144
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 140
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    .locals 1
    .parameter "photoEntry"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public compareTo(Lcom/android/contacts/util/StreamItemEntry;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lcom/android/contacts/util/StreamItemEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/StreamItemEntry;->compareTo(Lcom/android/contacts/util/StreamItemEntry;)I

    move-result v0

    return v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    return-wide v0
.end method

.method public getLabelRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemPhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    return-wide v0
.end method
