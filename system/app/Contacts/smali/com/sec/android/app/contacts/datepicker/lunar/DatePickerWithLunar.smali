.class public Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
.super Lcom/android/contacts/datepicker/DatePicker;
.source "DatePickerWithLunar.java"


# instance fields
.field private mIsLeapMonth:Z

.field private mSetLunar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected getMaxDayOfMonth()I
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 56
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 58
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 60
    .local v1, max:I
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->getDayLengthOf(IIZ)I

    move-result v1

    .line 64
    :cond_0
    return v1
.end method

.method public isLunarCalendar()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    return v0
.end method

.method public setLunarCalendar(ZZ)V
    .locals 7
    .parameter "bSetLunar"
    .parameter "bIsLeapMonth"

    .prologue
    const/4 v6, 0x1

    .line 80
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mSetLunar:Z

    .line 81
    iput-boolean p2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->mIsLeapMonth:Z

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMaxDayOfMonth()I

    move-result v1

    .line 83
    .local v1, maxDay:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v0

    .line 84
    .local v0, dayOfMonth:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 85
    move v0, v1

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v6

    invoke-virtual {p0, v5, v6, v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->updateDate(III)V

    .line 102
    :goto_1
    return-void

    .line 80
    .end local v0           #dayOfMonth:I
    .end local v1           #maxDay:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 89
    .restart local v0       #dayOfMonth:I
    .restart local v1       #maxDay:I
    :cond_2
    const/16 v3, 0x834

    .line 90
    .local v3, temp_year:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v4

    .line 91
    .local v4, year:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v2

    .line 93
    .local v2, month:I
    if-ne v4, v3, :cond_3

    .line 94
    const/16 v3, 0x76c

    .line 96
    :cond_3
    invoke-virtual {p0, v3, v2, v6}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->updateDate(III)V

    .line 97
    invoke-virtual {p0, v4, v2, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->updateDate(III)V

    goto :goto_1
.end method

.method protected updateDaySpinner()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMaxDayOfMonth()I

    move-result v0

    .line 107
    .local v0, maxDay:I
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 108
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 109
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 111
    return-void
.end method
