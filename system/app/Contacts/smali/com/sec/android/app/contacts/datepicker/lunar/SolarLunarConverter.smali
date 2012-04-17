.class public final Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
.super Ljava/lang/Object;
.source "SolarLunarConverter.java"


# static fields
.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private isLeapMonth_:Z

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
    .end array-data

    .line 30
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccumulatedDays(I)[I
    .locals 1
    .parameter "year"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    .line 79
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_0
.end method

.method public static getWeekday(III)I
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 231
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 232
    add-int/lit8 p1, p1, 0xc

    .line 233
    add-int/lit8 p0, p0, -0x1

    .line 236
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private isLeapYear(I)Z
    .locals 2
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 69
    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_0

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    :cond_1
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .locals 12
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "isLeapMonth"

    .prologue
    .line 142
    const/16 v9, 0x759

    if-lt p1, v9, :cond_0

    const/16 v9, 0x834

    if-gt p1, v9, :cond_0

    if-ltz p2, :cond_0

    const/16 v9, 0xb

    if-gt p2, v9, :cond_0

    const/4 v9, 0x1

    if-lt p3, v9, :cond_0

    const/16 v9, 0x1e

    if-le p3, v9, :cond_1

    .line 145
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 149
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 150
    .local v1, days:[I
    add-int/lit16 v3, p1, -0x759

    .line 151
    .local v3, indexOfYear:I
    mul-int/lit8 v8, v3, 0xe

    .line 152
    .local v8, startIndexOfYear:I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v9, v3

    .line 153
    .local v0, countOfDays:I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 156
    .local v5, leapMonth:I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_2

    const/16 v7, 0xc

    .line 157
    .local v7, numOfMonth:I
    :goto_0
    const/16 v9, 0xc

    if-ne v7, v9, :cond_3

    .line 158
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, p2, :cond_6

    .line 159
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    .end local v4           #j:I
    .end local v7           #numOfMonth:I
    :cond_2
    const/16 v7, 0xd

    goto :goto_0

    .line 162
    .restart local v7       #numOfMonth:I
    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_4

    .line 163
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 164
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 168
    .end local v4           #j:I
    :cond_4
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_5

    .line 169
    add-int/lit8 v6, p2, 0x1

    .line 173
    .local v6, nM:I
    :goto_3
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_4
    if-ge v4, v6, :cond_6

    .line 174
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 171
    .end local v4           #j:I
    .end local v6           #nM:I
    :cond_5
    move v6, p2

    .restart local v6       #nM:I
    goto :goto_3

    .line 180
    .end local v6           #nM:I
    .restart local v4       #j:I
    :cond_6
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 182
    const/16 v9, 0x759

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 183
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 184
    const/16 v9, 0x1e

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 185
    const/16 v9, 0x14f

    if-le v0, v9, :cond_a

    .line 187
    const/16 v9, 0x75a

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 188
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 189
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 191
    add-int/lit16 v0, v0, -0x150

    .line 194
    const/16 v2, 0x16d

    .line 195
    .local v2, daysOfYear:I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 196
    sub-int/2addr v0, v2

    .line 197
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 198
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 199
    const/16 v2, 0x16e

    goto :goto_5

    .line 201
    :cond_7
    const/16 v2, 0x16d

    goto :goto_5

    .line 205
    :cond_8
    :goto_6
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_9

    .line 206
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_6

    .line 208
    :cond_9
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 211
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 228
    .end local v2           #daysOfYear:I
    :goto_7
    return-void

    .line 213
    :cond_a
    const/4 v9, 0x1

    if-le v0, v9, :cond_c

    .line 214
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 215
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 216
    add-int/lit8 v0, v0, -0x2

    .line 217
    :goto_8
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_b

    .line 218
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    .line 220
    :cond_b
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 223
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7

    .line 225
    :cond_c
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7
.end method

.method public convertSolarToLunar(III)V
    .locals 12
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    const/16 v11, 0x76c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 84
    const v6, 0xa7a5e

    .line 86
    .local v6, totalDaysTo18810130:I
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 88
    const/16 v7, 0x759

    if-lt p1, v7, :cond_0

    const/16 v7, 0x834

    if-gt p1, v7, :cond_0

    if-ltz p2, :cond_0

    const/16 v7, 0xb

    if-gt p2, v7, :cond_0

    if-lt p3, v10, :cond_0

    const/16 v7, 0x1f

    if-le p3, v7, :cond_1

    .line 91
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The date "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is out of range."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 96
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v7

    add-int/2addr v7, p3

    const v8, 0xa7a5e

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 97
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v8

    aget v8, v8, p2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 101
    const/4 v0, 0x1

    .local v0, indexOfYear:I
    :goto_0
    const/16 v7, 0xdd

    if-ge v0, v7, :cond_2

    .line 102
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v8, v8, v0

    if-gt v7, v8, :cond_5

    .line 106
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 107
    mul-int/lit8 v5, v0, 0xe

    .line 108
    .local v5, startIndexOfYear:I
    add-int/lit16 v7, v0, 0x759

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 111
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v8, v8, v0

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 112
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v8, v5, 0xd

    aget-byte v2, v7, v8

    .line 115
    .local v2, leapMonth:I
    const/16 v7, 0x7f

    if-ne v2, v7, :cond_6

    const/16 v4, 0xc

    .line 116
    .local v4, numOfMonth:I
    :goto_1
    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 117
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 118
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v8, v5, v1

    aget-byte v3, v7, v8

    .line 119
    .local v3, m1:I
    if-ne v2, v1, :cond_7

    .line 120
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 126
    :goto_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    if-gt v7, v3, :cond_8

    .line 132
    .end local v3           #m1:I
    :cond_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    if-ge v7, v11, :cond_4

    .line 133
    iput v11, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 134
    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 135
    iput v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 137
    :cond_4
    return-void

    .line 101
    .end local v1           #j:I
    .end local v2           #leapMonth:I
    .end local v4           #numOfMonth:I
    .end local v5           #startIndexOfYear:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .restart local v2       #leapMonth:I
    .restart local v5       #startIndexOfYear:I
    :cond_6
    const/16 v4, 0xd

    goto :goto_1

    .line 122
    .restart local v1       #j:I
    .restart local v3       #m1:I
    .restart local v4       #numOfMonth:I
    :cond_7
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 123
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_3

    .line 129
    :cond_8
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getTotalDaysTo(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 50
    add-int/lit8 v0, p1, -0x1

    .line 51
    .local v0, year:I
    mul-int/lit16 v1, v0, 0x16d

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    div-int/lit16 v2, v0, 0x190

    add-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    return v0
.end method
