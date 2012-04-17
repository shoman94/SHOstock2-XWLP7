.class public final enum Lcom/seven/Z7/app/EnableButtonListener$OperationMode;
.super Ljava/lang/Enum;
.source "EnableButtonListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/EnableButtonListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/app/EnableButtonListener$OperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

.field public static final enum AND:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

.field public static final enum OR:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->AND:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    .line 26
    new-instance v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->OR:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    sget-object v1, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->AND:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->OR:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->$VALUES:[Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/app/EnableButtonListener$OperationMode;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/app/EnableButtonListener$OperationMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->$VALUES:[Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    invoke-virtual {v0}, [Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    return-object v0
.end method
