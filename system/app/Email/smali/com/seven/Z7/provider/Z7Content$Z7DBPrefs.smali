.class public final Lcom/seven/Z7/provider/Z7Content$Z7DBPrefs;
.super Ljava/lang/Object;
.source "Z7Content.java"

# interfaces
.implements Lcom/seven/Z7/provider/Z7Content$Z7DBPrefsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Z7Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Z7DBPrefs"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1039
    const-string v0, "content://com.seven.provider.email/dbprefs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Z7Content$Z7DBPrefs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1034
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    return-void
.end method
