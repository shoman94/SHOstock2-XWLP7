.class public Lcom/android/mms/ui/TranslateActivity;
.super Landroid/app/Activity;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isMms:Z

.field private isSubject:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mButtons:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/Button;

.field public mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

.field private mDoneButton:Landroid/widget/Button;

.field private mFromButton:Landroid/widget/Button;

.field mFromDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mFromLanguageStrings:[Ljava/lang/String;

.field private mFromRecentCount:I

.field mFromRecentKeys:[Ljava/lang/String;

.field mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

.field private mInputText:Landroid/widget/EditText;

.field private final mInputTextEditorWatcher:Landroid/text/TextWatcher;

.field private mIsEditable:Z

.field private mIsSwitched:Z

.field mLanguageControl:Lcom/android/mms/util/LanguageControl;

.field private final mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOutputText:Landroid/widget/EditText;

.field private final mOutputTextEditorWatcher:Landroid/text/TextWatcher;

.field private mPasteButton:Landroid/widget/Button;

.field private mSearchImageButton:Landroid/widget/ImageButton;

.field private mSendButton:Landroid/widget/Button;

.field mSortedLanguageStrings:[Ljava/lang/String;

.field private mSubButtons:Landroid/widget/LinearLayout;

.field private mToButton:Landroid/widget/Button;

.field mToDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mToImageButton:Landroid/widget/ImageButton;

.field mToLanguageStrings:[Ljava/lang/String;

.field private mToRecentCount:I

.field mToRecentKeys:[Ljava/lang/String;

.field mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

.field mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

.field mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

.field recentLangSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 76
    iput-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 104
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    .line 122
    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 124
    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 778
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$4;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

    .line 851
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$5;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 887
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$6;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 922
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$7;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 937
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$8;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 960
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$9;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputTextEditorWatcher:Landroid/text/TextWatcher;

    .line 985
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$10;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputTextEditorWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->translate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/TranslateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/TranslateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/TranslateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/TranslateActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/TranslateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/TranslateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/TranslateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/TranslateActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/TranslateActivity;->setRecentLanguage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/TranslateActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TranslateActivity;->createAndShowErrorDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method private changeLayout(Z)V
    .locals 8
    .parameter "isSwitched"

    .prologue
    const v2, 0x7f030034

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 482
    if-eqz p1, :cond_2

    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 486
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v5, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 492
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    if-nez v0, :cond_1

    move v0, v5

    :goto_1
    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 506
    :goto_2
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 508
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 510
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v7, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_1
    move v0, v7

    .line 492
    goto :goto_1

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 498
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v5, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 503
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 504
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    if-nez v0, :cond_4

    move v0, v5

    :goto_4
    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_2

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v7, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_3

    :cond_4
    move v0, v7

    .line 504
    goto :goto_4
.end method

.method private closeDefine()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    return-void
.end method

.method private createAndShowErrorDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 761
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d5

    new-instance v2, Lcom/android/mms/ui/TranslateActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/TranslateActivity$3;-><init>(Lcom/android/mms/ui/TranslateActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    const-string v0, "Mms/TranslateActivity"

    const-string v1, "BadTokenException(activity is not running) - during createAndShowErrorDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createAndShowNetworkDialog()V
    .locals 4

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 725
    :cond_0
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901d7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090006

    new-instance v3, Lcom/android/mms/ui/TranslateActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/TranslateActivity$2;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901cd

    new-instance v3, Lcom/android/mms/ui/TranslateActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/TranslateActivity$1;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "Mms/TranslateActivity"

    const-string v2, "BadTokenException(activity is not running) - during createAndShowNetworkDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectPhoneLanguage(Z)V
    .locals 9
    .parameter "isFrom"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 550
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 551
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 552
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v4, 0x0

    .line 554
    .local v4, phoneLangCode:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 558
    if-eqz v1, :cond_0

    .line 559
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 562
    :cond_0
    :goto_0
    if-eqz v4, :cond_5

    .line 564
    :try_start_1
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_2

    .line 565
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v8, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v7, v4}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    .line 571
    :goto_1
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_4

    move v7, v6

    :goto_2
    invoke-direct {p0, v4, v7}, Lcom/android/mms/ui/TranslateActivity;->setRecentLanguage(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    :goto_3
    return-void

    .line 555
    :catch_0
    move-exception v2

    .line 556
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    if-eqz v1, :cond_0

    .line 559
    throw v1

    throw v7

    move-result-object v4

    goto :goto_0

    .line 558
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_1

    .line 559
    throw v1

    throw v6

    move-result-object v4

    :cond_1
    throw v5

    .line 568
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v8, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v7, v4}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 572
    :catch_1
    move-exception v3

    .line 573
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 574
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_3

    move v5, v6

    :cond_3
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 576
    :try_start_4
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901db

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 578
    :catch_2
    move-exception v2

    .line 579
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Mms/TranslateActivity"

    const-string v6, "cannot create toast popup"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :cond_4
    move v7, v5

    .line 571
    goto :goto_2

    .line 583
    :cond_5
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_6

    move v5, v6

    :cond_6
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 585
    :try_start_5
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901db

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 587
    :catch_3
    move-exception v2

    .line 588
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "Mms/TranslateActivity"

    const-string v6, "cannot create toast popup"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private detectTextLanguage()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 530
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isNetworkUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    .line 547
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_4

    .line 534
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 535
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/mms/util/LanguageControl;->detectLanguage(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 538
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_3

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 540
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 541
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/android/mms/util/LanguageControl;->detectLanguage(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_3

    .line 544
    :cond_6
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_7

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method private hasTranslateResult()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 613
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_2

    .line 614
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 614
    goto :goto_0

    .line 616
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private initDefine()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 142
    const-string v3, "recentLangSharedPreferences"

    invoke-virtual {p0, v3, v6}, Lcom/android/mms/ui/TranslateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    .line 143
    new-instance v3, Lcom/android/mms/util/TranslateLanguages;

    invoke-direct {v3, p0}, Lcom/android/mms/util/TranslateLanguages;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    .line 144
    new-instance v3, Lcom/android/mms/util/LanguageControl;

    invoke-direct {v3, p0}, Lcom/android/mms/util/LanguageControl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    .line 145
    new-instance v3, Lcom/android/mms/util/TranslateEngine;

    invoke-direct {v3, p0}, Lcom/android/mms/util/TranslateEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    .line 147
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, myArrayData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, l:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v4, v4, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 153
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v5, v5, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 155
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 156
    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v5

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.instanttranslator.action.COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/TranslateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 173
    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mInputTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCancelButton:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mDoneButton:Landroid/widget/Button;

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mButtons:Landroid/widget/LinearLayout;

    .line 208
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSubButtons:Landroid/widget/LinearLayout;

    .line 209
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 218
    if-eqz v1, :cond_1

    .line 219
    const-string v2, "fromString"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, fromString:Ljava/lang/String;
    const-string v2, "editable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    .line 221
    const-string v2, "isMms"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    .line 222
    const-string v2, "isSubject"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    .line 224
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 228
    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-eqz v2, :cond_4

    .line 229
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-direct {p0, v5, v2, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 230
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-boolean v5, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    invoke-direct {p0, v2, v5, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 231
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v5

    invoke-direct {p0, v2, v5, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 232
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 233
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 234
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 235
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-direct {p0, v5, v2, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 236
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v5

    invoke-direct {p0, v2, v5, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 255
    :goto_2
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 256
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_5

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 258
    .end local v0           #fromString:Ljava/lang/String;
    :cond_1
    return-void

    .restart local v0       #fromString:Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 229
    goto :goto_0

    :cond_3
    move v2, v4

    .line 235
    goto :goto_1

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 239
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 240
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v5

    invoke-direct {p0, v2, v5, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 242
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v4, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 243
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 247
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mButtons:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSubButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v3, v4

    .line 256
    goto :goto_3
.end method

.method private isNetworkUp()Z
    .locals 3

    .prologue
    .line 712
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TranslateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 713
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 715
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 716
    const/4 v2, 0x0

    .line 717
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    goto :goto_0
.end method

.method private isTranslatable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 594
    iget-boolean v1, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 165
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    .line 166
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->setAdapterWithRecent(Z)V

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->setAdapterWithRecent(Z)V

    .line 170
    return-void
.end method

.method private setAdapterWithRecent(Z)V
    .locals 9
    .parameter "isFrom"

    .prologue
    const v2, 0x7f030034

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 346
    if-eqz p1, :cond_5

    .line 348
    iput v8, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firstFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 353
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "secondFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 361
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 366
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "thirdFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "thirdFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 369
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 374
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v0, v0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v0, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    if-ge v7, v0, :cond_4

    .line 378
    const-string v0, "EMPTY"

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v1, v1, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v1, v7

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 377
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 355
    .end local v7           #i:I
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v8

    goto/16 :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v5

    goto :goto_1

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v6

    goto :goto_2

    .line 384
    .restart local v7       #i:I
    :cond_4
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 425
    :goto_4
    return-void

    .line 388
    .end local v7           #i:I
    :cond_5
    iput v8, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firstToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 393
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 398
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "secondToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 401
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 406
    :goto_6
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "thirdToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "thirdToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 409
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 414
    :goto_7
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v0, v0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v0, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_8
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    if-ge v7, v0, :cond_a

    .line 417
    const-string v0, "EMPTY"

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v1, v1, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v1, v7

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 416
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 395
    .end local v7           #i:I
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v8

    goto/16 :goto_5

    .line 403
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v5

    goto :goto_6

    .line 411
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v6

    goto :goto_7

    .line 422
    .restart local v7       #i:I
    :cond_a
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    goto/16 :goto_4
.end method

.method private setLanguageNull(ZZ)V
    .locals 5
    .parameter "forFromBtn"
    .parameter "handleBtnFocus"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0901ce

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 620
    if-eqz p1, :cond_1

    .line 621
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 622
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0, v4}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    .line 623
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0, v4}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V

    .line 628
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private setRecentLanguage(Ljava/lang/String;Z)V
    .locals 5
    .parameter "languageItemCode"
    .parameter "isFrom"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_4

    .line 431
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const-string v1, "secondFromRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    const-string v1, "thirdFromRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    :goto_0
    const-string v1, "firstFromRecentLang"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    invoke-direct {p0, p2}, Lcom/android/mms/ui/TranslateActivity;->setAdapterWithRecent(Z)V

    .line 479
    return-void

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    const-string v1, "thirdFromRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    :cond_2
    :goto_2
    const-string v1, "secondFromRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 444
    :cond_3
    const-string v1, "thirdFromRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 458
    const-string v1, "secondToRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    const-string v1, "thirdToRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    :goto_3
    const-string v1, "firstToRecentLang"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 461
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 463
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 465
    const-string v1, "thirdToRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    :cond_6
    :goto_4
    const-string v1, "secondToRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 467
    :cond_7
    const-string v1, "thirdToRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4
.end method

.method private setViewActivated(Landroid/view/View;ZZ)V
    .locals 6
    .parameter "view"
    .parameter "toActivate"
    .parameter "forFocusable"

    .prologue
    const/4 v5, 0x0

    const v1, 0x2050001

    const v4, 0x106003b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 635
    :cond_0
    if-eqz p3, :cond_4

    .line 636
    if-eqz p2, :cond_2

    .line 637
    const v0, 0x1080016

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 638
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 709
    :cond_1
    :goto_0
    return-void

    .restart local p1
    :cond_2
    move-object v0, p1

    .line 641
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-eqz v0, :cond_3

    .line 642
    const v0, 0x7f02013d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 645
    :goto_1
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 644
    .restart local p1
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 648
    :cond_4
    if-nez p2, :cond_1

    .line 651
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 652
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 653
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 657
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 661
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 662
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 663
    if-eqz p3, :cond_1

    .line 664
    if-nez p2, :cond_1

    .line 666
    const v0, 0x7f02015a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 667
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 668
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 669
    const/16 v0, 0xf

    const/16 v1, 0x2d

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 670
    check-cast p1, Landroid/widget/Button;

    .end local p1
    const v0, 0x7f070004

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 675
    .restart local p1
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 676
    if-eqz p2, :cond_9

    move-object v0, p1

    .line 677
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 679
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 680
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    move-object v0, p1

    .line 682
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 684
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 685
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 687
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 688
    if-nez p2, :cond_1

    .line 691
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 693
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    .line 695
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :cond_c
    if-eqz p3, :cond_e

    .line 697
    if-eqz p2, :cond_d

    .line 698
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 700
    :cond_d
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 702
    :cond_e
    if-eqz p2, :cond_f

    .line 703
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 705
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private translate()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isNetworkUp()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_3

    .line 518
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v4}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v5}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/mms/util/TranslateEngine;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v4}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v5}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/mms/util/TranslateEngine;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x7f0901cf

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 306
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "transString"

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v2, "isSend"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v2, "isSubject"

    iget-boolean v4, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v3, v1}, Lcom/android/mms/ui/TranslateActivity;->setResult(ILandroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    .line 343
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 308
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 314
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "transString"

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v2, "isSend"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string v2, "isSubject"

    iget-boolean v4, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v3, v1}, Lcom/android/mms/ui/TranslateActivity;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    goto :goto_1

    .line 318
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 324
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    goto :goto_1

    .line 326
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mFromDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_7
    move v2, v4

    goto :goto_3

    .line 331
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v6}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    :goto_4
    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_9
    move v3, v4

    goto :goto_4

    .line 336
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 337
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_b

    move v4, v5

    :cond_b
    iput-boolean v4, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    .line 338
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/TranslateActivity;->changeLayout(Z)V

    goto/16 :goto_1

    .line 339
    :cond_c
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->translate()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->setContentView(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->initDefine()V

    .line 134
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->preSetting()V

    .line 136
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->initResourceRefs()V

    .line 138
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->initialize()V

    .line 139
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->closeDefine()V

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 297
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/android/mms/util/LanguageControl;

    invoke-direct {v0, p0}, Lcom/android/mms/util/LanguageControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Lcom/android/mms/util/TranslateEngine;

    invoke-direct {v0, p0}, Lcom/android/mms/util/TranslateEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isNetworkUp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    .line 288
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    return-void

    .line 275
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V

    goto :goto_0

    .line 279
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V

    goto :goto_0

    .line 280
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_6

    .line 282
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V

    goto :goto_0

    .line 284
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 263
    return-void
.end method
