.class public Lcom/android/mms/ui/MessagePickerDialog;
.super Landroid/app/Dialog;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;,
        Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    }
.end annotation


# static fields
.field private static changeCurrentCheck:Z

.field public static isWrongRange:Z

.field private static mDisplayValue:I

.field private static mRangeMax:I

.field private static mRangeMin:I

.field private static mTempValue:I


# instance fields
.field private final mButtonKeyListener:Landroid/text/method/KeyListener;

.field private final mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mContext:Landroid/content/Context;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLocale:Ljava/lang/String;

.field private mNegativeButton:Landroid/widget/Button;

.field private final mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    .line 54
    sput v0, Lcom/android/mms/ui/MessagePickerDialog;->mTempValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"
    .parameter "title_icon"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 261
    new-instance v5, Lcom/android/mms/ui/MessagePickerDialog$3;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessagePickerDialog$3;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    .line 111
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    .line 112
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/ui/MessagePickerDialog;->changeCurrentCheck:Z

    .line 113
    iput-object p3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 114
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 116
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03001b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 118
    .local v4, view:Landroid/view/View;
    const v5, 0x7f080068

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 120
    .local v3, lc:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mLocale:Ljava/lang/String;

    .line 121
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mLocale:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->LanguageSize(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, language:I
    const/16 v5, 0xb

    if-ne v2, v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x4198

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v6, 0x3f59999a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 135
    :goto_0
    const v5, 0x7f08006b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    .line 136
    const v5, 0x7f08006c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    .line 137
    const v5, 0x7f080067

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitleIcon:Landroid/widget/ImageView;

    .line 139
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    const v6, 0x7f09006b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    const v6, 0x7f09006a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitleIcon:Landroid/widget/ImageView;

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const v5, 0x7f080070

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    .line 145
    sput p6, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    .line 146
    sput p5, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    .line 149
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v5, p5}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setMinValue(I)V

    .line 150
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v5, p6}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setMaxValue(I)V

    .line 151
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v5, p4}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setValue(I)V

    .line 152
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setOnLongPressUpdateInterval(J)V

    .line 153
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 154
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagePickerDialog;->requestWindowFeature(I)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f070007

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 156
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagePickerDialog;->setContentView(Landroid/view/View;)V

    .line 158
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 160
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/ui/MessagePickerDialog$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessagePickerDialog$1;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/ui/MessagePickerDialog$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessagePickerDialog$2;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 173
    return-void

    .line 125
    :cond_0
    const/16 v5, 0xc

    if-eq v2, v5, :cond_1

    const/16 v5, 0x14

    if-ne v2, v5, :cond_2

    .line 126
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x4194

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v6, 0x3f4ccccd

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 128
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 129
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x4194

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v6, 0x3f59999a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 132
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x41a0

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "numberSetListener"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"
    .parameter "title_icon"

    .prologue
    .line 98
    const v2, 0x103000b

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->setDuration()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Lcom/android/mms/ui/MessagePickerDialog;->mTempValue:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/mms/ui/MessagePickerDialog;->changeCurrentCheck:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method private setDuration()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->clearFocus()V

    .line 187
    sget-boolean v1, Lcom/android/mms/ui/MessagePickerDialog;->changeCurrentCheck:Z

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getValue()I

    move-result v1

    sput v1, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    .line 190
    :cond_1
    sget-boolean v1, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    if-eqz v1, :cond_2

    .line 191
    sput-boolean v5, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    .line 192
    sget v1, Lcom/android/mms/ui/MessagePickerDialog;->mTempValue:I

    sput v1, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    .line 195
    :cond_2
    sget v1, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    if-gt v1, v2, :cond_4

    sget v1, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    if-gt v1, v2, :cond_4

    .line 196
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    invoke-interface {v1, v2}, Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;->onNumberSet(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    .line 209
    :cond_3
    :goto_0
    return-void

    .line 198
    :cond_4
    sget v1, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    if-le v1, v2, :cond_5

    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09019c

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, message:Ljava/lang/String;
    sget v1, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    sput v1, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    .line 201
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setValue(I)V

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    .end local v0           #message:Ljava/lang/String;
    :cond_5
    sget v1, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    if-ge v1, v2, :cond_3

    .line 204
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09019d

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0       #message:Ljava/lang/String;
    sget v1, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    sput v1, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mDisplayValue:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setValue(I)V

    .line 207
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 220
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setValue(I)V

    .line 222
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    return-object v0
.end method
