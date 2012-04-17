.class public final enum Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;
.super Ljava/lang/Enum;
.source "Z7ImCallbackFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/im/Z7ImCallbackFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

.field public static final enum IM_FILTER_ACCOUNT_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

.field public static final enum IM_FILTER_CHAT_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

.field public static final enum IM_FILTER_USER_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    const-string v1, "IM_FILTER_USER_ID"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->IM_FILTER_USER_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    new-instance v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    const-string v1, "IM_FILTER_ACCOUNT_ID"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->IM_FILTER_ACCOUNT_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    new-instance v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    const-string v1, "IM_FILTER_CHAT_ID"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->IM_FILTER_CHAT_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    sget-object v1, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->IM_FILTER_USER_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->IM_FILTER_ACCOUNT_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->IM_FILTER_CHAT_ID:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->$VALUES:[Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->$VALUES:[Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    invoke-virtual {v0}, [Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    return-object v0
.end method
