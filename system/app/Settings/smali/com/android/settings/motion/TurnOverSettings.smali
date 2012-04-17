.class public Lcom/android/settings/motion/TurnOverSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static final mAnimationImage:[I


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mTutorial:Landroid/preference/Preference;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationImage:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xf9t 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfdt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 47
    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 48
    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    .line 51
    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 57
    new-instance v0, Lcom/android/settings/motion/TurnOverSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/TurnOverSettings$1;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/TurnOverSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/TurnOverSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/TurnOverSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->showUseRingDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion/TurnOverSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion/TurnOverSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/TurnOverSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/motion/TurnOverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/TurnOverSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/motion/TurnOverSettings;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion/TurnOverSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion/TurnOverSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 149
    iput-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    iput-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    iput-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07f6

    new-instance v3, Lcom/android/settings/motion/TurnOverSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/TurnOverSettings$2;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0173

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 173
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/TurnOverSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/TurnOverSettings$3;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 179
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 233
    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 237
    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 241
    iput-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 243
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b07f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0482

    new-instance v2, Lcom/android/settings/motion/TurnOverSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/TurnOverSettings$7;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b07f5

    new-instance v2, Lcom/android/settings/motion/TurnOverSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/TurnOverSettings$6;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 260
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/TurnOverSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/TurnOverSettings$8;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 266
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "TurnOverSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    .line 303
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->updateAnimation()V

    .line 305
    :cond_0
    return-void
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TurnOverSettings;->startActivity(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "TurnOverSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 279
    const-string v0, "TurnOverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/motion/TurnOverSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    .line 287
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->stopAnimation()V

    .line 289
    iget v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/settings/motion/TurnOverSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/motion/TurnOverSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 82
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 83
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 84
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 87
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/motion/TurnOverSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0b07d5

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 98
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/motion/TurnOverSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->showGuideDialog()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 104
    const-string v0, "TurnOverSettings"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TurnOverSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/motion/TurnOverSettings;->mActivity:Landroid/app/Activity;

    .line 74
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TurnOverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mTutorial:Landroid/preference/Preference;

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->stopAnimation()V

    .line 119
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->showGuideDialog()V

    .line 143
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->updateCheckedUI()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->updateAnimation()V

    .line 113
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    iput-object v6, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 190
    iput-object v6, p0, Lcom/android/settings/motion/TurnOverSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    iput-object v6, p0, Lcom/android/settings/motion/TurnOverSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion/TurnOverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 198
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040043

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f080027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 200
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f080095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 202
    const v4, 0x7f0b07ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 204
    const v4, 0x7f0b07d5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 206
    const v4, 0x7f0b07ee

    new-instance v5, Lcom/android/settings/motion/TurnOverSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/TurnOverSettings$4;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0173

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 221
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 222
    iget-object v4, p0, Lcom/android/settings/motion/TurnOverSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/TurnOverSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/TurnOverSettings$5;-><init>(Lcom/android/settings/motion/TurnOverSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/motion/TurnOverSettings;->startAnimation()V

    .line 228
    return-void
.end method
