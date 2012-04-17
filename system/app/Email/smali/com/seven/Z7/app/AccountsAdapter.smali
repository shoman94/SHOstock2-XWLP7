.class public abstract Lcom/seven/Z7/app/AccountsAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountsAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# static fields
.field public static final ACCOUNT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "provision_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/app/AccountsAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method
