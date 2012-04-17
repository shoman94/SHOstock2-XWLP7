.class final enum Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;
.super Ljava/lang/Enum;
.source "PreferenceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/PreferenceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

.field public static final enum ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

.field public static final enum ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

.field public static final enum GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

.field public static final enum GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    const-string v1, "GLOBAL_SYNCED"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    const-string v1, "GLOBAL_LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    const-string v1, "ACCOUNT_SYNCED"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    const-string v1, "ACCOUNT_LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->GLOBAL_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_SYNCED:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->ACCOUNT_LOCAL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->$VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->$VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/PreferenceConstants$PreferenceType;

    return-object v0
.end method
