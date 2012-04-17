.class public Lcom/android/mms/ui/SmsViewerActivity;
.super Landroid/app/Activity;
.source "SmsViewerActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;
    }
.end annotation


# instance fields
.field private MY_DATA_CHECK_CODE:I

.field private bLongPress:Z

.field private bMultiTouch:Z

.field private endX:I

.field private mAddContactIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mDate:J

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mSmsBodyView:Landroid/webkit/WebView;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private messageBodyInfo:Ljava/lang/String;

.field private msgId:J

.field private receivedTimeInfo:Ljava/lang/String;

.field private senderInfo:Ljava/lang/String;

.field private startX:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 109
    iput v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->MY_DATA_CHECK_CODE:I

    .line 117
    iput-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    .line 127
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewerActivity$1;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 270
    return-void
.end method

.method private LaunchTTS()V
    .locals 7

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_0

    .line 445
    const-string v1, "VOL"

    const-string v2, "vol up, mTts NULL"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->MY_DATA_CHECK_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 462
    .end local v0           #checkIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 453
    const-string v1, "VOL"

    const-string v2, "vol up, mTts stop"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->senderInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 459
    const-string v1, "VOL"

    const-string v2, "vol up, mTts speak"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createTtsInstallDialog()V
    .locals 5

    .prologue
    .line 288
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Lcom/android/mms/ui/SmsViewerActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    .local v0, installTts:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 293
    .local v1, installTtsDialog:Landroid/app/AlertDialog;
    const v2, 0x7f09016c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 294
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090110

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SmsViewerActivity$2;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 305
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SmsViewerActivity$3;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 313
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 314
    return-void
.end method

.method private drawMainTextView()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 345
    const v0, 0x7f090015

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v5, v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, date:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 350
    .local v7, msgBody_spannable:Landroid/text/SpannableStringBuilder;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 354
    const/16 v0, 0xf

    invoke-static {v7, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 358
    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "GATE"

    const-string v3, "<GATE-M>SMSTEXT:</GATE-M>"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 367
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 369
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 370
    .local v8, startOffset:I
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 372
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v3}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v7, v0, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 377
    .end local v8           #startOffset:I
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    const-string v0, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_3
    invoke-static {v7}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "<p>"

    const-string v4, "<html><body text=white link=\"#00AEEF\"><div style=\"word-wrap:break-word; FONT-SIZE:16px; line-height:1.3em\"><p>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, mHtmlText:Ljava/lang/String;
    const-string v0, "\n<div align=\"right\"  ><p>"

    const-string v3, "</div>\n<div align=\"right\"><p style=\"FONT-SIZE:13px\">"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    const-string v0, "</body></html>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 405
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 406
    return-void
.end method

.method private drawTitle()V
    .locals 6

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v5, "sms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 413
    return-void
.end method

.method private flickMessage(II)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 514
    .line 516
    const/4 v8, 0x0

    .line 517
    const/4 v7, 0x0

    .line 524
    sub-int v0, p1, p2

    .line 526
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x96

    if-le v1, v2, :cond_2

    .line 527
    if-gez v0, :cond_1

    .line 528
    const/4 v0, 0x1

    move v6, v0

    .line 537
    :goto_0
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 539
    if-nez v1, :cond_3

    .line 639
    :cond_0
    :goto_1
    return-void

    .line 530
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 533
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    goto :goto_1

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 544
    if-eqz v9, :cond_0

    .line 547
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 549
    const/4 v0, 0x1

    if-eq v10, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 550
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 555
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v7

    .line 556
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    if-ge v0, v10, :cond_6

    .line 557
    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 568
    :cond_6
    :goto_3
    if-eqz v6, :cond_9

    .line 569
    if-nez v0, :cond_8

    .line 570
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 571
    add-int/lit8 v0, v10, -0x1

    .line 576
    :goto_4
    const v2, 0x7f040004

    .line 577
    const v1, 0x7f040005

    move v12, v1

    move v1, v2

    move v2, v0

    move v0, v12

    .line 590
    :goto_5
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 591
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move v7, v8

    move-object v12, v5

    move v5, v2

    move-wide v13, v3

    move-wide v2, v13

    move-object v4, v12

    .line 593
    :goto_6
    const-string v8, "mms"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 594
    const/16 v8, 0xf

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v11, 0x82

    if-ne v8, v11, :cond_e

    .line 595
    if-eqz v6, :cond_c

    .line 596
    if-nez v5, :cond_b

    .line 597
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 598
    add-int/lit8 v5, v10, -0x1

    .line 612
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 613
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 614
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_6

    .line 560
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 573
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 579
    :cond_9
    add-int/lit8 v1, v10, -0x1

    if-ne v0, v1, :cond_a

    .line 580
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 581
    const/4 v0, 0x0

    .line 586
    :goto_8
    const v2, 0x7f040002

    .line 587
    const v1, 0x7f040003

    move v12, v1

    move v1, v2

    move v2, v0

    move v0, v12

    goto :goto_5

    .line 583
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 600
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 601
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 604
    :cond_c
    add-int/lit8 v2, v10, -0x1

    if-ne v5, v2, :cond_d

    .line 605
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 606
    const/4 v5, 0x0

    goto :goto_7

    .line 608
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 609
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 619
    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 621
    add-int/lit8 v5, v10, -0x1

    if-eq v7, v5, :cond_0

    .line 624
    const/4 v5, 0x0

    .line 625
    const-string v6, "sms"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 626
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    const-string v5, "msgId"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 628
    const-string v2, "thread_id"

    iget-wide v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v2, v4

    .line 635
    :goto_9
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead()V

    .line 636
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 637
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 638
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 629
    :cond_f
    const-string v6, "mms"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 630
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 631
    const-string v5, "msgId"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 632
    const-string v2, "thread_id"

    iget-wide v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v2, v4

    goto :goto_9

    :cond_10
    move-object v2, v5

    goto :goto_9

    :cond_11
    move v0, v7

    goto/16 :goto_3
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 8
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 665
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 668
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 698
    if-eqz v3, :cond_0

    .line 699
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_0
    :goto_0
    return-object v2

    .line 671
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 672
    const/4 v1, 0x4

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    .line 675
    new-instance v7, Lcom/android/mms/ui/SmsViewerActivity$5;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v7, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$5;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    .line 685
    .local v7, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 686
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v6, item:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_4

    .line 691
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 698
    :goto_1
    if-eqz v3, :cond_2

    .line 699
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 702
    goto :goto_0

    .line 698
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v7           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v3, :cond_3

    .line 699
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 698
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v6       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v6

    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    .line 694
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v6       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v6

    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v6       #item:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object v0, v6

    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 330
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->setContentView(I)V

    .line 332
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 333
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 339
    :goto_0
    const v1, 0x7f0800ac

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    .line 340
    return-void

    .line 336
    :cond_0
    const v1, 0x7f0800c8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 318
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    .line 319
    const-string v0, "thread_id"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    .line 320
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    .line 322
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 323
    .local v8, messageUri:Landroid/net/Uri;
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v2, "sms"

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 325
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v6, "sms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 326
    return-void
.end method

.method private markAsRead()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 647
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 651
    .local v0, msgUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 652
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v2, "seen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewerActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewerActivity$4;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 195
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 213
    and-int/lit16 v3, v0, 0xff

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 214
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 221
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 197
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v3, :cond_0

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v1           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    .line 209
    iget v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    iget v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/SmsViewerActivity;->flickMessage(II)V

    goto :goto_0

    .line 216
    :cond_1
    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 225
    iget v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->MY_DATA_CHECK_CODE:I

    if-ne p1, v2, :cond_2

    .line 226
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 228
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v2, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->createTtsInstallDialog()V

    goto :goto_0

    .line 235
    :cond_2
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_3
    if-eqz v0, :cond_0

    .line 249
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 250
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->requestWindowFeature(I)Z

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09016f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->senderInfo:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090170

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->receivedTimeInfo:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090171

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->messageBodyInfo:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initialize()V

    .line 148
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initResourceRefs()V

    .line 149
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 189
    :cond_0
    return-void
.end method

.method public onInit(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->senderInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 266
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 418
    packed-switch p1, :pswitch_data_0

    .line 439
    const-string v0, "VOL"

    const-string v1, "vol up, SUPER!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 423
    :pswitch_0
    const-string v1, "VOL"

    const-string v2, "vol up,"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    .line 427
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->LaunchTTS()V

    .line 428
    const-string v1, "VOL"

    const-string v2, "vol up, LaunchTTS()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 434
    const-string v1, "VOL"

    const-string v2, "vol up, startTracking"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 467
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    if-eqz v2, :cond_0

    .line 469
    iput-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    .line 487
    :goto_0
    return v1

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 475
    .local v0, am:Landroid/media/AudioManager;
    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 480
    iput-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    .line 483
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 484
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead()V

    .line 487
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 502
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 495
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, messageUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    .line 169
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 180
    :cond_0
    return-void
.end method
