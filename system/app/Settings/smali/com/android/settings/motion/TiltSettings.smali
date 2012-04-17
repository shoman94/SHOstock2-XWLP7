.class public Lcom/android/settings/motion/TiltSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TiltSettings.java"

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

.field private mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

.field private mTutorial:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/motion/TiltSettings;->mAnimationImage:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xf5t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 53
    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 59
    new-instance v0, Lcom/android/settings/motion/TiltSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/TiltSettings$1;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/TiltSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/TiltSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/TiltSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion/TiltSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion/TiltSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/TiltSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion/TiltSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

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

    new-instance v3, Lcom/android/settings/motion/TiltSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/TiltSettings$2;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0173

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 180
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/TiltSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/TiltSettings$3;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 186
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "TiltSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 278
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateAnimation()V

    .line 280
    :cond_0
    return-void
.end method

.method public static startSensitivityTest(I)V
    .locals 4
    .parameter "sensitivity"

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v2, "android.resource://com.cooliris.media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    sget-object v2, Lcom/android/settings/motion/TiltSettings;->mActivity:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    return-void
.end method

.method private startTryActually()V
    .locals 4

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v2, "android.resource://com.cooliris.media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 234
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v2, "MotionTest"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/motion/TiltSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "TiltSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 254
    const-string v0, "TiltSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/motion/TiltSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 260
    :cond_0
    iget v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    .line 262
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->stopAnimation()V

    .line 264
    iget v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_zooming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 142
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/motion/TiltSensitivityPreference;->setEnabled(Z)V

    .line 144
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

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 85
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 86
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 87
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0b07d0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 101
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/motion/TiltSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/TiltSensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    .line 134
    :pswitch_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->showGuideDialog()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 107
    const-string v0, "TiltSettings"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_zooming"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/motion/TiltSensitivityPreference;->setEnabled(Z)V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSettings;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/motion/TiltSettings;->mActivity:Landroid/app/Activity;

    .line 76
    const-string v0, "sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/motion/TiltSensitivityPreference;

    iput-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mSensitivity:Lcom/android/settings/motion/TiltSensitivityPreference;

    .line 77
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/TiltSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mTutorial:Landroid/preference/Preference;

    .line 78
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->stopAnimation()V

    .line 123
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->showGuideDialog()V

    .line 153
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateCheckedUI()V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->updateAnimation()V

    .line 117
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    iput-object v6, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 195
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 196
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    iput-object v6, p0, Lcom/android/settings/motion/TiltSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion/TiltSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 201
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040043

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 202
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f080027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 203
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f080095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 205
    const v4, 0x7f0b07e8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 207
    const v4, 0x7f0b07d0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 209
    const v4, 0x7f0b07ee

    new-instance v5, Lcom/android/settings/motion/TiltSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/TiltSettings$4;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0173

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 219
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 220
    iget-object v4, p0, Lcom/android/settings/motion/TiltSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/TiltSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/TiltSettings$5;-><init>(Lcom/android/settings/motion/TiltSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/motion/TiltSettings;->startAnimation()V

    .line 226
    return-void
.end method
