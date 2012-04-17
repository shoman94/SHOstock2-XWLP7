.class public Lcom/android/email/activity/setup/DayOfTheWeek;
.super Landroid/widget/LinearLayout;
.source "DayOfTheWeek.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/DayOfTheWeek$dayViewClickListener;
    }
.end annotation


# static fields
.field public static friSelected:Z

.field public static monSelected:Z

.field public static satSelected:Z

.field public static sunSelected:Z

.field public static thuSelected:Z

.field public static tueSelected:Z

.field public static wedSelected:Z


# instance fields
.field private DaysView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private selectedDays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private t1:Landroid/widget/ToggleButton;

.field private t2:Landroid/widget/ToggleButton;

.field private t3:Landroid/widget/ToggleButton;

.field private t4:Landroid/widget/ToggleButton;

.field private t5:Landroid/widget/ToggleButton;

.field private t6:Landroid/widget/ToggleButton;

.field private t7:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    .line 49
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    .line 51
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    .line 53
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    .line 55
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    .line 57
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    .line 59
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "as"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    .line 27
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    .line 29
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    .line 31
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    .line 33
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    .line 35
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    .line 37
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    .line 39
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    .line 363
    new-instance v0, Lcom/android/email/activity/setup/DayOfTheWeek$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/DayOfTheWeek$1;-><init>(Lcom/android/email/activity/setup/DayOfTheWeek;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->initDaySelector()V

    .line 65
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "refresh_widget"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method private initDaySelector()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    .line 87
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    .line 97
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    .line 102
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    .line 107
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    .line 112
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setWidgetProperties()V

    .line 116
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/DayOfTheWeek;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setFriView()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 331
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setMonView()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 278
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setSatView()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 344
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setSunView()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 357
    return-void
.end method

.method private setThuView()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 318
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTueView()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 291
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setWedView()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 304
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No way to come here!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 134
    :pswitch_0
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    .line 135
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 142
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 147
    :goto_1
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_1

    .line 150
    :pswitch_1
    const-string v2, ""

    const-string v3, "tuesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-nez v2, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    .line 152
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 158
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 163
    :goto_3
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 151
    goto :goto_2

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_3

    .line 166
    :pswitch_2
    const-string v2, ""

    const-string v3, "wednesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-nez v2, :cond_4

    :goto_4
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    .line 168
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 174
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 179
    :goto_5
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 167
    goto :goto_4

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_5

    .line 182
    :pswitch_3
    const-string v2, ""

    const-string v3, "thursday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-nez v2, :cond_6

    :goto_6
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    .line 184
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 190
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 195
    :goto_7
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_6
    move v1, v0

    .line 183
    goto :goto_6

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_7

    .line 198
    :pswitch_4
    const-string v2, ""

    const-string v3, "friday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-nez v2, :cond_8

    :goto_8
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    .line 200
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 206
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 211
    :goto_9
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_8
    move v1, v0

    .line 199
    goto :goto_8

    .line 209
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_9

    .line 214
    :pswitch_5
    const-string v2, ""

    const-string v3, "saturday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-nez v2, :cond_a

    :goto_a
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 222
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-eqz v0, :cond_b

    .line 223
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 227
    :goto_b
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_a
    move v1, v0

    .line 215
    goto :goto_a

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_b

    .line 230
    :pswitch_6
    const-string v2, ""

    const-string v3, "sunday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    if-nez v2, :cond_c

    :goto_c
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    .line 232
    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 238
    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    aput-boolean v2, v1, v0

    goto/16 :goto_0

    :cond_c
    move v1, v0

    .line 231
    goto :goto_c

    .line 132
    :pswitch_data_0
    .packed-switch 0x7f100120
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 373
    return-void
.end method

.method public setWidgetProperties()V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    .line 255
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    .line 256
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    .line 257
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    .line 258
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    .line 259
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    .line 260
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    .line 262
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setMonView()V

    .line 263
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setTueView()V

    .line 264
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setWedView()V

    .line 265
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setThuView()V

    .line 266
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setFriView()V

    .line 267
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setSatView()V

    .line 268
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setSunView()V

    .line 269
    return-void
.end method
