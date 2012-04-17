.class public final enum Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
.super Ljava/lang/Enum;
.source "AccountsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/AccountsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountListFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_GOOGLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

.field public static final enum ALL_ACCOUNTS:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ALL_ACCOUNTS"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ALL_ACCOUNTS:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 50
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_CONTACT_WRITABLE"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 51
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 52
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_GROUP_WRITABLE"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 53
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const-string v1, "ACCOUNTS_GOOGLE"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GOOGLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ALL_ACCOUNTS:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GOOGLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->$VALUES:[Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .locals 1
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->$VALUES:[Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-virtual {v0}, [Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    return-object v0
.end method
