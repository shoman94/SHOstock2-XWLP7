.class public Lcom/android/email/widget/EmailWidget;
.super Ljava/lang/Object;
.source "EmailWidget.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/EmailWidget$WidgetUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMAND_URI:Landroid/net/Uri;

.field private static final COMMAND_URI_SET_FAVORITE:Landroid/net/Uri;

.field private static final COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

.field private static final COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

.field private static favorite_toggle:I

.field private static sConfigureText:Ljava/lang/String;

.field private static sDateFontSize:I

.field private static sDateTextColor:I

.field private static sDefaultHeight:I

.field private static sDefaultLandGrid:I

.field private static sDefaultPortGrid:I

.field private static sDefaultTextColor:I

.field private static sDefaultWidth:I

.field private static sFavorite:Landroid/graphics/Bitmap;

.field private static sFromTextColor:I

.field private static sLightTextColor:I

.field private static sNotFavorite:Landroid/graphics/Bitmap;

.field private static sReadTextColor:I

.field private static sSenderFontSize:I

.field private static sSubjectFontSize:I

.field private static sSubjectSnippetDivider:Ljava/lang/String;

.field private static sSubjectTextColor:I


# instance fields
.field private mAccountCount:I

.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

.field private final mLoader:Lcom/android/email/widget/EmailWidgetLoader;

.field private mPreviewLineSize:I

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private mTopLineMode:I

.field private final mWidgetId:I

.field private final mWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

.field mWidgetView:Lcom/android/email/widget/WidgetView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "widget://command"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    .line 101
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "switch_list_view"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    .line 106
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "view_message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    .line 111
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "favorite_toggle"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SET_FAVORITE:Landroid/net/Uri;

    .line 141
    const/4 v0, 0x0

    sput v0, Lcom/android/email/widget/EmailWidget;->favorite_toggle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "_widgetId"

    .prologue
    const v6, 0x7f0b0022

    const v5, 0x7f08018c

    const/4 v4, 0x0

    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v4, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    .line 173
    iput v4, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    .line 183
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountCount:I

    .line 186
    sget-object v1, Lcom/android/email/widget/WidgetView;->UNINITIALIZED_VIEW:Lcom/android/email/widget/WidgetView;

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    .line 190
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "EmailWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating EmailWidget with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    .line 194
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 196
    iput p2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    .line 197
    new-instance v1, Lcom/android/email/widget/EmailWidgetLoader;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/email/widget/EmailWidgetLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    .line 198
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v1, v4, p0}, Lcom/android/email/widget/EmailWidgetLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 199
    sget-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    .line 203
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    .line 204
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    .line 205
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    .line 206
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultWidth:I

    .line 207
    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultHeight:I

    .line 208
    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultLandGrid:I

    .line 209
    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultPortGrid:I

    .line 211
    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    .line 212
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    .line 213
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sConfigureText:Ljava/lang/String;

    .line 216
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sFromTextColor:I

    .line 217
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSubjectTextColor:I

    .line 218
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDateTextColor:I

    .line 219
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    .line 220
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    .line 221
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sConfigureText:Ljava/lang/String;

    .line 222
    const v1, 0x7f0200ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sFavorite:Landroid/graphics/Bitmap;

    .line 223
    const v1, 0x7f0200ad

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sNotFavorite:Landroid/graphics/Bitmap;

    .line 225
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/widget/EmailWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/widget/EmailWidget;Lcom/android/email/widget/WidgetView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/email/widget/EmailWidget;->loadView(Lcom/android/email/widget/WidgetView;)V

    return-void
.end method

.method private addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "size"
    .parameter "color"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 660
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 661
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 663
    if-eqz p3, :cond_0

    .line 664
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 667
    :cond_0
    return-object v0
.end method

.method private changePreviewLineSize_preference()V
    .locals 3

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 712
    .local v1, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v0

    .line 713
    .local v0, previewLineSize:I
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    if-eq v2, v0, :cond_0

    .line 714
    iput v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    .line 716
    :cond_0
    return-void
.end method

.method private changeTop_preference()V
    .locals 3

    .prologue
    .line 703
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 704
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    .line 705
    .local v1, topLineMode:I
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    if-eq v2, v1, :cond_0

    .line 706
    iput v1, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    .line 708
    :cond_0
    return-void
.end method

.method private isCursorValid()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadView(Lcom/android/email/widget/WidgetView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0, p1}, Lcom/android/email/widget/EmailWidgetLoader;->load(Lcom/android/email/widget/WidgetView;)V

    .line 282
    return-void
.end method

.method private static openMessage(Landroid/content/Context;JJJ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    .line 400
    move-wide v3, p3

    .line 401
    .local v3, mailboxId2:J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 402
    .local v8, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v8, :cond_0

    .line 403
    const-string v0, "EmailWidget"

    const-string v1, "before calling messageView, mailboxID is null so it discard!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-void

    .line 406
    :cond_0
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 407
    const-wide/16 v3, -0x2

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p5

    .line 409
    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v7

    .line 410
    .local v7, i:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static processIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 340
    const-string v0, "EmailWidget"

    const-string v1, "processIntent is called in Email!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 342
    .local v8, data:Landroid/net/Uri;
    if-nez v8, :cond_0

    .line 343
    const-string v0, "EmailWidget"

    const-string v1, "data in intent is null return false without call Email!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    .line 346
    :cond_0
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    .line 349
    .local v12, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 350
    const-string v0, "EmailWidget"

    const-string v1, "illegalArgumentException happend without call Email!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 353
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 356
    .local v7, command:Ljava/lang/String;
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIntent : command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 359
    .local v5, arg1:J
    const-string v0, "view_message"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    const-string v0, "EmailWidget"

    const-string v1, "called openMessage in processIntent!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/widget/EmailWidget;->openMessage(Landroid/content/Context;JJJ)V

    .line 394
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    :cond_3
    const-string v0, "switch_list_view"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v13

    .line 367
    .local v13, widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v13, :cond_2

    .line 368
    const-string v0, "EmailWidget"

    const-string v1, "called switchView in processIntent!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v13}, Lcom/android/email/widget/EmailWidget;->switchView()V

    goto :goto_1

    .line 390
    .end local v5           #arg1:J
    .end local v13           #widget:Lcom/android/email/widget/EmailWidget;
    :catch_0
    move-exception v9

    .line 392
    .local v9, e:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 371
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #arg1:J
    :cond_4
    const-string v0, "favorite_toggle"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    const-string v0, "EmailWidget"

    const-string v1, "called change favorite in processIntent!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x1

    new-array v11, v0, [J

    .line 374
    .local v11, messageIds:[J
    const/4 v0, 0x0

    aput-wide v5, v11, v0

    .line 375
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v10

    .line 376
    .local v10, mController:Lcom/android/email/Controller;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v10, v11, v1, v2, v3}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    .line 380
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->setFavoriteFromWidget(Ljava/lang/Boolean;)V

    .line 381
    const/4 v0, 0x1

    sput v0, Lcom/android/email/widget/EmailWidget;->favorite_toggle:I

    .line 383
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v13

    .line 385
    .restart local v13       #widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v13, :cond_2

    .line 386
    invoke-virtual {v13}, Lcom/android/email/widget/EmailWidget;->validateAndUpdate()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 376
    .end local v13           #widget:Lcom/android/email/widget/EmailWidget;
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2
.end method

.method private setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 4
    .parameter "views"
    .parameter "buttonId"
    .parameter "intent"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 312
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 313
    return-void
.end method

.method private setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    int-to-long v1, v1

    invoke-static {p3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.android.email/widget_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 298
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 299
    return-void
.end method

.method private setCommandIntentRefresh(Landroid/widget/RemoteViews;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x800

    const/4 v5, 0x0

    .line 575
    .line 576
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v0}, Lcom/android/email/widget/WidgetView;->isPerAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v0}, Lcom/android/email/widget/WidgetView;->getAccountId()J

    move-result-wide v0

    .line 578
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/email/service/MailService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    const-string v3, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_ONE_ACCOUNT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v3, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 581
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 583
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 593
    :goto_0
    return-void

    .line 585
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_MULTI_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 589
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private varargs setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V
    .locals 8
    .parameter "views"
    .parameter "viewId"
    .parameter "baseUri"
    .parameter "args"

    .prologue
    .line 325
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 327
    .local v2, builder:Landroid/net/Uri$Builder;
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 328
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    .end local v0           #arg:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "com.android.email/widget_data"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 332
    return-void
.end method

.method private setNoEmailItemBG(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "views"
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 595
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 597
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, nameBase:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "X"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/android/email/widget/EmailWidget;->sDefaultLandGrid:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 599
    .local v6, spanX:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Y"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/android/email/widget/EmailWidget;->sDefaultPortGrid:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 607
    .local v7, spanY:I
    const-string v8, "EmailWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[WIDGET_RESIZE] grid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " * "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v8, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->orientation:I

    .line 610
    .local v0, currentOrientation:I
    const v1, 0x7f02021d

    .line 611
    .local v1, drawableId:I
    const/4 v8, 0x2

    if-gt v8, v6, :cond_0

    const/4 v8, 0x4

    if-gt v6, v8, :cond_0

    const/4 v8, 0x2

    if-gt v8, v7, :cond_0

    const/4 v8, 0x4

    if-gt v7, v8, :cond_0

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "email_noimage_bg_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, fileName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 614
    .local v5, res:Landroid/content/res/Resources;
    const-string v8, "drawable"

    iget-object v9, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 616
    .end local v2           #fileName:Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    const v8, 0x7f10028a

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 617
    const v8, 0x7f10028b

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 618
    const v8, 0x7f10028c

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 619
    const v8, 0x7f10028d

    const/16 v9, 0x8

    invoke-virtual {p1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 620
    const v8, 0x7f10028e

    const/16 v9, 0x8

    invoke-virtual {p1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 621
    const v8, 0x7f10028f

    const/16 v9, 0x8

    invoke-virtual {p1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 622
    const v8, 0x7f100289

    const-string v9, "setBackgroundResource"

    invoke-virtual {p1, v8, v9, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 623
    return-void
.end method

.method private setupTitleAndCount(Landroid/widget/RemoteViews;)V
    .locals 13
    .parameter "views"

    .prologue
    const v12, 0x7f10029c

    const v11, 0x7f100284

    const/4 v10, 0x0

    const v9, 0x7f100286

    const/16 v8, 0x8

    .line 417
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 418
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, nameBase:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/email/widget/EmailWidget;->sDefaultLandGrid:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 424
    .local v4, spanX:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 425
    const-string v5, "EmailWidget"

    const-string v6, "spanX == 2 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p1, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 427
    invoke-virtual {p1, v12, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 428
    const v5, 0x7f10029d

    invoke-virtual {p1, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 429
    const v5, 0x7f100299

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 430
    const v5, 0x7f10029a

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 431
    const v5, 0x7f10029b

    invoke-virtual {p1, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 432
    const v5, 0x7f10029d

    iget-object v6, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    iget-object v7, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/email/widget/WidgetView;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 451
    :goto_0
    const/4 v0, 0x0

    .line 452
    .local v0, count_int:I
    const-string v1, ""

    .line 456
    .local v1, count_unread:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getCount()I

    move-result v5

    if-lez v5, :cond_8

    .line 457
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getMessageCount()I

    move-result v0

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    const v5, 0x7f10029f

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 474
    const v5, 0x7f1002a0

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 475
    const v5, 0x7f1002a1

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 476
    const v5, 0x7f1002a2

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 477
    const v5, 0x7f1002a3

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 479
    if-nez v0, :cond_3

    .line 480
    const-string v1, ""

    .line 481
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p1, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 499
    :cond_0
    :goto_1
    invoke-virtual {p1, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 509
    :goto_2
    return-void

    .line 433
    .end local v0           #count_int:I
    .end local v1           #count_unread:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 434
    invoke-virtual {p1, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 435
    invoke-virtual {p1, v12, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 436
    const v5, 0x7f10029d

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 437
    const v5, 0x7f100299

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 438
    const v5, 0x7f10029a

    invoke-virtual {p1, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 439
    const v5, 0x7f10029b

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 440
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    iget-object v6, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/email/widget/WidgetView;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p1, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 443
    invoke-virtual {p1, v12, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 444
    const v5, 0x7f10029d

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 445
    const v5, 0x7f100299

    invoke-virtual {p1, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 446
    const v5, 0x7f10029a

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 447
    const v5, 0x7f10029b

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 448
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    iget-object v6, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/email/widget/WidgetView;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 483
    .restart local v0       #count_int:I
    .restart local v1       #count_unread:Ljava/lang/String;
    :cond_3
    const/16 v5, 0xa

    if-ge v0, v5, :cond_4

    .line 484
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 485
    const v5, 0x7f10029f

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 486
    :cond_4
    const/16 v5, 0x64

    if-ge v0, v5, :cond_5

    .line 487
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 488
    const v5, 0x7f1002a0

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 489
    :cond_5
    const/16 v5, 0x3e8

    if-ge v0, v5, :cond_6

    .line 490
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 491
    const v5, 0x7f1002a1

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 492
    :cond_6
    const/16 v5, 0x2710

    if-ge v0, v5, :cond_7

    .line 493
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 494
    const v5, 0x7f1002a2

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 495
    :cond_7
    const v5, 0x186a0

    if-ge v0, v5, :cond_0

    .line 496
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 497
    const v5, 0x7f1002a3

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 501
    :cond_8
    const v5, 0x7f10029f

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 502
    const v5, 0x7f1002a0

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 503
    const v5, 0x7f1002a1

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 504
    const v5, 0x7f1002a2

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 505
    const v5, 0x7f1002a3

    invoke-virtual {p1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 506
    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 507
    invoke-virtual {p1, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2
.end method

.method public static storeSizeInformation(Landroid/content/Context;III)Z
    .locals 11
    .parameter "c"
    .parameter "widgetId"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 626
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 627
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 628
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "%d"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, nameBase:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 630
    .local v2, oldX:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 631
    .local v3, oldY:I
    if-ne v2, p2, :cond_0

    if-eq v3, p3, :cond_1

    .line 632
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "X"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 633
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Y"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v6

    .line 637
    :cond_1
    return v5
.end method

.method private updateHeader()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f1002a6

    const/16 v6, 0x8

    const/4 v5, 0x0

    const v4, 0x7f100288

    .line 516
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWidget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    const-string v0, "appWidgetId"

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    invoke-virtual {v1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 523
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 524
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 525
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400a6

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 528
    const v2, 0x7f100289

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 529
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/email/widget/EmailWidget;->setNoEmailItemBG(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Intent;)V

    .line 530
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 531
    const v2, 0x7f100289

    invoke-direct {p0, v0, v2, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 532
    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 533
    const v1, 0x7f100028

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 561
    :goto_0
    const v1, 0x7f1002a5

    invoke-direct {p0, v0, v1}, Lcom/android/email/widget/EmailWidget;->setCommandIntentRefresh(Landroid/widget/RemoteViews;I)V

    .line 564
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 567
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 570
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 572
    return-void

    .line 536
    :cond_2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400ac

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 537
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v2, v4, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 538
    invoke-direct {p0, v0}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 540
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getCount()I

    move-result v1

    if-ge v1, v8, :cond_4

    .line 541
    :cond_3
    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 543
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 544
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v2}, Lcom/android/email/widget/WidgetView;->getAccountId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 546
    invoke-direct {p0, v0, v7, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 554
    :goto_1
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 555
    const v2, 0x7f100287

    invoke-direct {p0, v0, v2, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 556
    const v1, 0x7f100299

    sget-object v2, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/widget/EmailWidget;->setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V

    .line 557
    const v1, 0x7f10029a

    sget-object v2, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/widget/EmailWidget;->setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V

    .line 558
    const v1, 0x7f10029b

    sget-object v2, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/widget/EmailWidget;->setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V

    goto :goto_0

    .line 548
    :cond_4
    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 550
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    const/4 v0, 0x0

    .line 879
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 885
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 892
    iget v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400a8

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 904
    :goto_0
    const v1, 0x7f100297

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f080190

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 905
    return-object v0

    .line 896
    :cond_0
    iget v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 897
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400a9

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 899
    :cond_1
    iget v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 900
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400aa

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 902
    :cond_2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400ab

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 722
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->changePreviewLineSize_preference()V

    .line 723
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->changeTop_preference()V

    .line 726
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0, p1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 871
    :goto_0
    return-object v0

    .line 730
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0400a7

    invoke-direct {v0, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 732
    const v2, 0x7f100296

    const-string v4, "setMaxLines"

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 733
    const v2, 0x7f100296

    const-string v4, "setMinLines"

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 736
    :try_start_0
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    if-eq v2, v3, :cond_8

    move v6, v3

    .line 738
    :goto_1
    const v2, 0x7f020337

    .line 739
    if-eqz v6, :cond_2

    .line 740
    const v2, 0x7f02033a

    .line 742
    :cond_2
    const v4, 0x7f100290

    const-string v5, "setBackgroundResource"

    invoke-virtual {v0, v4, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 747
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    if-nez v2, :cond_9

    .line 748
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 749
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    :goto_2
    if-nez v4, :cond_3

    .line 766
    const-string v4, ""

    .line 768
    :cond_3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 769
    if-eqz v6, :cond_a

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 774
    sget v5, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    if-eqz v6, :cond_b

    sget v4, Lcom/android/email/widget/EmailWidget;->sFromTextColor:I

    :goto_4
    invoke-direct {p0, v7, v5, v4}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 776
    const v5, 0x7f100294

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 778
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getLong(I)J

    move-result-wide v4

    .line 780
    iget-object v8, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 781
    if-nez v4, :cond_18

    .line 782
    const-string v4, ""

    move-object v5, v4

    .line 785
    :goto_5
    sget v8, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    if-eqz v6, :cond_c

    sget v4, Lcom/android/email/widget/EmailWidget;->sDateTextColor:I

    :goto_6
    invoke-direct {p0, v5, v8, v4}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 787
    const v5, 0x7f100293

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 791
    if-nez v2, :cond_17

    .line 792
    const-string v2, ""

    move-object v4, v2

    .line 796
    :goto_7
    sget v5, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    if-eqz v6, :cond_d

    sget v2, Lcom/android/email/widget/EmailWidget;->sSubjectTextColor:I

    :goto_8
    invoke-direct {p0, v4, v5, v2}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 798
    const v4, 0x7f100292

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 800
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    if-eqz v2, :cond_4

    .line 801
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 802
    if-nez v2, :cond_16

    .line 803
    const-string v2, ""

    move-object v4, v2

    .line 805
    :goto_9
    sget v5, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    if-eqz v6, :cond_e

    sget v2, Lcom/android/email/widget/EmailWidget;->sDateTextColor:I

    :goto_a
    invoke-direct {p0, v4, v5, v2}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 807
    const v4, 0x7f100296

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 810
    :cond_4
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    .line 811
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 815
    :cond_5
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    .line 816
    :goto_b
    const v4, 0x7f100291

    if-eqz v2, :cond_10

    move v2, v1

    :goto_c
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 819
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    .line 820
    :goto_d
    const v4, 0x7f100295

    if-eqz v2, :cond_12

    sget-object v1, Lcom/android/email/widget/EmailWidget;->sFavorite:Landroid/graphics/Bitmap;

    :goto_e
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 822
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v1

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v1}, Lcom/android/email/widget/WidgetView;->isPerAccount()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 823
    :cond_6
    const v1, 0x7f100158

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 845
    :goto_f
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 846
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 848
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v1

    if-lt v1, v3, :cond_7

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v1}, Lcom/android/email/widget/WidgetView;->isPerAccount()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 849
    :cond_7
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 853
    :goto_10
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 854
    iget v3, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 857
    const v8, 0x7f100290

    sget-object v9, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V

    .line 859
    const v1, 0x7f100295

    sget-object v8, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SET_FAVORITE:Landroid/net/Uri;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v2, v9, v4

    const/4 v2, 0x2

    aput-object v5, v9, v2

    const/4 v2, 0x3

    aput-object v3, v9, v2

    const/4 v2, 0x4

    aput-object v6, v9, v2

    invoke-direct {p0, v0, v1, v8, v9}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V

    .line 862
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    const-string v1, "EmailWidget"

    const-string v2, "^^^^^^^^^^^^^^^^^^^^^^^^Exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 871
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v6, v1

    .line 736
    goto/16 :goto_1

    .line 756
    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 757
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 769
    :cond_a
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_3

    .line 774
    :cond_b
    sget v4, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_4

    .line 785
    :cond_c
    sget v4, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_6

    .line 796
    :cond_d
    sget v2, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_8

    .line 805
    :cond_e
    sget v2, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_a

    :cond_f
    move v2, v1

    .line 815
    goto/16 :goto_b

    .line 816
    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_c

    :cond_11
    move v2, v1

    .line 819
    goto/16 :goto_d

    .line 820
    :cond_12
    sget-object v1, Lcom/android/email/widget/EmailWidget;->sNotFavorite:Landroid/graphics/Bitmap;

    goto/16 :goto_e

    .line 825
    :cond_13
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getLong(I)J

    move-result-wide v4

    .line 827
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 831
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v1, v4, v5}, Lcom/android/email/ResourceHelper;->getAccountColorId(J)I

    move-result v1

    .line 832
    const/4 v4, -0x1

    if-eq v1, v4, :cond_14

    .line 834
    const v4, 0x7f100158

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 835
    const v4, 0x7f100158

    const-string v5, "setBackgroundResource"

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_f

    .line 840
    :cond_14
    const v1, 0x7f100158

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_f

    .line 851
    :cond_15
    const-wide/high16 v8, 0x1000

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_10

    :cond_16
    move-object v4, v2

    goto/16 :goto_9

    :cond_17
    move-object v4, v2

    goto/16 :goto_7

    :cond_18
    move-object v5, v4

    goto/16 :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 916
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 940
    const-string v0, "EmailWidget"

    const-string v1, "onCreate email widget "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 921
    return-void
.end method

.method public onDeleted()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 927
    :cond_0
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetManager;->remove(I)V

    .line 928
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 935
    :cond_0
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetManager;->remove(I)V

    .line 936
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 246
    const-string v1, "EmailWidget"

    const-string v2, "there is no cursor!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local p2
    :goto_0
    return-void

    .line 255
    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    .end local p2
    iput-object p2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    .line 256
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader;->getLoadingWidgetView()Lcom/android/email/widget/WidgetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    .line 257
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->updateHeader()V

    .line 258
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 259
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400ac

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 260
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 261
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 262
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    const v3, 0x7f100288

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 265
    .end local v0           #views:Landroid/widget/RemoteViews;
    :cond_1
    const-string v1, "EmailWidget"

    const-string v2, "onLoadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/widget/EmailWidget;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->switchView()V

    .line 233
    return-void
.end method

.method switchView()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 962
    new-instance v0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;-><init>(Lcom/android/email/widget/EmailWidget;Z)V

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 963
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 964
    return-void
.end method

.method validateAndUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 948
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 950
    new-instance v0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;-><init>(Lcom/android/email/widget/EmailWidget;Z)V

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 951
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 953
    return-void
.end method
