.class public Lcom/android/contacts/list/ContactsSectionIndexer;
.super Ljava/lang/Object;
.source "ContactsSectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mCount:I

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 5
    .parameter "sections"
    .parameter "counts"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 43
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 46
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The sections and counts arrays must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 54
    array-length v2, p2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_5

    .line 57
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    const-string v3, "#"

    aput-object v3, v2, v0

    .line 62
    add-int/lit8 v2, v0, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    add-int/lit8 v2, v0, 0x1

    aget v3, p2, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 64
    const/4 v2, 0x0

    aput v2, p2, v0

    .line 70
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    aput v1, v2, v0

    .line 71
    aget v2, p2, v0

    add-int/2addr v1, v2

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 73
    :cond_5
    iput v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    .line 74
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 81
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    if-lt p1, v1, :cond_2

    .line 90
    :cond_0
    const/4 v0, -0x1

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 103
    .local v0, index:I
    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public setProfileHeader(Ljava/lang/String;)V
    .locals 5
    .parameter "header"

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 116
    .local v2, tempSections:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [I

    .line 117
    .local v1, tempPositions:[I
    aput-object p1, v2, v4

    .line 118
    aput v4, v1, v4

    .line 119
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    array-length v3, v3

    if-gt v0, v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 121
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_2
    iput-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    .line 125
    iget v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    goto :goto_0
.end method
