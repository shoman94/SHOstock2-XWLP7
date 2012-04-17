.class public Lcom/android/email/activity/ListBouncingHeaderLayout;
.super Landroid/widget/FrameLayout;
.source "ListBouncingHeaderLayout.java"


# static fields
.field private static sMessageListHeadTextStateColorDarkTheme:I

.field private static sMessageListHeadTextStateColorWhiteTheme:I

.field private static sMessageListHeadTextTimeColorDarkTheme:I

.field private static sMessageListHeadTextTimeColorWhiteTheme:I


# instance fields
.field private TAG:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mBgColor:I

.field public mHeader:Landroid/widget/LinearLayout;

.field private final mHeaderParam:Landroid/widget/FrameLayout$LayoutParams;

.field mImageStatus:Landroid/widget/ImageView;

.field mListHeaderShadow:Landroid/view/View;

.field mManageView:Landroid/view/View;

.field mProgress:Landroid/widget/ProgressBar;

.field mResource:Landroid/content/res/Resources;

.field mTextStatus:Landroid/widget/TextView;

.field mTextUpdateTime:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 53
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    .line 55
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorWhiteTheme:I

    .line 57
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorDarkTheme:I

    .line 59
    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorDarkTheme:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;I)V
    .locals 4
    .parameter "activity"
    .parameter "inflater"
    .parameter "bgColor"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "ListBouncingHeaderLayout"

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->TAG:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeader:Landroid/widget/LinearLayout;

    .line 33
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    .line 35
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    .line 37
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    .line 41
    iput v3, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mBgColor:I

    .line 43
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    .line 45
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    .line 47
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mManageView:Landroid/view/View;

    .line 49
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    .line 51
    iput-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x49

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeaderParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    iput-object p1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mActivity:Landroid/app/Activity;

    .line 74
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    .line 76
    sget v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    if-ne v0, v3, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    .line 79
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorWhiteTheme:I

    .line 81
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorDarkTheme:I

    .line 84
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorDarkTheme:I

    .line 88
    :cond_0
    iput p3, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mBgColor:I

    .line 89
    const v0, 0x7f0400a2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeaderParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f10027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mHeader:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f10027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f10027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    .line 94
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mBgColor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f10027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    .line 102
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f10027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayUpdate()V

    .line 105
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextStateColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/ListBouncingHeaderLayout;->sMessageListHeadTextTimeColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public disableHeader()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    monitor-exit v1

    .line 138
    :cond_0
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableShadow()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public displayRelease(I)V
    .locals 4
    .parameter "lastSp"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0805a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    const v2, 0x7f0202a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public displayUpdate()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0804fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mImageStatus:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public enableHeader()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->TAG:Ljava/lang/String;

    const-string v2, "enableHeader()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    monitor-exit v1

    .line 147
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableShadow()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mListHeaderShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public getHeaderVisible()I
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    monitor-exit v1

    .line 167
    :goto_0
    return v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setBackgroundColorForHeader(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    return-void
.end method

.method public setLastUpdate(Ljava/lang/String;)V
    .locals 4
    .parameter "time"

    .prologue
    .line 190
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f08030d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mTextUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/ListBouncingHeaderLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0805a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
