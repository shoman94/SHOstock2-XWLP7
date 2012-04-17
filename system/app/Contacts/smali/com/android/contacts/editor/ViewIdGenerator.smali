.class public final Lcom/android/contacts/editor/ViewIdGenerator;
.super Ljava/lang/Object;
.source "ViewIdGenerator.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/editor/ViewIdGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorkStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private mIdMap:Landroid/os/Bundle;

.field private mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    .line 119
    new-instance v0, Lcom/android/contacts/editor/ViewIdGenerator$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/ViewIdGenerator$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/ViewIdGenerator;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ViewIdGenerator;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getMapKey(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)Ljava/lang/String;
    .locals 3
    .parameter "entity"
    .parameter "kind"
    .parameter "values"
    .parameter "viewIndex"

    .prologue
    const/16 v2, 0x2a

    .line 86
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 87
    if-eqz p0, :cond_0

    .line 88
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 99
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I
    .locals 4
    .parameter "entity"
    .parameter "kind"
    .parameter "values"
    .parameter "viewIndex"

    .prologue
    .line 73
    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/editor/ViewIdGenerator;->getMapKey(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, k:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, id:I
    if-nez v0, :cond_0

    .line 78
    iget v2, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    const v3, 0xffff

    and-int v0, v2, v3

    .line 79
    iget-object v2, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method
