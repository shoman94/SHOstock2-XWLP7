.class Lcom/android/contacts/datepicker/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/datepicker/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mHasYear:Z

.field private final mMonth:I

.field private final mYear:I

.field private final mYearOptional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 506
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    .line 473
    return-void

    :cond_0
    move v0, v2

    .line 471
    goto :goto_0

    :cond_1
    move v1, v2

    .line 472
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/datepicker/DatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZZ)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hasYear"
    .parameter "yearOptional"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 456
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    .line 457
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    .line 458
    iput p4, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    .line 459
    iput-boolean p5, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    .line 460
    iput-boolean p6, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 442
    invoke-direct/range {p0 .. p6}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZ)V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    return v0
.end method

.method public isYearOptional()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 498
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    return-void

    :cond_0
    move v0, v2

    .line 501
    goto :goto_0

    :cond_1
    move v1, v2

    .line 502
    goto :goto_1
.end method
