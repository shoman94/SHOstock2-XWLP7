.class public Lcom/android/systemui/statusbar/policy/QuickSettingButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;
    }
.end annotation


# instance fields
.field private mActivateStatus:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnImage:Landroid/widget/ImageView;

.field private mBtnLED:Landroid/widget/ImageView;

.field private mBtnText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDimIconID:I

.field public mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

.field private mOffIconID:I

.field private mOffIconID2:I

.field private mOnIconID:I

.field private mOnIconID2:I

.field private mTextID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 177
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mContext:Landroid/content/Context;

    .line 162
    const v1, 0x7f03001c

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    const v1, 0x7f0e0092

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f0e0091

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 165
    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 167
    sget-object v1, Lcom/android/systemui/R$styleable;->QuickSettingButton:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 168
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID:I

    .line 170
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID:I

    .line 171
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mDimIconID:I

    .line 172
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID2:I

    .line 173
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID2:I

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 199
    const-string v1, "TW_TAG"

    const-string v2, "onAttachedToWindow()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setEnabled(Z)V

    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setEnabled(Z)V

    .line 97
    return-void

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 216
    const-string v0, "TW_TAG"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->deinit()V

    .line 221
    return-void
.end method

.method public setActivateStatus(I)V
    .locals 6
    .parameter "activateStatus"

    .prologue
    const v5, 0x7f020107

    const v4, 0x7f020106

    const/4 v3, -0x1

    .line 104
    const-string v0, "STATUSBAR-QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivateStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - 1:on, 2:off, 3:dim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mActivateStatus:I

    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    .line 80
    return-void
.end method
