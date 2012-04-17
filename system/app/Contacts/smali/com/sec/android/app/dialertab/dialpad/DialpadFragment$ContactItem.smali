.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactItem"
.end annotation


# instance fields
.field private id:I

.field private mNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 2025
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 2026
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 2027
    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 2028
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoID()I
    .locals 1

    .prologue
    .line 2031
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2043
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    return v0
.end method
