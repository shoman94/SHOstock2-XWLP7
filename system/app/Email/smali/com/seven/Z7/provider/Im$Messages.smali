.class public final Lcom/seven/Z7/provider/Im$Messages;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/seven/Z7/provider/Im$MessagesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_MESSAGES_BY:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    const-string v0, "content://com.seven.provider.im/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Messages;->CONTENT_URI:Landroid/net/Uri;

    .line 545
    const-string v0, "content://com.seven.provider.im/messagesBy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Messages;->CONTENT_URI_MESSAGES_BY:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method
