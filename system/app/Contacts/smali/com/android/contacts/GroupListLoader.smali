.class public final Lcom/android/contacts/GroupListLoader;
.super Landroid/content/CursorLoader;
.source "GroupListLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final GROUP_LIST_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "summ_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    .line 47
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/contacts/GroupListLoader;->GROUP_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 50
    sget-object v2, Lcom/android/contacts/GroupListLoader;->GROUP_LIST_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    const-string v4, "account_type NOT NULL AND account_name NOT NULL AND auto_add=0 AND favorites=0 AND deleted=0"

    const/4 v5, 0x0

    const-string v6, "account_type, account_name, data_set, title COLLATE LOCALIZED ASC"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
