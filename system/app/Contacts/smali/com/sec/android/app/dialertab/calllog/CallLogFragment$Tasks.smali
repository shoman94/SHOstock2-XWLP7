.class public final enum Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
.super Ljava/lang/Enum;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

.field public static final enum REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    const-string v1, "REMOVE_ITME_FROM_CALL_LOG"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

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
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
    .locals 1
    .parameter "name"

    .prologue
    .line 174
    const-class v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    invoke-virtual {v0}, [Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    return-object v0
.end method
