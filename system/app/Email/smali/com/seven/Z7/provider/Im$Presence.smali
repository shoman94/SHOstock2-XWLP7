.class public final Lcom/seven/Z7/provider/Im$Presence;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/seven/Z7/provider/Im$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation


# static fields
.field public static final BULK_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

.field public static final SEED_PRESENCE_BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 813
    const-string v0, "content://com.seven.provider.im/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Presence;->CONTENT_URI:Landroid/net/Uri;

    .line 818
    const-string v0, "content://com.seven.provider.im/presence/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Presence;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    .line 824
    const-string v0, "content://com.seven.provider.im/bulk_presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Presence;->BULK_CONTENT_URI:Landroid/net/Uri;

    .line 831
    const-string v0, "content://com.seven.provider.im/seed_presence/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Presence;->SEED_PRESENCE_BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
