.class public final Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$RecipientInformationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecipientInformationCache"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public riAccountKey:J

.field public riAlias:Ljava/lang/String;

.field public riEmailAddress:Ljava/lang/String;

.field public riFileAs:Ljava/lang/String;

.field public riServerId:Ljava/lang/String;

.field public riWeightedRank:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recipientInformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    .line 3342
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3372
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 3373
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 3374
    return-void
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 3400
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 3379
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3380
    .local v0, cValues:Landroid/content/ContentValues;
    const-string v1, "server_id"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    const-string v1, "accountkey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3382
    const-string v1, "email_address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    const-string v1, "fileas"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riFileAs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    const-string v1, "alias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    const-string v1, "weightedrank"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riWeightedRank:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    return-object v0
.end method
