.class public final Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$IRMTemplateColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IRMTemplate"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public mIRMAccountKey:I

.field public mIRMTemplateDescription:Ljava/lang/String;

.field public mIRMTemplateId:Ljava/lang/String;

.field public mIRMTemplateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IRMTemplate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->CONTENT_URI:Landroid/net/Uri;

    .line 2762
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IRMTemplateName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IRMTemplateDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AccountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2769
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 2770
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 2771
    return-void
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 2815
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 2816
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMAccountKey:I

    .line 2817
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateDescription:Ljava/lang/String;

    .line 2818
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateId:Ljava/lang/String;

    .line 2819
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateName:Ljava/lang/String;

    .line 2820
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 2778
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2779
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "AccountKey"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMAccountKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2780
    const-string v1, "IRMTemplateDescription"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    const-string v1, "IRMTemplateId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    const-string v1, "IRMTemplateName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->mIRMTemplateName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    return-object v0
.end method
