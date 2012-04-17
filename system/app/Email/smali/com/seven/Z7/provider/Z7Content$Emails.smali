.class public final Lcom/seven/Z7/provider/Z7Content$Emails;
.super Ljava/lang/Object;
.source "Z7Content.java"

# interfaces
.implements Lcom/seven/Z7/provider/Z7Content$EmailColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Z7Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Emails"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_UNIFIED_INBOX:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 775
    const-string v0, "content://com.seven.provider.email/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Z7Content$Emails;->CONTENT_URI:Landroid/net/Uri;

    .line 781
    const-string v0, "content://com.seven.provider.email/emails/unified"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Z7Content$Emails;->CONTENT_URI_UNIFIED_INBOX:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 769
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 770
    return-void
.end method
