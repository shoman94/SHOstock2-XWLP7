.class public final Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;
.super Landroid/content/CursorLoader;
.source "AggreGroupMetaDataLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final URI_AGGREGATED:Landroid/net/Uri;

.field public static final URI_GROUPS_LIST:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    .line 48
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;->URI_GROUPS_LIST:Landroid/net/Uri;

    .line 49
    sget-object v0, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "aggregated"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;->URI_AGGREGATED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 57
    sget-object v2, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;->URI_AGGREGATED:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
