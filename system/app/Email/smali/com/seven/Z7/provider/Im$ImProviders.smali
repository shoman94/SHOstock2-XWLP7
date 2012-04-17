.class public final enum Lcom/seven/Z7/provider/Im$ImProviders;
.super Ljava/lang/Enum;
.source "Im.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImProviders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/provider/Im$ImProviders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum AIM:Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum GTALK:Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum ICQ:Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum JABBER:Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum MSN:Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum QQ:Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum XMPP:Lcom/seven/Z7/provider/Im$ImProviders;

.field public static final enum YAHOO:Lcom/seven/Z7/provider/Im$ImProviders;


# instance fields
.field public category:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 29
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "YAHOO"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Yahoo"

    const-string v5, "yahoo"

    const-string v6, "com.android.im.category.YAHOO"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->YAHOO:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 30
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "GTALK"

    const/4 v2, 0x1

    const/4 v3, 0x5

    const-string v4, "gmail"

    const-string v5, "gtalk"

    const-string v6, "com.android.im.category.GTALK"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->GTALK:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 32
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "MSN"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "MSN"

    const-string v5, "msn"

    const-string v6, "com.android.im.category.MSN"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->MSN:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 34
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "AIM"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "AIM"

    const-string v5, "aim"

    const-string v6, "com.android.im.category.AIM"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->AIM:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 36
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "JABBER"

    const/4 v2, 0x4

    const/4 v3, 0x7

    const-string v4, "JABBER"

    const-string v5, "jabber"

    const-string v6, "com.android.im.category.JABBER"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->JABBER:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 38
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "ICQ"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "ICQ"

    const-string v5, "icq"

    const-string v6, "com.android.im.category.ICQ"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->ICQ:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 40
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "QQ"

    const/4 v2, 0x6

    const/4 v3, 0x4

    const-string v4, "QQ"

    const-string v5, "qq"

    const-string v6, "com.android.im.category.QQ"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->QQ:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 41
    new-instance v0, Lcom/seven/Z7/provider/Im$ImProviders;

    const-string v1, "XMPP"

    const/4 v2, 0x7

    const/4 v3, -0x1

    const-string v4, "XMPP"

    const-string v5, "xmpp"

    const-string v6, "com.android.im.category.XMPP"

    invoke-direct/range {v0 .. v6}, Lcom/seven/Z7/provider/Im$ImProviders;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->XMPP:Lcom/seven/Z7/provider/Im$ImProviders;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/seven/Z7/provider/Im$ImProviders;

    const/4 v1, 0x0

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->YAHOO:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->GTALK:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->MSN:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->AIM:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->JABBER:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->ICQ:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->QQ:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/provider/Im$ImProviders;->XMPP:Lcom/seven/Z7/provider/Im$ImProviders;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->$VALUES:[Lcom/seven/Z7/provider/Im$ImProviders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "authority"
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/seven/Z7/provider/Im$ImProviders;->id:I

    .line 52
    iput-object p4, p0, Lcom/seven/Z7/provider/Im$ImProviders;->name:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/seven/Z7/provider/Im$ImProviders;->host:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/seven/Z7/provider/Im$ImProviders;->category:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/provider/Im$ImProviders;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/seven/Z7/provider/Im$ImProviders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/provider/Im$ImProviders;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/provider/Im$ImProviders;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/seven/Z7/provider/Im$ImProviders;->$VALUES:[Lcom/seven/Z7/provider/Im$ImProviders;

    invoke-virtual {v0}, [Lcom/seven/Z7/provider/Im$ImProviders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/provider/Im$ImProviders;

    return-object v0
.end method
