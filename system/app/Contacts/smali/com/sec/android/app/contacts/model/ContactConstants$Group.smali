.class public final Lcom/sec/android/app/contacts/model/ContactConstants$Group;
.super Ljava/lang/Object;
.source "ContactConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/ContactConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final URI_ACCOUNT:Landroid/net/Uri;

.field public static final URI_ACCOUNT_NO_COUNT:Landroid/net/Uri;

.field public static final URI_AGGREGATED:Landroid/net/Uri;

.field public static final URI_AGGREGATED_NO_COUNT:Landroid/net/Uri;

.field public static final URI_ASSIGNED:Landroid/net/Uri;

.field public static final URI_ASSIGNED_NO_COUNT:Landroid/net/Uri;

.field public static final URI_GROUPS_LIST:Landroid/net/Uri;

.field public static final URI_GROUP_MEMBERSHIP:Landroid/net/Uri;

.field public static final URI_NOT_ASSIGNED:Landroid/net/Uri;

.field public static final URI_NOT_ASSIGNED_NO_COUNT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    .line 114
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "aggregated"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_AGGREGATED:Landroid/net/Uri;

    .line 118
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_ACCOUNT:Landroid/net/Uri;

    .line 121
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "assigned"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_ASSIGNED:Landroid/net/Uri;

    .line 124
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "not_assigned"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_NOT_ASSIGNED:Landroid/net/Uri;

    .line 128
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "aggregated_nocount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_AGGREGATED_NO_COUNT:Landroid/net/Uri;

    .line 132
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "account_nocount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_ACCOUNT_NO_COUNT:Landroid/net/Uri;

    .line 136
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "assigned_nocount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_ASSIGNED_NO_COUNT:Landroid/net/Uri;

    .line 140
    sget-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUPS_LIST:Landroid/net/Uri;

    const-string v1, "not_assigned_nocount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_NOT_ASSIGNED_NO_COUNT:Landroid/net/Uri;

    .line 143
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_membership"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$Group;->URI_GROUP_MEMBERSHIP:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
